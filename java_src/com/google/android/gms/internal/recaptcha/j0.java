package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    private final o0 f8768a;

    public j0(Context context) {
        this.f8768a = o0.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, Status status) {
        try {
            fVar.m0(status, null);
        } catch (RemoteException e10) {
            j.a("RecaptchaOPInit", e10);
        }
    }

    public final void b(f fVar, String str, String str2, g1 g1Var) {
        dd.m(this.f8768a.c(str, str2, g1Var), new i0(this, fVar, str, str2), p0.f8960b);
    }
}
