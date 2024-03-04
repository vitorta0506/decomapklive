package com.google.protobuf;
/* loaded from: classes3.dex */
final class j0 {

    /* renamed from: a  reason: collision with root package name */
    private static final g0<?> f15018a = new i0();

    /* renamed from: b  reason: collision with root package name */
    private static final g0<?> f15019b = c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g0<?> a() {
        g0<?> g0Var = f15019b;
        if (g0Var != null) {
            return g0Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g0<?> b() {
        return f15018a;
    }

    private static g0<?> c() {
        try {
            int i9 = h0.f14986b;
            return (g0) h0.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
