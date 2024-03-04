package com.gyailib.library;
/* loaded from: classes4.dex */
public class GYDetectCommonResultStruct {
    public float height;
    public GYDetectCommonItemParams[] items;
    public float width;

    public void initStruct(float f10, float f11, int i9) {
        this.width = f10;
        this.height = f11;
        this.items = new GYDetectCommonItemParams[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            this.items[i10] = new GYDetectCommonItemParams();
        }
    }

    public void setItem(int i9, int i10, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, String str, String str2, float f10, int i11) {
        GYDetectCommonItemParams[] gYDetectCommonItemParamsArr = this.items;
        if (gYDetectCommonItemParamsArr == null || i9 >= gYDetectCommonItemParamsArr.length) {
            return;
        }
        gYDetectCommonItemParamsArr[i9].pointsCount = i10;
        gYDetectCommonItemParamsArr[i9].pointX = fArr;
        gYDetectCommonItemParamsArr[i9].pointY = fArr2;
        gYDetectCommonItemParamsArr[i9].heightMap = fArr3;
        gYDetectCommonItemParamsArr[i9].eulerAngle = fArr4;
        gYDetectCommonItemParamsArr[i9].classifyName = str;
        gYDetectCommonItemParamsArr[i9].classifyType = str2;
        gYDetectCommonItemParamsArr[i9].classifyConfidence = f10;
        gYDetectCommonItemParamsArr[i9].index = i11;
    }

    public void setItemBase(int i9, int i10, float f10, float f11, float f12, float f13, float f14, float f15, int i11, int i12) {
        GYDetectCommonItemParams[] gYDetectCommonItemParamsArr = this.items;
        if (gYDetectCommonItemParamsArr == null || i9 >= gYDetectCommonItemParamsArr.length) {
            return;
        }
        gYDetectCommonItemParamsArr[i9].itemId = i10;
        gYDetectCommonItemParamsArr[i9].frameX = f10;
        gYDetectCommonItemParamsArr[i9].frameY = f11;
        gYDetectCommonItemParamsArr[i9].frameW = f12;
        gYDetectCommonItemParamsArr[i9].frameH = f13;
        gYDetectCommonItemParamsArr[i9].frameConfidence = f14;
        gYDetectCommonItemParamsArr[i9].confidence = f15;
        gYDetectCommonItemParamsArr[i9].age = i11;
        gYDetectCommonItemParamsArr[i9].gender = i12;
    }
}
