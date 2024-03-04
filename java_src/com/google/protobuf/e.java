package com.google.protobuf;
/* loaded from: classes3.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f14932a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f14933b = a("libcore.io.Memory");

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f14934c;

    static {
        f14934c = (f14932a || a("org.robolectric.Robolectric") == null) ? false : true;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> b() {
        return f14933b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return f14932a || !(f14933b == null || f14934c);
    }
}
