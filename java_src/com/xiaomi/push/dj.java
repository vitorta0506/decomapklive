package com.xiaomi.push;
/* loaded from: classes5.dex */
public enum dj {
    RegIdExpired(0),
    PackageUnregistered(1),
    Init(2);
    

    /* renamed from: a  reason: collision with other field name */
    private final int f88a;

    dj(int i9) {
        this.f88a = i9;
    }

    public static dj a(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return Init;
            }
            return PackageUnregistered;
        }
        return RegIdExpired;
    }

    public int a() {
        return this.f88a;
    }
}
