package com.caoyaui.launcher.effection;

import android.graphics.Camera;
import android.graphics.Matrix;

public class StreamEffectMatrixBuilder extends EffectMatrixBufferBuilder implements IAlphaBuilder{

	static final boolean ENABLE_BUFFERED = false;
	
	final Camera mCamera = new Camera();
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count){
		if(mSelf == null) {
			mSelf = new StreamEffectMatrixBuilder();
		}
		if(ENABLE_BUFFERED) {
			mSelf.enableBuffered(width,height,count);
		}
		return mSelf;
	}
	static StreamEffectMatrixBuilder mSelf = null;
	final static int THE_DEPTH_OF_THE_SCREEN = 500;
	
	final static int THE_NEAR_OF_THE_SCREEN = 0;
	final static int MIN_ALPHA = 155;
	final static int MAX_ALPHA = 255;
	final static int ALPHA_RANGE = 100;
	
	

	@Override
	public Matrix innerCreateLeftMatrix(int index, int theRolationScroll,
			int width, int height) {
		// TODO Auto-generated method stub
		final int faceDegree = (theRolationScroll * THE_DEPTH_OF_THE_SCREEN /width) + THE_NEAR_OF_THE_SCREEN;
		final int screenIndex = index;
		final float centerX = (screenIndex)*width;
		final float centerY = height /2;
		final Camera camera = mCamera;
		final Matrix matrix = new Matrix();
		camera.save();
		camera.translate(0, 0, faceDegree);
		camera.getMatrix(matrix);
		camera.restore();
		matrix.preTranslate(-centerX, -centerY);
		matrix.postTranslate(centerX, centerY);
		
		return matrix;
	}

	@Override
	public Matrix innerCreateRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		final int faceDegree = (theRolationScroll * THE_DEPTH_OF_THE_SCREEN /width) + THE_NEAR_OF_THE_SCREEN;
		final int screenIndex = index;
		final float centerX = (screenIndex)*width;
		final float centerY = height /2;
		final Camera camera = mCamera;
		final Matrix matrix = new Matrix();
		camera.save();
		camera.translate(0, 0, faceDegree);
		camera.getMatrix(matrix);
		camera.restore();
		matrix.preTranslate(-centerX, -centerY);
		matrix.postTranslate(centerX, centerY);
		
		return matrix;
	}

	@Override
	public int createLeftAlpha(int index, int theRolationScroll, int width,
			int height) {
		// TODO Auto-generated method stub
		float fAlpha = 1-(float)theRolationScroll/(float)width;
		if(fAlpha < 1.0f) {
			return MIN_ALPHA + (int)(fAlpha*ALPHA_RANGE);
		} else return 255;
	}

	@Override
	public int createRightAlpha(int index, int theRolationScroll, int width,
			int height) {
		// TODO Auto-generated method stub
		float fAlpha = 1-(float)theRolationScroll/(float)width;
		if(fAlpha < 1.0f) {
			return MIN_ALPHA + (int)(fAlpha*ALPHA_RANGE);
		} else return 255;
	}

}
