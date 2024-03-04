package com.google.android.gms.recaptcha;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.recaptcha.cj;
import com.google.android.gms.internal.recaptcha.dk;
import com.google.android.gms.internal.recaptcha.fj;
import com.google.android.gms.internal.recaptcha.fk;
import com.google.android.gms.internal.recaptcha.gk;
import com.google.android.gms.internal.recaptcha.hk;
import com.google.android.gms.internal.recaptcha.j1;
import com.google.android.gms.internal.recaptcha.ji;
import com.google.android.gms.internal.recaptcha.mf;
import java.io.Serializable;
/* loaded from: classes2.dex */
public abstract class VerificationHandle implements Serializable {
    public static VerificationHandle zzd(dk dkVar, j1 j1Var, String str) {
        return zzg(dkVar.w(), dkVar.v(), str, "", j1Var);
    }

    public static VerificationHandle zze(fk fkVar, j1 j1Var, String str) {
        return zzg(fkVar.w(), fkVar.v(), str, "", j1Var);
    }

    public static VerificationHandle zzf(String str, j1 j1Var, String str2) {
        gk v10 = hk.v();
        v10.p(0L);
        v10.o(0);
        return zzg("", v10.l(), str2, str, j1Var);
    }

    private static VerificationHandle zzg(String str, hk hkVar, String str2, String str3, j1 j1Var) {
        return new c(str, str2, hkVar.u(), hkVar.t(), str3, j1Var, j1Var.zza(), cj.b(hkVar.u() * 60));
    }

    public abstract int getCodeLength();

    @NonNull
    public abstract String getOperationAbortedToken();

    @NonNull
    public abstract String getSiteKey();

    public abstract long getTimeoutMinutes();

    @NonNull
    public abstract String getVerificationToken();

    public boolean isValid() {
        mf a10 = fj.a(zzc(), zza().zza());
        mf zzb = zzb();
        cj.a(a10);
        cj.a(zzb);
        int i9 = (a10.u() > zzb.u() ? 1 : (a10.u() == zzb.u() ? 0 : -1));
        if (i9 == 0) {
            int t10 = a10.t();
            int t11 = zzb.t();
            i9 = t10 == t11 ? 0 : t10 < t11 ? -1 : 1;
        }
        return i9 < 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract j1 zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract mf zzb();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ji zzc();
}
