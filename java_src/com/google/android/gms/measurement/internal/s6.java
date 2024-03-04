package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f9848a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r6 f9849b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ r6 f9850c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f9851d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y6 f9852e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s6(y6 y6Var, Bundle bundle, r6 r6Var, r6 r6Var2, long j10) {
        this.f9852e = y6Var;
        this.f9848a = bundle;
        this.f9849b = r6Var;
        this.f9850c = r6Var2;
        this.f9851d = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y6.w(this.f9852e, this.f9848a, this.f9849b, this.f9850c, this.f9851d);
    }
}
