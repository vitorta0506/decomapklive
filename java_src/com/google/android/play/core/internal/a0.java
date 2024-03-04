package com.google.android.play.core.internal;

import android.os.Build;
/* loaded from: classes2.dex */
public final class a0 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static y a() {
        switch (Build.VERSION.SDK_INT) {
            case 21:
                return new f0();
            case 22:
                return new g0();
            case 23:
                return new k0();
            case 24:
                return new l0();
            case 25:
                return new m0();
            case 26:
                return new p0();
            case 27:
                if (Build.VERSION.PREVIEW_SDK_INT == 0) {
                    return new q0();
                }
                break;
        }
        return new s0();
    }
}
