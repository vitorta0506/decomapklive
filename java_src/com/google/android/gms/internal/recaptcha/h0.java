package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.HttpStatusException;
import com.google.android.gms.recaptcha.RecaptchaAction;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.google.android.gms.recaptcha.RecaptchaNetworkException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: e  reason: collision with root package name */
    private static final ExecutorService f8715e = p0.f8960b;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f8716f = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Context f8717a;

    /* renamed from: b  reason: collision with root package name */
    private final j1 f8718b;

    /* renamed from: c  reason: collision with root package name */
    private final o0 f8719c;

    /* renamed from: d  reason: collision with root package name */
    private final w0 f8720d;

    public h0(Context context) {
        j1 a10 = k1.a();
        o0 a11 = o0.a(context);
        w0 a12 = w0.a(context);
        this.f8717a = context;
        this.f8718b = a10;
        this.f8719c = a11;
        this.f8720d = a12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(d dVar, Status status) {
        try {
            dVar.k(status, null);
        } catch (RemoteException e10) {
            j.a("RecaptchaOPExecute", e10);
        }
    }

    public final /* synthetic */ nd a(final RecaptchaHandle recaptchaHandle, String str, RecaptchaAction recaptchaAction, long j10, Map map, c1 c1Var, final String str2) throws Exception {
        String recaptchaAction2 = recaptchaAction.toString();
        String M = recaptchaAction.M();
        a0 a0Var = new a0(p0.a(), f8715e, vj.u());
        rj v10 = tj.v();
        v10.r(str);
        v10.q(recaptchaAction2);
        v10.w(j10);
        v10.v(M);
        v10.u(str2);
        v10.o(map);
        v10.t(true);
        v10.p(c1Var.a());
        v10.s(c1Var.b());
        return dd.j(a0Var.a(v10.l()), new p7() { // from class: com.google.android.gms.internal.recaptcha.c0
            @Override // com.google.android.gms.internal.recaptcha.p7
            public final Object a(Object obj) {
                return h0.this.c(recaptchaHandle, str2, (vj) obj);
            }
        }, ud.b());
    }

    public final /* synthetic */ nd b(final RecaptchaAction recaptchaAction, g1 g1Var, final RecaptchaHandle recaptchaHandle, y1 y1Var) throws Exception {
        final String y10 = y1Var.y();
        ji zza = this.f8718b.zza();
        fj.b(zza);
        final long a10 = va.a(va.b(zza.u(), 1000L), zza.t() / 1000000);
        List<String> z10 = y1Var.z();
        Bundle K = recaptchaAction.K();
        final HashMap hashMap = new HashMap();
        for (String str : K.keySet()) {
            if (z10.contains(str)) {
                Object obj = K.get(str);
                if (obj instanceof String) {
                    hashMap.put(str, (String) obj);
                } else {
                    throw new zzbi("Only string values are allowed as an additional arg in RecaptchaAction");
                }
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 60);
                sb2.append("AdditionalArgs key[ \"");
                sb2.append(str);
                sb2.append("\" ] is not accepted by reCATPCHA server");
                throw new zzbi(sb2.toString());
            }
        }
        final c1 a11 = g1Var.a(this.f8717a);
        return dd.k(this.f8720d.b(recaptchaHandle.L(), recaptchaHandle.K()), new dc() { // from class: com.google.android.gms.internal.recaptcha.e0
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj2) {
                return h0.this.a(recaptchaHandle, y10, recaptchaAction, a10, hashMap, a11, (String) obj2);
            }
        }, f8715e);
    }

    public final /* synthetic */ String c(RecaptchaHandle recaptchaHandle, String str, vj vjVar) {
        this.f8720d.d(recaptchaHandle.L(), recaptchaHandle.K(), str, "RecaptchaOPExecute");
        return vjVar.v();
    }

    public final void e(d dVar, final RecaptchaHandle recaptchaHandle, final RecaptchaAction recaptchaAction, final g1 g1Var) {
        nd c10 = dd.c(this.f8719c.c(recaptchaHandle.L(), recaptchaHandle.K(), g1Var), Exception.class, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.f0
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                Exception exc = (Exception) obj;
                int i9 = h0.f8716f;
                if (!(exc instanceof RecaptchaNetworkException) && !(exc instanceof HttpStatusException)) {
                    return dd.e(new zzby(exc));
                }
                return dd.e(new zzbx(exc));
            }
        }), ud.b());
        dc c11 = y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.d0
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                return h0.this.b(recaptchaAction, g1Var, recaptchaHandle, (y1) obj);
            }
        });
        ExecutorService executorService = f8715e;
        dd.m(dd.k(c10, c11, executorService), new g0(this, dVar), executorService);
    }
}
