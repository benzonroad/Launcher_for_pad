package com.aaron.launcherics.effection;

import android.graphics.Matrix;

public class MoveEffectMatrixBuilder implements IEffectMatrixBuilder {
	
	final Matrix matrix = new Matrix();
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count){
		if(mSelf == null) {
			mSelf = new MoveEffectMatrixBuilder();
		}
		return mSelf;
	}
	static MoveEffectMatrixBuilder mSelf = null;

	@Override
	public Matrix createLeftMatrix(int index, int theRolationScroll, int width,
			int height) {
		// TODO Auto-generated method stub
		return matrix;
	}

	@Override
	public Matrix createRightMatrix(int index, int theRolationScroll,
			int width, int height) {
		// TODO Auto-generated method stub
		return matrix;
	}

}
