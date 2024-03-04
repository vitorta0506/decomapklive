package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class x6 implements dc {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ u6 f9172a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ dc f9173b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x6(u6 u6Var, dc dcVar) {
        this.f9172a = u6Var;
        this.f9173b = dcVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.dc
    public final nd a(Object obj) throws Exception {
        u6 c10 = d7.c(this.f9172a);
        try {
            return this.f9173b.a(obj);
        } finally {
            d7.c(c10);
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9173b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
        sb2.append("propagating=[");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }
}
