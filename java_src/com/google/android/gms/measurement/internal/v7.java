package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* loaded from: classes2.dex */
final class v7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ x7 f9923a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v7(x7 x7Var) {
        this.f9923a = x7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f9923a.f9983c;
        Context f10 = y7Var.f9432a.f();
        this.f9923a.f9983c.f9432a.d();
        y7.M(y7Var, new ComponentName(f10, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
