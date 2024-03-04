package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class yg implements vh {

    /* renamed from: b  reason: collision with root package name */
    private static final eh f9207b = new wg();

    /* renamed from: a  reason: collision with root package name */
    private final eh f9208a;

    public yg() {
        eh ehVar;
        eh[] ehVarArr = new eh[2];
        ehVarArr[0] = yf.c();
        try {
            ehVar = (eh) Class.forName("com.google.protobuf.s").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            ehVar = f9207b;
        }
        ehVarArr[1] = ehVar;
        xg xgVar = new xg(ehVarArr);
        mg.f(xgVar, "messageInfoFactory");
        this.f9208a = xgVar;
    }

    private static boolean b(dh dhVar) {
        return dhVar.E() == 1;
    }

    @Override // com.google.android.gms.internal.recaptcha.vh
    public final <T> uh<T> a(Class<T> cls) {
        wh.g(cls);
        dh a10 = this.f9208a.a(cls);
        if (a10.D()) {
            if (dg.class.isAssignableFrom(cls)) {
                return kh.i(wh.b(), sf.b(), a10.zza());
            }
            return kh.i(wh.b0(), sf.a(), a10.zza());
        } else if (dg.class.isAssignableFrom(cls)) {
            if (b(a10)) {
                return jh.w(cls, a10, mh.b(), ug.e(), wh.b(), sf.b(), ch.b());
            }
            return jh.w(cls, a10, mh.b(), ug.e(), wh.b(), null, ch.b());
        } else if (b(a10)) {
            return jh.w(cls, a10, mh.a(), ug.d(), wh.b0(), sf.a(), ch.a());
        } else {
            return jh.w(cls, a10, mh.a(), ug.d(), wh.a(), null, ch.a());
        }
    }
}
