package com.tencent.liteav.videobase.common;
/* loaded from: classes4.dex */
public enum CodecType {
    UNKNOWN(-1),
    H264(0),
    H265(1),
    VP8(2),
    KAV1(3);
    

    /* renamed from: f  reason: collision with root package name */
    private static final CodecType[] f31783f = values();
    public final int mValue;

    CodecType(int i9) {
        this.mValue = i9;
    }

    public static CodecType a(int i9) {
        CodecType[] codecTypeArr;
        for (CodecType codecType : f31783f) {
            if (i9 == codecType.mValue) {
                return codecType;
            }
        }
        return H264;
    }
}
