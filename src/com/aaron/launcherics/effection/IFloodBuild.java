package com.aaron.launcherics.effection;

import android.graphics.Paint;

/**
 * �ڲ�����Ч���Ŀ�����
 * @author������
 * @date 2012-08-03
 */
public interface IFloodBuild {

	public Paint createRightFloodPaint(Paint paint, float xCor, int width, int height);
	public Paint createLeftFloodPaint(Paint paint, float xCor, int width, int height);
}
