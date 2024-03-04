package com.xiaomi.push;
/* loaded from: classes5.dex */
public enum dc {
    MISC_CONFIG(1),
    PLUGIN_CONFIG(2);
    

    /* renamed from: a  reason: collision with other field name */
    private final int f33a;

    dc(int i9) {
        this.f33a = i9;
    }

    public static dc a(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                return null;
            }
            return PLUGIN_CONFIG;
        }
        return MISC_CONFIG;
    }

    public int a() {
        return this.f33a;
    }
}
