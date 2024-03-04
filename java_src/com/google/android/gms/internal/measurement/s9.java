package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s9 implements la {

    /* renamed from: b  reason: collision with root package name */
    private static final x9 f8319b = new q9();

    /* renamed from: a  reason: collision with root package name */
    private final x9 f8320a;

    public s9() {
        x9 x9Var;
        x9[] x9VarArr = new x9[2];
        x9VarArr[0] = s8.c();
        try {
            x9Var = (x9) Class.forName("com.google.protobuf.s").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            x9Var = f8319b;
        }
        x9VarArr[1] = x9Var;
        r9 r9Var = new r9(x9VarArr);
        e9.f(r9Var, "messageInfoFactory");
        this.f8320a = r9Var;
    }

    private static boolean b(w9 w9Var) {
        return w9Var.E() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.la
    public final ka a(Class cls) {
        ma.g(cls);
        w9 a10 = this.f8320a.a(cls);
        if (a10.D()) {
            if (x8.class.isAssignableFrom(cls)) {
                return da.i(ma.b(), n8.b(), a10.zza());
            }
            return da.i(ma.b0(), n8.a(), a10.zza());
        } else if (x8.class.isAssignableFrom(cls)) {
            if (b(a10)) {
                return ca.F(cls, a10, fa.b(), n9.d(), ma.b(), n8.b(), v9.b());
            }
            return ca.F(cls, a10, fa.b(), n9.d(), ma.b(), null, v9.b());
        } else if (b(a10)) {
            return ca.F(cls, a10, fa.a(), n9.c(), ma.b0(), n8.a(), v9.a());
        } else {
            return ca.F(cls, a10, fa.a(), n9.c(), ma.a(), null, v9.a());
        }
    }
}
