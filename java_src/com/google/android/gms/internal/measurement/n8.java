package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class n8 {

    /* renamed from: a  reason: collision with root package name */
    private static final l8 f8227a = new m8();

    /* renamed from: b  reason: collision with root package name */
    private static final l8 f8228b;

    static {
        l8 l8Var;
        try {
            l8Var = (l8) Class.forName("com.google.protobuf.h0").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            l8Var = null;
        }
        f8228b = l8Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l8 a() {
        l8 l8Var = f8228b;
        if (l8Var != null) {
            return l8Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l8 b() {
        return f8227a;
    }
}
