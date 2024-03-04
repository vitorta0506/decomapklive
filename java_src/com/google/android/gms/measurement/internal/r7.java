package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9811a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9812b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9813c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ zzq f9814d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ boolean f9815e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ y7 f9816f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r7(y7 y7Var, AtomicReference atomicReference, String str, String str2, String str3, zzq zzqVar, boolean z10) {
        this.f9816f = y7Var;
        this.f9811a = atomicReference;
        this.f9812b = str2;
        this.f9813c = str3;
        this.f9814d = zzqVar;
        this.f9815e = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        y7 y7Var;
        p4.e eVar;
        synchronized (this.f9811a) {
            try {
                y7Var = this.f9816f;
                eVar = y7Var.f10015d;
            } catch (RemoteException e10) {
                this.f9816f.f9432a.b().r().d("(legacy) Failed to get user properties; remote exception", null, this.f9812b, e10);
                this.f9811a.set(Collections.emptyList());
                atomicReference = this.f9811a;
            }
            if (eVar == null) {
                y7Var.f9432a.b().r().d("(legacy) Failed to get user properties; not connected to service", null, this.f9812b, this.f9813c);
                this.f9811a.set(Collections.emptyList());
                this.f9811a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                com.google.android.gms.common.internal.p.j(this.f9814d);
                this.f9811a.set(eVar.L(this.f9812b, this.f9813c, this.f9815e, this.f9814d));
            } else {
                this.f9811a.set(eVar.d0(null, this.f9812b, this.f9813c, this.f9815e));
            }
            this.f9816f.E();
            atomicReference = this.f9811a;
            atomicReference.notify();
        }
    }
}
