package com.aaron.launcherics.effection;

public abstract class BaseEffection {

	public abstract float getEffectRotationX(float scrollProgress);
	
	public abstract float getEffectRotationY(float scrollProgress);
	
	public abstract float getEffectRotationZ(float scrollProgress);
	
	public abstract float getEffectTranslationX(float scrollProgress, int width, int height);
	
	public abstract float getEffectTranslationY(float scrollProgress, int width, int height);
	
	public abstract float getEffectPivotX(float scrollProgress);
	
	public abstract float getEffectPivotY(float scrollProgress);
}
