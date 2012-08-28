package com.aaron.launcherics.effection;

import android.graphics.Matrix;

public abstract class EffectMatrixBufferBuilder implements IEffectMatrixBuilder ,IEffectMatrixInnerBuilder{
	
	private boolean DEBUG = false;
	int mCurrentFrames = 64;
	MatrixBuffer mMatrixBuffer = null;
	
	void enableBuffered(int width,int height,int count) {
		if(mMatrixBuffer == null) {
			mMatrixBuffer = new MatrixBuffer();
		}
		mMatrixBuffer.setParams(this,width,height,count,mCurrentFrames);
	}
	
	void enableBuffered(int width,int height,int count,int framesPerScreen) {
		mCurrentFrames = framesPerScreen;
		if(mMatrixBuffer == null) {
			mMatrixBuffer = new MatrixBuffer();
		}
		mMatrixBuffer.setParams(this,width,height,count,framesPerScreen);
	}

	@Override
	public Matrix createLeftMatrix(int index, int theRolationScroll, int width,
			int height) {
		// TODO Auto-generated method stub
		if(mMatrixBuffer != null) {
			mMatrixBuffer.setParams(this,width,height,mMatrixBuffer.mCount,mCurrentFrames);
			if(theRolationScroll < width && theRolationScroll >= 0) {
				Matrix theMatrix = mMatrixBuffer.getLeftMatrix(index,theRolationScroll,width);
				if(theMatrix != null) {
					return theMatrix;
				}
			}
		}
		return innerCreateLeftMatrix(index, theRolationScroll, width, height);
	}

	@Override
	public Matrix createRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		if(mMatrixBuffer != null) {
			mMatrixBuffer.setParams(this,width,height,mMatrixBuffer.mCount,mCurrentFrames);
			if(theRolationScroll < width && theRolationScroll >= 0) {
				Matrix theMatrix = mMatrixBuffer.getRightMatrix(index,theRolationScroll,width);
				if(theMatrix != null) {
					return theMatrix;
				}
			}
		}
		return innerCreateLeftMatrix(index, theRolationScroll, width, height);
	}

	@Override
	public abstract Matrix innerCreateLeftMatrix(int index, int theRolationScroll,
			int width, int height);

	@Override
	public abstract Matrix innerCreateRightMatrix(int index, int theRolationScroll,
			int width, int height);

}
class MatrixBuffer {
	private float mWidth = 0;
	private float mHeight = 0;
	int mCount = 0;
	Matrix mLeftMatrixes[];
	Matrix mRightMatrixes[];
	int mFramesPerScreen  = 0;
	Matrix getLeftMatrix(int index,int theRelationScroll,int width) {
		return mLeftMatrixes[getIndexOfMatrixes(index,theRelationScroll)];
	}
	public void setParams(IEffectMatrixInnerBuilder builder,
			int width, int height, int count, int framesPerScreen) {
		// TODO Auto-generated method stub
		if(width != mWidth || height != mHeight || count != mCount || framesPerScreen != mFramesPerScreen) {
			mWidth = width;
			mHeight = height;
			mCount = count;
			mFramesPerScreen = framesPerScreen;
			
			mLeftMatrixes = new Matrix[mFramesPerScreen*mCount];
			mRightMatrixes = new Matrix[mFramesPerScreen*mCount];
			for(int screen = 0;screen < count; ++screen) {
				int y=0;
				while(y<mFramesPerScreen) {
					float fGap = (float)mWidth / (float)mFramesPerScreen;
					int index = screen*mFramesPerScreen + y;
					int offset = (int)(y*fGap);
					mLeftMatrixes[index] = builder.innerCreateLeftMatrix(screen, offset, width, height);
					mRightMatrixes[index] = builder.innerCreateRightMatrix(screen, offset, width, height);
					++y;
				}
			}
			
		}
		
	}
	Matrix getRightMatrix(int index,int theRelationScroll,int width) {
		return mRightMatrixes[getIndexOfMatrixes(index,theRelationScroll)];
	}
	
	int getIndexOfMatrixes(int index,int theRelationScroll) {
		float fIndex = index;
		float fTheRelationScroll = theRelationScroll;
		float fWidth = mWidth;
		float scrollPos = (fIndex * mWidth + fTheRelationScroll) /fWidth;
		float fPosition = (float)scrollPos * (float)mFramesPerScreen;
		return (int)fPosition;
	}
}