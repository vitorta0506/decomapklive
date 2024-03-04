package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9907a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f9908b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ x1 f9909c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(x1 x1Var, String str, long j10) {
        this.f9909c = x1Var;
        this.f9907a = str;
        this.f9908b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x1.j(this.f9909c, this.f9907a, this.f9908b);
    }
}
