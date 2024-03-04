package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class fa {

    /* renamed from: a  reason: collision with root package name */
    private static final ea f8080a;

    /* renamed from: b  reason: collision with root package name */
    private static final ea f8081b;

    static {
        ea eaVar;
        try {
            eaVar = (ea) Class.forName("com.google.protobuf.y1").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            eaVar = null;
        }
        f8080a = eaVar;
        f8081b = new ea();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ea a() {
        return f8080a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ea b() {
        return f8081b;
    }
}
