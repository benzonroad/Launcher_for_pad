package com.caoyaui.launcher.effection;

import android.graphics.Camera;
import android.graphics.Matrix;

public class TurnEffectMatrixBuilder extends EffectMatrixBufferBuilder{
	static final boolean ENABLE_BUFFERED = false;
	
	final Camera mCamera = new Camera();
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count){
		if(mSelf == null) {
			mSelf = new TurnEffectMatrixBuilder();
		}
		if(ENABLE_BUFFERED) {
			mSelf.enableBuffered(width, height, count);
		}
		return mSelf;
	}
	static TurnEffectMatrixBuilder mSelf = null;

	
	@Override
	public Matrix innerCreateLeftMatrix(int index, int theRolationScroll,
			int width, int height) {
		// TODO Auto-generated method stub
		final int faceDegree = (theRolationScroll * 180 / width);
		if(faceDegree > 90) {
			Matrix matrix = new Matrix();
			matrix.setScale(0, 0);
			return matrix;
		}
		
		final int screenIndex  = index;
		final float centerX = (screenIndex)* width + width/2;
		final float centerY = height /2;
		final Camera camera = mCamera;
		final Matrix matrix = new Matrix();
		camera.save();
		camera.rotateY(-faceDegree);
		camera.getMatrix(matrix);
		camera.restore();
		matrix.postTranslate(theRolationScroll, 0);
		matrix.postTranslate(centerX, centerY);
		matrix.preTranslate(-centerX, -centerY);
		return matrix;
	}

	@Override
	public Matrix innerCreateRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		// TODO Auto-generated method stub
		final int faceDegree = (theRolationScroll * 180 / width);
		if(faceDegree > 90) {
			Matrix matrix = new Matrix();
			matrix.setScale(0, 0);
			return matrix;
		}
		
		final int screenIndex  = index;
		final float centerX = (screenIndex)* width + width/2;
		final float centerY = height /2;
		final Camera camera = mCamera;
		final Matrix matrix = new Matrix();
		camera.save();
		camera.rotateY(-faceDegree);
		camera.getMatrix(matrix);
		camera.restore();
		matrix.postTranslate(theRolationScroll, 0);
		matrix.postTranslate(centerX, centerY);
		matrix.preTranslate(-centerX, -centerY);
		return matrix;
	}

}
