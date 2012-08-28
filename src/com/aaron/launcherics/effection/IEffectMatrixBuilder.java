package com.aaron.launcherics.effection;

import android.graphics.Matrix;

public interface IEffectMatrixBuilder {
	Matrix createLeftMatrix(int index,int theRolationScroll,int width,int height);
	Matrix createRightMatrix(int index,int theRolationScroll,int width,int height);

}

interface IEffectMatrixInnerBuilder{
	Matrix innerCreateLeftMatrix(int index,int theRolationScroll,int width,int height);
	Matrix innerCreateRightMatrix(int index,int theRolationScroll,int width,int height);
}


