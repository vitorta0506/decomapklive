package org.light;
/* loaded from: classes7.dex */
public enum LightFaceResultType {
    LightFaceDetectQualified(0),
    LightFaceDetectFailed(1),
    LightFaceDetectNoFace(2),
    LightFaceDetectSensitivePersonError(3),
    LightFaceDetectPositionError(4),
    LightFaceDetectDirectionError(5),
    LightFaceDetectMinFaceSizeError(6),
    LightFaceDetectMinFaceCountError(7),
    LightFaceDetectMaxFaceCountError(8);
    
    private int value;

    LightFaceResultType(int i9) {
        this.value = i9;
    }

    private int getValue() {
        return this.value;
    }
}
