package com.aaron.launcherics.effection;

public interface IGlowBackgroundAlpha {

	/**
	 * ������ߵı߿�͸���ȵ�ֵ
	 * @author lizukang
	 * @date 2012-07-30
	 * @param index �������ж�ֵ��������鿴����
	 * @param xDelay ƫ��ԭλ�õ�Xֵ
	 * @param width ��
	 * @param height ��
	 * @return ���ز�͸���ȵı�ֵ����СΪ0�����1
	 */
	public float createLeftGlowBackgroundAlpha(int index, int xDelay, int width, int height);
	
	/**
	 * �����ұߵı߿�͸���ȵ�ֵ
	 * @author lizukang
	 * @date 2012-07-30
	 * 
	 * @param index �������ж�ֵ��������鿴����
	 * @param xDelay ƫ��ԭλ�õ�Xֵ
	 * @param width ��
	 * @param height ��
	 * @return ���ز�͸���ȵı�ֵ����СΪ0�����1
	 */
	public float createRightGlowBackgroundAlpha(int index, int xDelay, int width, int height);
}
