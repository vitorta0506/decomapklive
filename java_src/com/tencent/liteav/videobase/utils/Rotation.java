package com.tencent.liteav.videobase.utils;
/* loaded from: classes4.dex */
public enum Rotation {
    NORMAL(0),
    ROTATION_90(90),
    ROTATION_180(180),
    ROTATION_270(270);
    

    /* renamed from: e  reason: collision with root package name */
    private static final Rotation[] f31879e = values();
    public final int mValue;

    Rotation(int i9) {
        this.mValue = i9;
    }

    public static Rotation a(int i9) {
        Rotation[] rotationArr;
        for (Rotation rotation : f31879e) {
            if (rotation.mValue == i9) {
                return rotation;
            }
        }
        return NORMAL;
    }

    public static boolean b(int i9) {
        return i9 == 0 || i9 == 90 || i9 == 180 || i9 == 270;
    }
}
