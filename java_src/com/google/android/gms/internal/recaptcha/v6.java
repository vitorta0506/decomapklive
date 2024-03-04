package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class v6 implements cc {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ u6 f9099a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ cc f9100b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v6(u6 u6Var, cc ccVar) {
        this.f9099a = u6Var;
        this.f9100b = ccVar;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9100b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
        sb2.append("propagating=[");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.cc
    public final nd zza() throws Exception {
        u6 c10 = d7.c(this.f9099a);
        try {
            return this.f9100b.zza();
        } finally {
            d7.c(c10);
        }
    }
}
