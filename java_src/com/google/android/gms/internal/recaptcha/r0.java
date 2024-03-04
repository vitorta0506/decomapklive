package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public final class r0 {

    /* renamed from: b  reason: collision with root package name */
    private static volatile r0 f9016b;

    /* renamed from: a  reason: collision with root package name */
    private final m4 f9017a;

    private r0(Context context) {
        n4 n4Var = new n4();
        ye.a();
        n4Var.c(Executors.unconfigurableExecutorService(Executors.newCachedThreadPool()));
        n4Var.d(new p2(zzkj.zzp(t2.j(context).b())));
        n4Var.b(z4.c());
        this.f9017a = n4Var.a();
    }

    public static m4 a(Context context) {
        return b(context).f9017a;
    }

    private static synchronized r0 b(Context context) {
        r0 r0Var;
        synchronized (r0.class) {
            if (f9016b == null) {
                f9016b = new r0(context.getApplicationContext());
            }
            r0Var = f9016b;
        }
        return r0Var;
    }
}
