package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class p9 extends o9 {

    /* renamed from: a  reason: collision with root package name */
    final q9 f8967a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r9 f8968b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p9(r9 r9Var, int i9) {
        this.f8968b = r9Var;
        this.f8967a = new q9(i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.x9
    public final x9 a(byte[] bArr, int i9, int i10) {
        this.f8967a.write(bArr, 0, i10);
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.x9
    public final v9 c() {
        return this.f8968b.c(this.f8967a.c(), 0, this.f8967a.a());
    }
}
