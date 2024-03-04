package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes2.dex */
final class z8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f10097a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f10098b = "_err";

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Bundle f10099c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ a9 f10100d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z8(a9 a9Var, String str, String str2, Bundle bundle) {
        this.f10100d = a9Var;
        this.f10097a = str;
        this.f10099c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10100d.f9277a.k((zzaw) com.google.android.gms.common.internal.p.j(this.f10100d.f9277a.h0().w0(this.f10097a, this.f10098b, this.f10099c, DebugKt.DEBUG_PROPERTY_VALUE_AUTO, this.f10100d.f9277a.c().a(), false, true)), this.f10097a);
    }
}
