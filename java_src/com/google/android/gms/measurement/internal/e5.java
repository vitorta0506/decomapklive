package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class e5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9387a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9388b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9389c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f9390d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ f5 f9391e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e5(f5 f5Var, String str, String str2, String str3, long j10) {
        this.f9391e = f5Var;
        this.f9387a = str;
        this.f9388b = str2;
        this.f9389c = str3;
        this.f9390d = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9 d9Var;
        d9 d9Var2;
        String str = this.f9387a;
        if (str == null) {
            d9Var2 = this.f9391e.f9403a;
            d9Var2.w(this.f9388b, null);
            return;
        }
        r6 r6Var = new r6(this.f9389c, str, this.f9390d);
        d9Var = this.f9391e.f9403a;
        d9Var.w(this.f9388b, r6Var);
    }
}
