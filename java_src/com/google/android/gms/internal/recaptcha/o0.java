package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.security.CertificateUtil;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class o0 {

    /* renamed from: a  reason: collision with root package name */
    private final h4<v1> f8934a;

    /* renamed from: b  reason: collision with root package name */
    private final j1 f8935b;

    /* renamed from: c  reason: collision with root package name */
    private final w0 f8936c;

    @VisibleForTesting
    protected o0(h4<v1> h4Var, j1 j1Var, w0 w0Var) {
        this.f8934a = h4Var;
        this.f8935b = j1Var;
        this.f8936c = w0Var;
    }

    public static o0 a(Context context) {
        return new o0(s0.a(context, r0.a(context)), k1.a(), w0.a(context));
    }

    public final /* synthetic */ y1 b(String str, String str2, nj njVar) {
        this.f8936c.d(str, str2, njVar.x(), "RecaptchaLTManager");
        String w6 = njVar.w();
        List<String> y10 = njVar.y();
        List<zzvj> z10 = njVar.z();
        xj v10 = njVar.v();
        ji zza = this.f8935b.zza();
        x1 t10 = y1.t();
        t10.r(w6);
        t10.o(y10);
        t10.q(zza);
        t10.p(z10);
        t10.s(v10);
        return t10.l();
    }

    public final nd<y1> c(final String str, final String str2, final g1 g1Var) {
        final AtomicReference atomicReference = new AtomicReference(null);
        return dd.j(this.f8934a.i(y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.n0
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                return o0.this.d(str, str2, g1Var, atomicReference, (v1) obj);
            }
        }), ud.b()), new p7() { // from class: com.google.android.gms.internal.recaptcha.m0
            @Override // com.google.android.gms.internal.recaptcha.p7
            public final Object a(Object obj) {
                y1 y1Var = (y1) atomicReference.get();
                Object[] objArr = new Object[0];
                if (y1Var != null) {
                    return y1Var;
                }
                throw new zzjx(g8.b("expected a non-null reference", objArr));
            }
        }, ud.b());
    }

    public final /* synthetic */ nd d(final String str, final String str2, final g1 g1Var, final AtomicReference atomicReference, final v1 v1Var) throws Exception {
        zzjj zzd;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append(CertificateUtil.DELIMITER);
        sb2.append(str2);
        final String sb3 = sb2.toString();
        if (v1Var.z(sb3)) {
            y1 y1Var = v1Var.y().get(sb3);
            zzd = (y1Var == null || fj.a(y1Var.w(), this.f8935b.zza()).u() > 86400) ? zzjj.zzd() : zzjj.zzf(y1Var);
        } else {
            zzd = zzjj.zzd();
        }
        if (!zzd.zzc()) {
            a0 a0Var = new a0(p0.b(), p0.f8960b, nj.u());
            hj t10 = ij.t();
            oj t11 = pj.t();
            t11.q(str);
            t11.p(str2);
            String valueOf = String.valueOf(th.a());
            t11.o(valueOf.length() != 0 ? ";".concat(valueOf) : new String(";"));
            t10.o(t11.l());
            t10.p(true);
            return dd.j(dd.j(a0Var.a(t10.l()), new p7() { // from class: com.google.android.gms.internal.recaptcha.k0
                @Override // com.google.android.gms.internal.recaptcha.p7
                public final Object a(Object obj) {
                    return o0.this.b(str, str2, (nj) obj);
                }
            }, ud.b()), y6.a(new p7() { // from class: com.google.android.gms.internal.recaptcha.l0
                @Override // com.google.android.gms.internal.recaptcha.p7
                public final Object a(Object obj) {
                    g1 g1Var2 = g1.this;
                    AtomicReference atomicReference2 = atomicReference;
                    v1 v1Var2 = v1Var;
                    String str3 = sb3;
                    y1 y1Var2 = (y1) obj;
                    g1Var2.c(b1.c(zzkj.zzn(y1Var2.A()), y1Var2.x()));
                    atomicReference2.set(y1Var2);
                    s1 o10 = v1Var2.o();
                    o10.p(str3, y1Var2);
                    return o10.l();
                }
            }), ud.b());
        }
        g1Var.c(b1.c(zzkj.zzn(((y1) zzd.zza()).A()), ((y1) zzd.zza()).x()));
        atomicReference.set((y1) zzd.zza());
        return dd.f(v1Var);
    }
}
