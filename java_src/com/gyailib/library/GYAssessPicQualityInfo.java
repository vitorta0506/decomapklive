package com.gyailib.library;
/* loaded from: classes4.dex */
public class GYAssessPicQualityInfo {
    public int deviceParams;
    public int framesCnt;
    public float heightParams;
    public float kBps;
    public float secondsParams;
    public int typePrams = 0;
    public float widthParams;

    public void initStruct(float f10, float f11, float f12, float f13, int i9, int i10, int i11) {
        this.kBps = f10;
        this.widthParams = f11;
        this.heightParams = f12;
        this.secondsParams = f13;
        this.deviceParams = i9;
        this.typePrams = i10;
        this.framesCnt = i11;
    }

    public void setGYAssessPicQualityInfo(float f10, float f11, float f12, float f13, int i9, int i10, int i11) {
        this.kBps = f10;
        this.widthParams = f11;
        this.heightParams = f12;
        this.secondsParams = f13;
        this.deviceParams = i9;
        this.typePrams = i10;
        this.framesCnt = i11;
    }
}
