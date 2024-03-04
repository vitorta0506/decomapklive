package com.google.android.gms.internal.recaptcha;

import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class ca implements PrivilegedExceptionAction<Unsafe> {
    public static final Unsafe a() throws Exception {
        Field[] declaredFields;
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }

    @Override // java.security.PrivilegedExceptionAction
    public final /* bridge */ /* synthetic */ Unsafe run() throws Exception {
        return a();
    }
}
