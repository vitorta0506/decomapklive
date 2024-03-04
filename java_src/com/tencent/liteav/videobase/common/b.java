package com.tencent.liteav.videobase.common;
/* loaded from: classes4.dex */
public enum b {
    UNKNOWN(0),
    BASELINE(1),
    MAIN(2),
    HIGH(3),
    BASELINE_RPS(4),
    MAIN_RPS(5),
    HIGH_RPS(6);
    

    /* renamed from: h  reason: collision with root package name */
    private static final b[] f31808h = values();
    public final int mValue;

    b(int i9) {
        this.mValue = i9;
    }

    public static b a(int i9) {
        b[] bVarArr;
        for (b bVar : f31808h) {
            if (bVar.mValue == i9) {
                return bVar;
            }
        }
        return UNKNOWN;
    }
}
