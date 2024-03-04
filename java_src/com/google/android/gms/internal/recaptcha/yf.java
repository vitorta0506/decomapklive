package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class yf implements eh {

    /* renamed from: a  reason: collision with root package name */
    private static final yf f9206a = new yf();

    private yf() {
    }

    public static yf c() {
        return f9206a;
    }

    @Override // com.google.android.gms.internal.recaptcha.eh
    public final dh a(Class<?> cls) {
        if (!dg.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (dh) dg.p(cls.asSubclass(dg.class)).m(3, null, null);
        } catch (Exception e10) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e10);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.eh
    public final boolean b(Class<?> cls) {
        return dg.class.isAssignableFrom(cls);
    }
}
