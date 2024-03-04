package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9872a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9873b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Object f9874c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f9875d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ m6 f9876e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t5(m6 m6Var, String str, String str2, Object obj, long j10) {
        this.f9876e = m6Var;
        this.f9872a = str;
        this.f9873b = str2;
        this.f9874c = obj;
        this.f9875d = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9876e.M(this.f9872a, this.f9873b, this.f9874c, this.f9875d);
    }
}
