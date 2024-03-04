package com.gyailib.library;
/* loaded from: classes4.dex */
public class ValidFacePhotoQuality {
    public int expressionValid;
    public int lightingOverExposure;
    public int lightingUnderExposure;
    public int poseValid;

    public void setValidFacePhotoQuality(int i9, int i10, int i11, int i12) {
        this.lightingUnderExposure = i9;
        this.lightingOverExposure = i10;
        this.poseValid = i11;
        this.expressionValid = i12;
    }
}
