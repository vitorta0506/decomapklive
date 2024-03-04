package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static Method f6943a;

    @Nullable
    public static IBinder a(Bundle bundle, @Nullable String str) {
        if (l0.f6985a >= 18) {
            return bundle.getBinder(str);
        }
        return b(bundle, str);
    }

    @Nullable
    private static IBinder b(Bundle bundle, @Nullable String str) {
        Method method = f6943a;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                f6943a = method2;
                method2.setAccessible(true);
                method = f6943a;
            } catch (NoSuchMethodException e10) {
                r.g("BundleUtil", "Failed to retrieve getIBinder method", e10);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            r.g("BundleUtil", "Failed to invoke getIBinder via reflection", e11);
            return null;
        }
    }
}
