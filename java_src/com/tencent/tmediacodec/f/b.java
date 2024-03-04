package com.tencent.tmediacodec.f;

import java.lang.reflect.Field;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?>[] f34621a = new Class[0];

    /* renamed from: b  reason: collision with root package name */
    public static final Object[] f34622b = new Object[0];

    public static Field a(Class<?> cls, String str) {
        return b(cls, str);
    }

    private static Field b(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Class<? super Object> superclass = cls.getSuperclass();
            Field field = null;
            while (field == null && superclass != null) {
                try {
                    field = superclass.getDeclaredField(str);
                } catch (NoSuchFieldException unused2) {
                    superclass = superclass.getSuperclass();
                }
            }
            return field;
        }
    }
}
