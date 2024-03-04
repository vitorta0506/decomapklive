package com.tencent.liteav.videobase.common;
/* loaded from: classes4.dex */
public enum a {
    UNKNOWN(65535),
    IDR(0),
    P(1),
    B(2),
    SEI(3),
    I(4),
    P_MULTI_REF(5),
    SPS(18),
    PPS(19),
    VPS(20);
    

    /* renamed from: k  reason: collision with root package name */
    private static final a[] f31799k = values();
    public final int mValue;

    a(int i9) {
        this.mValue = i9;
    }

    public static a a(int i9) {
        a[] aVarArr;
        for (a aVar : f31799k) {
            if (aVar.mValue == i9) {
                return aVar;
            }
        }
        return UNKNOWN;
    }
}
