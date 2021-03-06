package com.aaron.launcherics.effection;

public class CubeOut extends BaseEffection {
	
	private final static float MAX_ROTATE = -90;

	@Override
	public float getEffectRotationX(float scrollProgress) {
		return 0;
	}

	@Override
	public float getEffectRotationY(float scrollProgress) {
		return MAX_ROTATE * scrollProgress;
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
		if (scrollProgress >0) {
			return 1.0f;
		}else if (scrollProgress < 0){
			return 0.0f;
		}
		return 0.5f;
	}

	@Override
	public float getEffectPivotY(float scrollProgress) {
		return 0.5f;
	}

}
