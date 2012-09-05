package com.aaron.launcherics.effection;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.Log;

public class CubeIn extends BaseEffection {
	
	private final static float MAX_ROTATE = 90;
	private final static float MAX_DISTANCE = 268;
	
	private Matrix mMatrix;
	private Camera mCamera;
	private float[] mTempFloat2 = new float[2];
	
	

	public CubeIn() {
		super();
		this.mMatrix = new Matrix();
		this.mCamera = new Camera();
	}

	@Override
	public float getEffectRotationX(float scrollProgress) {
		return 0;
	}

	@Override
	public float getEffectRotationY(float scrollProgress) {
		return scrollProgress * MAX_ROTATE;
	}

	@Override
	public float getEffectRotationZ(float scrollProgress) {
		return 0;
	}

	@Override
	public float getEffectTranslationX(float scrollProgress, int width,
			int height) {
		/*mMatrix.reset();
		mCamera.save();
		mCamera.rotateY(Math.abs(getEffectRotationY(scrollProgress)));
		mCamera.getMatrix(mMatrix);
		mCamera.restore();

		if (scrollProgress >0 ){
			mMatrix.preTranslate(-width * 1.0f, -height * 0.5f);
			mMatrix.postTranslate(width * 1.0f, height * 0.5f);
		} else if (scrollProgress < 0) {
			mMatrix.preTranslate(.0f, -height * 0.5f);
			mMatrix.postTranslate(.0f, height * 0.5f);
		} else if (scrollProgress == 0) {
			mMatrix.preTranslate(0.50f, -height * 0.5f);
			mMatrix.postTranslate(0.50f, height * 0.5f);
		}
		mTempFloat2[0] = width;
		mTempFloat2[1] = height;
		mMatrix.mapPoints(mTempFloat2);
		return (width - mTempFloat2[0]) * (scrollProgress > 0.0f ? 1.0f : -1.0f);*/
		Log.d("aaron", "width "+width);
		return width * scrollProgress /3;
	}

	@Override
	public float getEffectTranslationY(float scrollProgress, int width,
			int height) {
		return 0;
	}

	@Override
	public float getEffectPivotX(float scrollProgress) {
		if (scrollProgress >0) {
			return 0.7f;
		}else if (scrollProgress < 0){
			return 0.3f;
		}
		return 0.5f;
	}

	@Override
	public float getEffectPivotY(float scrollProgress) {
		return 0.5f;
	}

}
