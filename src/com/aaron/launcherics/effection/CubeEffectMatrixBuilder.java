package com.aaron.launcherics.effection;

import android.graphics.Camera;
import android.graphics.Matrix;

public class CubeEffectMatrixBuilder extends  EffectMatrixBufferBuilder{
	
	static final boolean ENABLE_BUFFERED = false;
	static CubeEffectMatrixBuilder mSelf = null;
	final Camera mCamera = new Camera();
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count) {
		if(mSelf == null) {
			mSelf = new CubeEffectMatrixBuilder();
		}
		if(ENABLE_BUFFERED) {
			int frames = 128;
			mSelf.enableBuffered(width, height, count,frames);
			
		}
		return mSelf;
	}

	@Override
	public Matrix innerCreateLeftMatrix(int index, int theRolationScroll,
			int width, int height) {
		// TODO Auto-generated method stub
		int faceDegree = -(theRolationScroll * 90 / width);
		int screenIndex = index;
		final float centerX = (screenIndex  + 1) *width;
		final float centerY = height / 2;
		final Camera camera = mCamera;
		final Matrix matrix = new Matrix();
		
		camera.save();
		camera.rotateY(faceDegree);
		camera.getMatrix(matrix);
		camera.restore();
		matrix.preTranslate(-centerX, -centerY);
		matrix.postTranslate(centerX, centerY);
		return matrix;
	}

	@Override
	public Matrix innerCreateRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		int faceDegree = (theRolationScroll * 90 / width);
		int screenIndex = index;
		final float centerX = (screenIndex) *width;
		final float centerY = height / 2;
		final Camera camera = mCamera;
		final Matrix matrix = new Matrix();
		
		camera.save();
		camera.rotateY(faceDegree);
		camera.getMatrix(matrix);
		camera.restore();
		matrix.preTranslate(-centerX, -centerY);
		matrix.postTranslate(centerX, centerY);
		return matrix;
	}

	
}
