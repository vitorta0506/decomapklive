package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class sf {

    /* renamed from: a  reason: collision with root package name */
    private static final qf<?> f9046a = new rf();

    /* renamed from: b  reason: collision with root package name */
    private static final qf<?> f9047b;

    static {
        qf<?> qfVar;
        try {
            qfVar = (qf) Class.forName("com.google.protobuf.h0").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            qfVar = null;
        }
        f9047b = qfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static qf<?> a() {
        qf<?> qfVar = f9047b;
        if (qfVar != null) {
            return qfVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static qf<?> b() {
        return f9046a;
    }
}
