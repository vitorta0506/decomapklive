package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f9754a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9755b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9756c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ zzq f9757d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ y7 f9758e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p7(y7 y7Var, AtomicReference atomicReference, String str, String str2, String str3, zzq zzqVar) {
        this.f9758e = y7Var;
        this.f9754a = atomicReference;
        this.f9755b = str2;
        this.f9756c = str3;
        this.f9757d = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        y7 y7Var;
        p4.e eVar;
        synchronized (this.f9754a) {
            try {
                y7Var = this.f9758e;
                eVar = y7Var.f10015d;
            } catch (RemoteException e10) {
                this.f9758e.f9432a.b().r().d("(legacy) Failed to get conditional properties; remote exception", null, this.f9755b, e10);
                this.f9754a.set(Collections.emptyList());
                atomicReference = this.f9754a;
            }
            if (eVar == null) {
                y7Var.f9432a.b().r().d("(legacy) Failed to get conditional properties; not connected to service", null, this.f9755b, this.f9756c);
                this.f9754a.set(Collections.emptyList());
                this.f9754a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                com.google.android.gms.common.internal.p.j(this.f9757d);
                this.f9754a.set(eVar.s0(this.f9755b, this.f9756c, this.f9757d));
            } else {
                this.f9754a.set(eVar.l0(null, this.f9755b, this.f9756c));
            }
            this.f9758e.E();
            atomicReference = this.f9754a;
            atomicReference.notify();
        }
    }
}
