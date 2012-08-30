package com.aaron.launcherics.effection;

/**
 * the f
 * @author Aaron Lee
 *
 */
public class Standard extends BaseEffection {

	@Override
	public float getEffectRotationX(float scrollProgress) {
		return 0;
	}

	@Override
	public float getEffectRotationY(float scrollProgress) {
		return 0;
	}

	@Override
	public float getEffectRotationZ(float scrollProgress) {
		return 0;
	}

	@Override
	public float getEffectTranslationX(float scrollProgress, int width,
			int height) {
		return 0;
	}

	@Override
	public float getEffectTranslationY(float scrollProgress, int width,
			int height) {
		return 0;
	}

	@Override
	public float getEffectPivotX(float scrollProgress) {
		return 0.5f;
	}

	@Override
	public float getEffectPivotY(float scrollProgress) {
		return 0.5f;
	}

}
