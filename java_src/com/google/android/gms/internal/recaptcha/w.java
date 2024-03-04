package com.google.android.gms.internal.recaptcha;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;
import com.google.android.gms.recaptcha.RecaptchaAction;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.google.android.gms.recaptcha.RecaptchaResultData;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class w extends com.google.android.gms.common.api.c<a.d.c> implements com.google.android.gms.recaptcha.b {

    /* renamed from: n  reason: collision with root package name */
    private static final a.g<x> f9124n;

    /* renamed from: o  reason: collision with root package name */
    private static final j1 f9125o;

    /* renamed from: p  reason: collision with root package name */
    private static final a.AbstractC0083a<x, a.d.c> f9126p;

    /* renamed from: q  reason: collision with root package name */
    private static final com.google.android.gms.common.api.a<a.d.c> f9127q;

    /* renamed from: k  reason: collision with root package name */
    private final Context f9128k;

    /* renamed from: l  reason: collision with root package name */
    private final m1 f9129l;

    /* renamed from: m  reason: collision with root package name */
    private final q1 f9130m;

    static {
        a.g<x> gVar = new a.g<>();
        f9124n = gVar;
        f9125o = k1.a();
        r rVar = new r();
        f9126p = rVar;
        f9127q = new com.google.android.gms.common.api.a<>("Recaptcha.API", rVar, gVar);
    }

    public w(Activity activity) {
        super(activity, f9127q, a.d.T, c.a.f7481c);
        this.f9128k = activity;
        j1 j1Var = f9125o;
        this.f9129l = new m1(j1Var);
        this.f9130m = new q1(activity, j1Var);
    }

    @Override // com.google.android.gms.recaptcha.b
    public final t4.g<RecaptchaResultData> b(final RecaptchaHandle recaptchaHandle, final RecaptchaAction recaptchaAction) {
        if (recaptchaHandle != null && recaptchaAction != null) {
            return h(com.google.android.gms.common.api.internal.d.a().b(new v3.i() { // from class: com.google.android.gms.internal.recaptcha.p
                @Override // v3.i
                public final void accept(Object obj, Object obj2) {
                    w.this.s(recaptchaHandle, recaptchaAction, (x) obj, (t4.h) obj2);
                }
            }).d(com.google.android.gms.recaptcha.d.f10114c).e(19803).a());
        }
        throw new NullPointerException("Cannot call execute with a null RecaptchaHandle or a null RecaptchaAction. Make sure to call init first.");
    }

    @Override // com.google.android.gms.recaptcha.b
    public final t4.g<Boolean> d(final RecaptchaHandle recaptchaHandle) {
        Objects.requireNonNull(recaptchaHandle, "Cannot call close with a null RecaptchaHandle.");
        return h(com.google.android.gms.common.api.internal.d.a().b(new v3.i() { // from class: com.google.android.gms.internal.recaptcha.o
            @Override // v3.i
            public final void accept(Object obj, Object obj2) {
                w wVar = w.this;
                RecaptchaHandle recaptchaHandle2 = recaptchaHandle;
                ((g) ((x) obj).A()).E0(new u(wVar, (t4.h) obj2), recaptchaHandle2);
            }
        }).d(com.google.android.gms.recaptcha.d.f10115d).e(19804).a());
    }

    @Override // com.google.android.gms.recaptcha.b
    public final t4.g<RecaptchaHandle> init(final String str) {
        Objects.requireNonNull(str, "Cannot call init with a null site key.");
        return h(com.google.android.gms.common.api.internal.d.a().b(new v3.i() { // from class: com.google.android.gms.internal.recaptcha.q
            @Override // v3.i
            public final void accept(Object obj, Object obj2) {
                w wVar = w.this;
                String str2 = str;
                ((g) ((x) obj).A()).G0(new s(wVar, (t4.h) obj2), new zzag(str2, th.a()));
            }
        }).d(com.google.android.gms.recaptcha.d.f10113b).e(19802).a());
    }

    public final /* synthetic */ void s(RecaptchaHandle recaptchaHandle, RecaptchaAction recaptchaAction, x xVar, t4.h hVar) throws RemoteException {
        ((g) xVar.A()).F0(new t(this, hVar), new zzv(recaptchaHandle, new RecaptchaAction(recaptchaAction, p1.a(this.f9128k, recaptchaHandle.L())), th.a()));
    }
}
