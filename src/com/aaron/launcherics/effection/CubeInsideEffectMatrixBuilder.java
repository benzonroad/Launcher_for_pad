package com.aaron.launcherics.effection;

import android.graphics.Camera;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.Log;

public class CubeInsideEffectMatrixBuilder implements IEffectMatrixBuilder,
		IAlphaBuilder, IGlowBackgroundAlpha, IFloodBuild {
	final Camera mCamera = new Camera();
	final Matrix mMatrix = new Matrix();
	static CubeInsideEffectMatrixBuilder mSelf = null;
	
	private static final int MIN_ALPHA = 80;
	private static final int MAX_ALPHA = 255;
	
	
	public static IEffectMatrixBuilder getInstance(int width,int height,int count) {
		if(mSelf == null) {
			mSelf = new CubeInsideEffectMatrixBuilder();
		}
		return mSelf;
	}
	@Override
	public Matrix createLeftMatrix(int index, int theRolationScroll, int width,
			int height) {
		theRolationScroll  = theRolationScroll % width;
		if (theRolationScroll<0) {
			theRolationScroll += width;
		}
		float faceDegree = (theRolationScroll * 30.0f / width);
		int screenIndex = index;
		final float centerX = .0f*width;
		final float centerY = height / 2;
		final Camera camera = mCamera;
		final Matrix matrix = mMatrix;
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
		theRolationScroll = theRolationScroll % width;
		if (theRolationScroll < 0) {
			theRolationScroll += width;
		}
		theRolationScroll = width - theRolationScroll;
		float faceDegree = -(theRolationScroll * 30.0f / width);
		int screenIndex = index;
		final float centerX = 1.0f * width;
		final float centerY = height / 2;
		final Camera camera = mCamera;
		final Matrix matrix = mMatrix;
		camera.save();
		camera.rotateY(faceDegree);
		camera.getMatrix(matrix);
		camera.restore();
		matrix.preTranslate(-centerX, -centerY);
		matrix.postTranslate(centerX, centerY);
		return matrix;
	}
	
	
	@Override
	public int createRightAlpha(int index, int theRolationScroll, int width,
			int height) {
		int value = MAX_ALPHA;
		if (index == 1) {
			//?D??μ±?°??ê?μ?ò3??￡??á??×?theRolationScroll±?′ó??alpha±?D?
			value = (int) (MAX_ALPHA - (MAX_ALPHA-MIN_ALPHA) * Math.abs((float)theRolationScroll) / (float)width);
		} else {
			//?D??μ±?°2?ê???ê?μ?ò3??￡??á??×?theRolationScroll±?′ó??alpha±?′ó
			value = (int) (MIN_ALPHA + (MAX_ALPHA-MIN_ALPHA) * Math.abs((float)theRolationScroll) / (float)width);
		}
		if (Math.abs(theRolationScroll) >= width || theRolationScroll == 0) {
			return MAX_ALPHA;
		}
		return value;
		
		/*float fAlpha = 1 - (float) theRolationScroll / (float) width;
		if (fAlpha < 1.0f) {
			return MIN_ALPHA + (int) (fAlpha * 100);
		} else
			return 255;*/
	}
	@Override
	public int createLeftAlpha(int index, int theRolationScroll, int width,
			int height) {
		return createRightAlpha(index, theRolationScroll, width, height);
	}
	
	/**
	 * @param index 当本参数值为1时，距离原位置越远（绝对值），则不透明值越小，反之越大。<br/>
	 * 本参数用来判断是否显示的当前页
	 * @see com.aaron.launcherics.effection.IGlowBackgroundAlpha#createLeftGlowBackgroundAlpha(int, int, int, int)
	 */
	@Override
	public float createLeftGlowBackgroundAlpha(int index, int xDelay,
			int width, int height) {
		float value = 0f;
		if (index == 1) {
			value = 1.0f -  Math.abs((float)xDelay) / (float)width;
		} else {
			value = Math.abs((float)xDelay) / (float)width;
		}
		if (Math.abs(xDelay) >= width || xDelay == 0) {
			return 0;
		}
		return value;
	}
	
	@Override
	public float createRightGlowBackgroundAlpha(int index, int xDelay,
			int width, int height) {
		return createLeftGlowBackgroundAlpha(index, xDelay, width, height);
	}
	
	
	@Override
	public Paint createRightFloodPaint(Paint paint, float xCor, int width,
			int height) {
		
		int index = 0;
		if ( xCor >0){
			index = 1;
		} else {
			index = 0;
		}
		int maxAlpha = (int) (createLeftGlowBackgroundAlpha(index, (int) xCor, width, height) * 255);
		
		// set the bottom shader;
		float bottomX0 = 0;
		float bottomY0 = height - 50.f;
		float bottomX1 = 0;
		float bottomY1 = height - 5.0f;
		int colorBottom1 = Color.argb(0x00, 0xff, 0xff, 0xff);
		int colorBottom2 = Color.argb(maxAlpha, 0xff, 0xff, 0xff);
		Shader bottomShader = new LinearGradient(bottomX0, bottomY0, bottomX1, bottomY1, colorBottom1, colorBottom2, TileMode.CLAMP);
		paint.setShader(bottomShader);
		
		// set the top shader;
		float topX0 = 0;
		float topY0 = -20.0f;
		float topRadius = 100.0f;
		int colorTop1 = Color.argb(maxAlpha, 0xff, 0xff, 0xff);
		int colorTop2 = Color.argb(0x00, 0xff, 0xff, 0xff);
		Shader topShader = new RadialGradient(topX0, topY0, topRadius , colorTop1, colorTop2, TileMode.CLAMP);
		Shader composeShader = new ComposeShader(bottomShader, topShader, PorterDuff.Mode.OVERLAY);
		paint.setShader(composeShader);
		
		return paint;
	}
	
	
	@Override
	public Paint createLeftFloodPaint(Paint paint, float xCor, int width,
			int height) {
		int index = 0;
		if ( xCor >0){
			index = 0;
		} else {
			index = 1;
		}
		int maxAlpha = (int) (createLeftGlowBackgroundAlpha(index, (int) xCor, width, height) * 255);
		
		// set the bottom shader;
		float bottomX0 = 0;
		float bottomY0 = height - 50.f;
		float bottomX1 = 0;
		float bottomY1 = height - 5.0f;
		int colorBottom1 = Color.argb(0x00, 0xff, 0xff, 0xff);
		int colorBottom2 = Color.argb(maxAlpha, 0xff, 0xff, 0xff);
		Shader bottomShader = new LinearGradient(bottomX0, bottomY0, bottomX1, bottomY1, colorBottom1, colorBottom2, TileMode.CLAMP);
		paint.setShader(bottomShader);
		
		// set the top shader;
		float topX0 = width;
		float topY0 = -20.0f;
		float topRadius = 100.0f;
		int colorTop1 = Color.argb(maxAlpha, 0xff, 0xff, 0xff);
		int colorTop2 = Color.argb(0x00, 0xff, 0xff, 0xff);
		Shader topShader = new RadialGradient(topX0, topY0, topRadius , colorTop1, colorTop2, TileMode.CLAMP);
		Shader composeShader = new ComposeShader(bottomShader, topShader, PorterDuff.Mode.OVERLAY);
		paint.setShader(composeShader);
		return paint;
	}
	
}
