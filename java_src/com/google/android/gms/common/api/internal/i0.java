package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* loaded from: classes2.dex */
final class i0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f7564a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7565b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzd f7566c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(zzd zzdVar, LifecycleCallback lifecycleCallback, String str) {
        this.f7566c = zzdVar;
        this.f7564a = lifecycleCallback;
        this.f7565b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        zzd zzdVar = this.f7566c;
        i9 = zzdVar.f7620b;
        if (i9 > 0) {
            LifecycleCallback lifecycleCallback = this.f7564a;
            bundle = zzdVar.f7621c;
            if (bundle != null) {
                bundle3 = zzdVar.f7621c;
                bundle2 = bundle3.getBundle(this.f7565b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.f(bundle2);
        }
        i10 = this.f7566c.f7620b;
        if (i10 >= 2) {
            this.f7564a.j();
        }
        i11 = this.f7566c.f7620b;
        if (i11 >= 3) {
            this.f7564a.h();
        }
        i12 = this.f7566c.f7620b;
        if (i12 >= 4) {
            this.f7564a.k();
        }
        i13 = this.f7566c.f7620b;
        if (i13 >= 5) {
            this.f7564a.g();
        }
    }
}
