package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class g8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f9442a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o8 f9443b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g8(o8 o8Var, long j10) {
        this.f9443b = o8Var;
        this.f9442a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o8.r(this.f9443b, this.f9442a);
    }
}
