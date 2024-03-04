package com.xiaomi.push;
/* loaded from: classes5.dex */
public enum dd {
    INT(1),
    LONG(2),
    STRING(3),
    BOOLEAN(4);
    

    /* renamed from: a  reason: collision with other field name */
    private final int f35a;

    dd(int i9) {
        this.f35a = i9;
    }

    public static dd a(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return null;
                    }
                    return BOOLEAN;
                }
                return STRING;
            }
            return LONG;
        }
        return INT;
    }
}
