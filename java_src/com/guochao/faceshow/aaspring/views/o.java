package com.guochao.faceshow.aaspring.views;

import android.os.Looper;
import java.util.Objects;
/* loaded from: classes3.dex */
public class o {
    public static <T> T a(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    public static void b() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        throw new IllegalStateException("Must be called from the main thread. Was: " + Thread.currentThread());
    }
}
