package com.google.android.gms.internal.recaptcha;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.HttpStatusException;
import com.google.android.gms.recaptcha.RecaptchaNetworkException;
import com.google.android.gms.recaptcha.RecaptchaResultData;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g0 implements yc<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f8688a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(h0 h0Var, d dVar) {
        this.f8688a = dVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.yc
    public final void a(Throwable th2) {
        th2.getMessage();
        if (th2 instanceof zzby) {
            h0.d(this.f8688a, new Status(8, "Error during initialization step - read/write local cache failed"));
        } else if (th2 instanceof zzbx) {
            Exception exc = (Exception) th2.getCause();
            if (exc instanceof RecaptchaNetworkException) {
                h0.d(this.f8688a, new Status(7, "Error during initialization step - server connection failed"));
            } else if (exc instanceof HttpStatusException) {
                d dVar = this.f8688a;
                int httpErrorStatus = ((HttpStatusException) exc).getHttpErrorStatus();
                StringBuilder sb2 = new StringBuilder(92);
                sb2.append("Error during initialization step - failed to fetch initialization data - status: ");
                sb2.append(httpErrorStatus);
                h0.d(dVar, new Status(13, sb2.toString()));
            }
        } else if (th2 instanceof zzbi) {
            h0.d(this.f8688a, new Status(13, ((zzbi) th2).getMessage()));
        } else if (th2 instanceof RecaptchaNetworkException) {
            h0.d(this.f8688a, new Status(7, ((RecaptchaNetworkException) th2).getMessage()));
        } else if (th2 instanceof HttpStatusException) {
            h0.d(this.f8688a, new Status(13, ((HttpStatusException) th2).getMessage()));
        } else {
            h0.d(this.f8688a, new Status(8, "Internal error during execution"));
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.yc
    public final /* bridge */ /* synthetic */ void b(@NonNull String str) {
        String str2 = str;
        d dVar = this.f8688a;
        Status status = new Status(0);
        int i9 = h0.f8716f;
        try {
            dVar.k(status, new zzx(new RecaptchaResultData(str2)));
        } catch (RemoteException e10) {
            j.a("RecaptchaOPExecute", e10);
        }
    }
}
