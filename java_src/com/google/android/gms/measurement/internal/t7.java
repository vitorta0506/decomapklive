package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes2.dex */
final class t7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentName f9882a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x7 f9883b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t7(x7 x7Var, ComponentName componentName) {
        this.f9883b = x7Var;
        this.f9882a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7.M(this.f9883b.f9983c, this.f9882a);
    }
}
