package com.caoyaui.launcher.effection;

import android.graphics.Camera;
import android.graphics.Matrix;

public class RotateEffectMatrixBuilder implements IEffectMatrixBuilder{
	
	final static int THE_DEGREE_OF_ROTATE = 70;
	final Camera mCamera = new Camera();
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count){
		if(mSelf == null) {
			mSelf = new RotateEffectMatrixBuilder();
		}
		return mSelf;
	}
	static RotateEffectMatrixBuilder mSelf = null;

	@Override
	public Matrix createLeftMatrix(int index, int theRolationScroll, int width,
			int height) {
		int faceDegree = (theRolationScroll * THE_DEGREE_OF_ROTATE / width);
		int screenIndex = index;
		final float centerX = (screenIndex) *width - width /2;
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
		int faceDegree = (theRolationScroll * THE_DEGREE_OF_ROTATE / width);
		int screenIndex = index;
		final float centerX = (screenIndex) *width + width/2; 
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
