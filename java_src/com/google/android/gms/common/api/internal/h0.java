package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* loaded from: classes2.dex */
final class h0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f7559a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7560b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzb f7561c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f7561c = zzbVar;
        this.f7559a = lifecycleCallback;
        this.f7560b = str;
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
        zzb zzbVar = this.f7561c;
        i9 = zzbVar.f7616b;
        if (i9 > 0) {
            LifecycleCallback lifecycleCallback = this.f7559a;
            bundle = zzbVar.f7617c;
            if (bundle != null) {
                bundle3 = zzbVar.f7617c;
                bundle2 = bundle3.getBundle(this.f7560b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.f(bundle2);
        }
        i10 = this.f7561c.f7616b;
        if (i10 >= 2) {
            this.f7559a.j();
        }
        i11 = this.f7561c.f7616b;
        if (i11 >= 3) {
            this.f7559a.h();
        }
        i12 = this.f7561c.f7616b;
        if (i12 >= 4) {
            this.f7559a.k();
        }
        i13 = this.f7561c.f7616b;
        if (i13 >= 5) {
            this.f7559a.g();
        }
    }
}
