package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class v0 implements yc<Void> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9094a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9095b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9096c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f9097d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(w0 w0Var, String str, String str2, String str3, String str4) {
        this.f9094a = str;
        this.f9095b = str2;
        this.f9096c = str3;
        this.f9097d = str4;
    }

    @Override // com.google.android.gms.internal.recaptcha.yc
    public final void a(Throwable th2) {
        th2.getMessage();
    }

    @Override // com.google.android.gms.internal.recaptcha.yc
    public final /* bridge */ /* synthetic */ void b(Void r32) {
        String.format("A session storage token (%s) is stored for key: %s:%s", this.f9095b, this.f9096c, this.f9097d);
    }
}
