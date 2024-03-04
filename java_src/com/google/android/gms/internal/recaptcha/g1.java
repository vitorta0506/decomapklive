package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class g1 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f8689d = e1.a(4);
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static g1 f8690e;

    /* renamed from: a  reason: collision with root package name */
    private final h1 f8691a;

    /* renamed from: b  reason: collision with root package name */
    private final z0 f8692b;

    /* renamed from: c  reason: collision with root package name */
    private zzkn<zzvj> f8693c = zzkn.zzl();

    g1(h1 h1Var, z0 z0Var) {
        this.f8692b = z0Var;
        this.f8691a = h1Var;
    }

    public static g1 b() {
        if (f8690e == null) {
            f8690e = new g1(new h1(), new z0());
        }
        return f8690e;
    }

    public final c1 a(@NonNull Context context) {
        u8 u8Var = new u8();
        j9<zzvj> it = this.f8693c.iterator();
        while (it.hasNext()) {
            zzvj next = it.next();
            try {
                u8Var.a(Integer.valueOf(next.zza()), h1.a(next, context, this.f8692b));
            } catch (a1 | d1 e10) {
                j.a(f8689d, e10);
            }
        }
        return c1.c(u8Var.b(), this.f8692b.e());
    }

    public final void c(b1 b1Var) {
        this.f8693c = zzkn.zzk(b1Var.a());
        this.f8692b.f(b1Var.b());
    }
}
