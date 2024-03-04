package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class s8 implements x9 {

    /* renamed from: a  reason: collision with root package name */
    private static final s8 f8318a = new s8();

    private s8() {
    }

    public static s8 c() {
        return f8318a;
    }

    @Override // com.google.android.gms.internal.measurement.x9
    public final w9 a(Class cls) {
        if (x8.class.isAssignableFrom(cls)) {
            try {
                return (w9) x8.u(cls.asSubclass(x8.class)).v(3, null, null);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.x9
    public final boolean b(Class cls) {
        return x8.class.isAssignableFrom(cls);
    }
}
