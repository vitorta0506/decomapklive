package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
final class pc extends AtomicReference<oc> implements Executor, Runnable {

    /* renamed from: a  reason: collision with root package name */
    rc f8972a;

    /* renamed from: b  reason: collision with root package name */
    Executor f8973b;

    /* renamed from: c  reason: collision with root package name */
    Runnable f8974c;

    /* renamed from: d  reason: collision with root package name */
    Thread f8975d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ pc(Executor executor, rc rcVar, lc lcVar) {
        super(oc.NOT_RUN);
        this.f8973b = executor;
        this.f8972a = rcVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (get() == oc.CANCELLED) {
            this.f8973b = null;
            this.f8972a = null;
            return;
        }
        this.f8975d = Thread.currentThread();
        try {
            rc rcVar = this.f8972a;
            rcVar.getClass();
            qc a10 = rc.a(rcVar);
            if (a10.f9008a == this.f8975d) {
                this.f8972a = null;
                z7.i(a10.f9009b == null);
                a10.f9009b = runnable;
                Executor executor = this.f8973b;
                executor.getClass();
                a10.f9010c = executor;
                this.f8973b = null;
            } else {
                Executor executor2 = this.f8973b;
                executor2.getClass();
                this.f8973b = null;
                this.f8974c = runnable;
                executor2.execute(this);
            }
        } finally {
            this.f8975d = null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        if (currentThread != this.f8975d) {
            Runnable runnable = this.f8974c;
            runnable.getClass();
            this.f8974c = null;
            runnable.run();
            return;
        }
        qc qcVar = new qc(null);
        qcVar.f9008a = currentThread;
        rc rcVar = this.f8972a;
        rcVar.getClass();
        rc.b(rcVar, qcVar);
        this.f8972a = null;
        try {
            Runnable runnable2 = this.f8974c;
            runnable2.getClass();
            this.f8974c = null;
            runnable2.run();
            while (true) {
                Runnable runnable3 = qcVar.f9009b;
                boolean z10 = true;
                boolean z11 = runnable3 != null;
                Executor executor = qcVar.f9010c;
                if (executor == null) {
                    z10 = false;
                }
                if (!z10 || !z11) {
                    return;
                }
                qcVar.f9009b = null;
                qcVar.f9010c = null;
                executor.execute(runnable3);
            }
        } finally {
            qcVar.f9008a = null;
        }
    }
}
