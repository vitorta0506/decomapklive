package com.gyailib.library;
/* loaded from: classes4.dex */
public class FaceDetector {
    public FaceDetectorFeature[] faces;

    public void initStruct(int i9) {
        this.faces = new FaceDetectorFeature[i9];
    }

    public void setFaceDetectFeature(int i9, FaceDetectorFeature faceDetectorFeature) {
        if (faceDetectorFeature == null) {
            return;
        }
        this.faces[i9] = faceDetectorFeature;
    }
}
