package com.aaron.launcherics.effection;

import android.graphics.Camera;
import android.graphics.Matrix;

public class SqueezeEffectMatrixBuilder implements IEffectMatrixBuilder{
	
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count){
		if(mSelf == null) {
			mSelf = new SqueezeEffectMatrixBuilder();
		}
		return mSelf;
	}
	static SqueezeEffectMatrixBuilder mSelf = null;

	@Override
	public Matrix createLeftMatrix(int index, int theRolationScroll, int width,
			int height) {
		int screenIndex = index;
		final float centerX = (screenIndex) *width;
		final float centerY = height / 2;
		final Matrix matrix = new Matrix();
		
		matrix.setScale(1.0f - (float)theRolationScroll / (float)width, 1.0f);
		matrix.postTranslate(theRolationScroll, 0);
		matrix.postTranslate(centerX, centerY);
		matrix.preTranslate(-centerX, -centerY);
		
		return matrix;
	}

	@Override
	public Matrix createRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		int screenIndex = index;
		final float centerX = (screenIndex) *width;
		final float centerY = height / 2;
		final Matrix matrix = new Matrix();
		
		matrix.setScale(1.0f - (float)theRolationScroll / (float)width, 1.0f,width,0.0f);
		
		matrix.postTranslate(-theRolationScroll, 0);
		matrix.postTranslate(centerX, centerY);
		matrix.preTranslate(-centerX, -centerY);
		
		return matrix;
	}

}
