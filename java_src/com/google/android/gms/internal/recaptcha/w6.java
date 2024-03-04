package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class w6 implements p7 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ u6 f9142a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p7 f9143b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w6(u6 u6Var, p7 p7Var) {
        this.f9142a = u6Var;
        this.f9143b = p7Var;
    }

    @Override // com.google.android.gms.internal.recaptcha.p7
    public final Object a(Object obj) {
        u6 c10 = d7.c(this.f9142a);
        try {
            return this.f9143b.a(obj);
        } finally {
            d7.c(c10);
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9143b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
        sb2.append("propagating=[");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }
}
