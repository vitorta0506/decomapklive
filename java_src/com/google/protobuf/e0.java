package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    static final Class<?> f14935a = c();

    public static f0 a() {
        f0 b10 = b("getEmptyRegistry");
        return b10 != null ? b10 : f0.f14951e;
    }

    private static final f0 b(String str) {
        Class<?> cls = f14935a;
        if (cls == null) {
            return null;
        }
        try {
            return (f0) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static Class<?> c() {
        try {
            d0 d0Var = d0.f14914j;
            return d0.class;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
