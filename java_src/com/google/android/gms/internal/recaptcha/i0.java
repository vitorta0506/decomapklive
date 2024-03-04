package com.google.android.gms.internal.recaptcha;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.HttpStatusException;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.google.android.gms.recaptcha.RecaptchaNetworkException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i0 implements yc<y1> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f8745a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f8746b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f8747c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(j0 j0Var, f fVar, String str, String str2) {
        this.f8745a = fVar;
        this.f8746b = str;
        this.f8747c = str2;
    }

    @Override // com.google.android.gms.internal.recaptcha.yc
    public final void a(Throwable th2) {
        th2.getMessage();
        if (th2 instanceof RecaptchaNetworkException) {
            j0.a(this.f8745a, new Status(7, th2.getMessage()));
        } else if (th2 instanceof HttpStatusException) {
            f fVar = this.f8745a;
            int httpErrorStatus = ((HttpStatusException) th2).getHttpErrorStatus();
            StringBuilder sb2 = new StringBuilder(58);
            sb2.append("Failed to fetch data for local cache - status: ");
            sb2.append(httpErrorStatus);
            j0.a(fVar, new Status(13, sb2.toString()));
        } else if (th2 instanceof IOException) {
            j0.a(this.f8745a, new Status(8, "Failed to read/write local cache"));
        } else {
            j0.a(this.f8745a, new Status(8, "Internal error during init"));
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.yc
    public final /* bridge */ /* synthetic */ void b(@NonNull y1 y1Var) {
        try {
            this.f8745a.m0(new Status(0), new zzai(new RecaptchaHandle(this.f8746b, this.f8747c, y1Var.z())));
        } catch (RemoteException e10) {
            j.a("RecaptchaOPInit", e10);
        }
    }
}
