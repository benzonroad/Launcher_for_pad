package com.aaron.launcherics.effection;

import android.graphics.Camera;
import android.graphics.Matrix;

public class MoveDeptionEffectionBuilder extends EffectMatrixBufferBuilder implements IAlphaBuilder{

	static final boolean ENABLE_BUFFERED = false;
	static MoveDeptionEffectionBuilder mSelf = null;
	final Camera mCamera = new Camera();
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count) {
		if(mSelf == null) {
			mSelf = new MoveDeptionEffectionBuilder();
		}
		if(ENABLE_BUFFERED) {
			int frames = 128;
			mSelf.enableBuffered(width, height, count,frames);
		}
		return mSelf;
	}
	
	final int MAX_DEPTH = 300;
	final int MIN_SMOWING_DEPTH = 250;
	
	
	
	
	@Override
	public Matrix innerCreateLeftMatrix(int index, int theRolationScroll,
			int width, int height) {
		final Matrix matrix = new Matrix();
		return matrix;
	}

	@Override
	public Matrix innerCreateRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		// TODO Auto-generated method stub
		final int deption = (theRolationScroll*MAX_DEPTH/width);
		if(deption > MIN_SMOWING_DEPTH) {
			final Matrix matrix = new Matrix();
			matrix.setScale(0.0f, 0.0f);
			return matrix;
		}
		
		final Matrix matrix = new Matrix();
		final int screenIndex = index;
		final float centerX = (screenIndex)*width + width /2;
		final float centerY = height /2;
		final Camera camera = mCamera;
		camera.save();
		camera.translate(0, 0, deption);
		camera.getMatrix(matrix);
		camera.restore();
		
		matrix.postTranslate(-theRolationScroll, 0);
		matrix.postTranslate(centerX, centerY);
		matrix.preTranslate(-centerX, -centerY);
		return matrix;
	}

	@Override
	public int createLeftAlpha(int index, int theRolationScroll, int width,
			int height) {
		// TODO Auto-generated method stub
		return 255;
	}

	@Override
	public int createRightAlpha(int index, int theRolationScroll, int width,
			int height) {
		// TODO Auto-generated method stub
		float fAlpha = 1-(float)theRolationScroll/(float)width;
		fAlpha = (float)Math.pow(fAlpha, 0.5f);
		if(fAlpha < 1.0f) {
			return (int)(fAlpha*255);
		} else return 255;
	}

}
