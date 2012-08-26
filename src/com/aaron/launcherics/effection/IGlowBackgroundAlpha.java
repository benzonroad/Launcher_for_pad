package com.aaron.launcherics.effection;

public interface IGlowBackgroundAlpha {

	/**
	 * 创建左边的边框不透明度的值
	 * @author lizukang
	 * @date 2012-07-30
	 * @param index 索引，判断值，具体请查看子类
	 * @param xDelay 偏移原位置的X值
	 * @param width 宽
	 * @param height 高
	 * @return 返回不透明度的比值，最小为0，最多1
	 */
	public float createLeftGlowBackgroundAlpha(int index, int xDelay, int width, int height);
	
	/**
	 * 创建右边的边框不透明度的值
	 * @author lizukang
	 * @date 2012-07-30
	 * 
	 * @param index 索引，判断值，具体请查看子类
	 * @param xDelay 偏移原位置的X值
	 * @param width 宽
	 * @param height 高
	 * @return 返回不透明度的比值，最小为0，最多1
	 */
	public float createRightGlowBackgroundAlpha(int index, int xDelay, int width, int height);
}
