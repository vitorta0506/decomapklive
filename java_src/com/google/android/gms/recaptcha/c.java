package com.google.android.gms.recaptcha;

import com.google.android.gms.internal.recaptcha.j1;
import com.google.android.gms.internal.recaptcha.ji;
import com.google.android.gms.internal.recaptcha.mf;
import java.util.Objects;
/* loaded from: classes2.dex */
final class c extends VerificationHandle {

    /* renamed from: a  reason: collision with root package name */
    private final String f10104a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10105b;

    /* renamed from: c  reason: collision with root package name */
    private final long f10106c;

    /* renamed from: d  reason: collision with root package name */
    private final int f10107d;

    /* renamed from: e  reason: collision with root package name */
    private final String f10108e;

    /* renamed from: f  reason: collision with root package name */
    private final j1 f10109f;

    /* renamed from: g  reason: collision with root package name */
    private final ji f10110g;

    /* renamed from: h  reason: collision with root package name */
    private final mf f10111h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, String str2, long j10, int i9, String str3, j1 j1Var, ji jiVar, mf mfVar) {
        Objects.requireNonNull(str, "Null verificationToken");
        this.f10104a = str;
        Objects.requireNonNull(str2, "Null siteKey");
        this.f10105b = str2;
        this.f10106c = j10;
        this.f10107d = i9;
        Objects.requireNonNull(str3, "Null operationAbortedToken");
        this.f10108e = str3;
        Objects.requireNonNull(j1Var, "Null recaptchaTimeProvider");
        this.f10109f = j1Var;
        Objects.requireNonNull(jiVar, "Null creationTimestamp");
        this.f10110g = jiVar;
        Objects.requireNonNull(mfVar, "Null validityDuration");
        this.f10111h = mfVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof VerificationHandle) {
            VerificationHandle verificationHandle = (VerificationHandle) obj;
            if (this.f10104a.equals(verificationHandle.getVerificationToken()) && this.f10105b.equals(verificationHandle.getSiteKey()) && this.f10106c == verificationHandle.getTimeoutMinutes() && this.f10107d == verificationHandle.getCodeLength() && this.f10108e.equals(verificationHandle.getOperationAbortedToken()) && this.f10109f.equals(verificationHandle.zza()) && this.f10110g.equals(verificationHandle.zzc()) && this.f10111h.equals(verificationHandle.zzb())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    public final int getCodeLength() {
        return this.f10107d;
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    public final String getOperationAbortedToken() {
        return this.f10108e;
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    public final String getSiteKey() {
        return this.f10105b;
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    public final long getTimeoutMinutes() {
        return this.f10106c;
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    public final String getVerificationToken() {
        return this.f10104a;
    }

    public final int hashCode() {
        int hashCode = this.f10104a.hashCode();
        int hashCode2 = this.f10105b.hashCode();
        long j10 = this.f10106c;
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.f10107d) * 1000003) ^ this.f10108e.hashCode()) * 1000003) ^ this.f10109f.hashCode()) * 1000003) ^ this.f10110g.hashCode()) * 1000003) ^ this.f10111h.hashCode();
    }

    public final String toString() {
        String str = this.f10104a;
        String str2 = this.f10105b;
        long j10 = this.f10106c;
        int i9 = this.f10107d;
        String str3 = this.f10108e;
        String valueOf = String.valueOf(this.f10109f);
        String valueOf2 = String.valueOf(this.f10110g);
        String valueOf3 = String.valueOf(this.f10111h);
        int length = str.length();
        int length2 = str2.length();
        int length3 = str3.length();
        int length4 = valueOf.length();
        StringBuilder sb2 = new StringBuilder(length + 196 + length2 + length3 + length4 + valueOf2.length() + valueOf3.length());
        sb2.append("VerificationHandle{verificationToken=");
        sb2.append(str);
        sb2.append(", siteKey=");
        sb2.append(str2);
        sb2.append(", timeoutMinutes=");
        sb2.append(j10);
        sb2.append(", codeLength=");
        sb2.append(i9);
        sb2.append(", operationAbortedToken=");
        sb2.append(str3);
        sb2.append(", recaptchaTimeProvider=");
        sb2.append(valueOf);
        sb2.append(", creationTimestamp=");
        sb2.append(valueOf2);
        sb2.append(", validityDuration=");
        sb2.append(valueOf3);
        sb2.append("}");
        return sb2.toString();
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    final j1 zza() {
        return this.f10109f;
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    final mf zzb() {
        return this.f10111h;
    }

    @Override // com.google.android.gms.recaptcha.VerificationHandle
    final ji zzc() {
        return this.f10110g;
    }
}
