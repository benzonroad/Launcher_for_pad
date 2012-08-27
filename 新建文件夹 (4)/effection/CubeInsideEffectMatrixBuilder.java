package com.caoyaui.launcher.effection;

import android.graphics.Camera;
import android.graphics.Matrix;

public class CubeInsideEffectMatrixBuilder implements IEffectMatrixBuilder{
	final Camera mCamera = new Camera();
	static CubeInsideEffectMatrixBuilder mSelf = null;
	
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count) {
		if(mSelf == null) {
			mSelf = new CubeInsideEffectMatrixBuilder();
		}
		return mSelf;
	}
	@Override
	public Matrix createLeftMatrix(int index, int theRolationScroll, int width,
			int height) {
		int faceDegree = (theRolationScroll * 90 / width);
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
	public Matrix createRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		int faceDegree = -(theRolationScroll * 90 / width);
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
