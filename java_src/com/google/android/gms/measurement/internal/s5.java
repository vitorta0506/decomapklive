package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9839a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9840b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f9841c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f9842d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ boolean f9843e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ boolean f9844f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ boolean f9845g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ String f9846h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ m6 f9847i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s5(m6 m6Var, String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        this.f9847i = m6Var;
        this.f9839a = str;
        this.f9840b = str2;
        this.f9841c = j10;
        this.f9842d = bundle;
        this.f9843e = z10;
        this.f9844f = z11;
        this.f9845g = z12;
        this.f9846h = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9847i.w(this.f9839a, this.f9840b, this.f9841c, this.f9842d, this.f9843e, this.f9844f, this.f9845g, this.f9846h);
    }
}
