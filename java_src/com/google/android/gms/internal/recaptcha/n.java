package com.google.android.gms.internal.recaptcha;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.RecaptchaAction;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.google.android.gms.recaptcha.RecaptchaResultData;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class n implements com.google.android.gms.recaptcha.b {

    /* renamed from: h  reason: collision with root package name */
    private static final j1 f8885h = k1.a();

    /* renamed from: a  reason: collision with root package name */
    private final Context f8886a;

    /* renamed from: b  reason: collision with root package name */
    private final j0 f8887b;

    /* renamed from: c  reason: collision with root package name */
    private final h0 f8888c;

    /* renamed from: d  reason: collision with root package name */
    private final b0 f8889d;

    /* renamed from: e  reason: collision with root package name */
    private final m1 f8890e;

    /* renamed from: f  reason: collision with root package name */
    private final q1 f8891f;

    /* renamed from: g  reason: collision with root package name */
    private final g1 f8892g;

    @VisibleForTesting
    n(Context context, j0 j0Var, h0 h0Var, b0 b0Var, m1 m1Var, q1 q1Var, g1 g1Var) {
        this.f8886a = context;
        this.f8887b = j0Var;
        this.f8888c = h0Var;
        this.f8889d = b0Var;
        this.f8890e = m1Var;
        this.f8891f = q1Var;
        this.f8892g = g1Var;
    }

    public static n a(Activity activity) {
        j0 j0Var = new j0(activity);
        h0 h0Var = new h0(activity);
        b0 b0Var = new b0();
        j1 j1Var = f8885h;
        return new n(activity, j0Var, h0Var, b0Var, new m1(j1Var), new q1(activity, j1Var), g1.b());
    }

    @Override // com.google.android.gms.recaptcha.b
    public final t4.g<RecaptchaResultData> b(RecaptchaHandle recaptchaHandle, RecaptchaAction recaptchaAction) {
        if (recaptchaHandle != null && recaptchaAction != null) {
            t4.h hVar = new t4.h();
            this.f8888c.e(new l(this, hVar), recaptchaHandle, new RecaptchaAction(recaptchaAction, p1.a(this.f8886a, recaptchaHandle.L())), this.f8892g);
            return hVar.a();
        }
        throw new NullPointerException("Cannot call execute with a null RecaptchaHandle or a null RecaptchaAction. Make sure to call init first.");
    }

    @Override // com.google.android.gms.recaptcha.b
    public final t4.g<Boolean> d(RecaptchaHandle recaptchaHandle) {
        Objects.requireNonNull(recaptchaHandle, "Cannot call close with a null RecaptchaHandle.");
        t4.h hVar = new t4.h();
        try {
            new m(this, hVar).P(new Status(0), false);
        } catch (RemoteException e10) {
            j.a("RecaptchaOPClose", e10);
        }
        return hVar.a();
    }

    @Override // com.google.android.gms.recaptcha.b
    public final t4.g<RecaptchaHandle> init(String str) {
        t4.h hVar = new t4.h();
        Objects.requireNonNull(str, "Cannot call init with a null site key.");
        this.f8887b.b(new k(this, hVar), str, this.f8886a.getPackageName(), this.f8892g);
        return hVar.a();
    }
}
