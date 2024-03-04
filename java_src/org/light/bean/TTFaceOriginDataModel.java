package org.light.bean;

import java.io.Serializable;
/* loaded from: classes7.dex */
public class TTFaceOriginDataModel implements Serializable {
    public int cls;
    public float[] facePoint;
    public float[] facePointVisible;
    public float pitch;
    public float roll;
    public float yaw;

    public TTFaceOriginDataModel() {
        this.facePoint = new float[188];
        this.facePointVisible = new float[94];
    }

    public TTFaceOriginDataModel(float[] fArr, float[] fArr2, float f10, float f11, float f12) {
        this.facePoint = fArr;
        this.facePointVisible = fArr2;
        this.pitch = f10;
        this.yaw = f11;
        this.roll = f12;
    }
}
