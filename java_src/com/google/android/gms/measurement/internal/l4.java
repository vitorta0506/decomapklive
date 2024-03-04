package com.google.android.gms.measurement.internal;

import androidx.annotation.Nullable;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class l4 extends h5 {

    /* renamed from: l  reason: collision with root package name */
    private static final AtomicLong f9591l = new AtomicLong(Long.MIN_VALUE);
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private k4 f9592c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private k4 f9593d;

    /* renamed from: e  reason: collision with root package name */
    private final PriorityBlockingQueue f9594e;

    /* renamed from: f  reason: collision with root package name */
    private final BlockingQueue f9595f;

    /* renamed from: g  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f9596g;

    /* renamed from: h  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f9597h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f9598i;

    /* renamed from: j  reason: collision with root package name */
    private final Semaphore f9599j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f9600k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l4(n4 n4Var) {
        super(n4Var);
        this.f9598i = new Object();
        this.f9599j = new Semaphore(2);
        this.f9594e = new PriorityBlockingQueue();
        this.f9595f = new LinkedBlockingQueue();
        this.f9596g = new i4(this, "Thread death: Uncaught exception on worker thread");
        this.f9597h = new i4(this, "Thread death: Uncaught exception on network thread");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean B(l4 l4Var) {
        boolean z10 = l4Var.f9600k;
        return false;
    }

    private final void D(j4 j4Var) {
        synchronized (this.f9598i) {
            this.f9594e.add(j4Var);
            k4 k4Var = this.f9592c;
            if (k4Var == null) {
                k4 k4Var2 = new k4(this, "Measurement Worker", this.f9594e);
                this.f9592c = k4Var2;
                k4Var2.setUncaughtExceptionHandler(this.f9596g);
                this.f9592c.start();
            } else {
                k4Var.b();
            }
        }
    }

    public final void A(Runnable runnable) throws IllegalStateException {
        k();
        com.google.android.gms.common.internal.p.j(runnable);
        D(new j4(this, runnable, true, "Task exception on worker thread"));
    }

    public final boolean C() {
        return Thread.currentThread() == this.f9592c;
    }

    @Override // com.google.android.gms.measurement.internal.g5
    public final void g() {
        if (Thread.currentThread() != this.f9593d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.g5
    public final void h() {
        if (Thread.currentThread() != this.f9592c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.h5
    protected final boolean j() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final Object r(AtomicReference atomicReference, long j10, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.f9432a.a().z(runnable);
            try {
                atomicReference.wait(j10);
            } catch (InterruptedException unused) {
                h3 w6 = this.f9432a.b().w();
                w6.a("Interrupted waiting for " + str);
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            this.f9432a.b().w().a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final Future s(Callable callable) throws IllegalStateException {
        k();
        com.google.android.gms.common.internal.p.j(callable);
        j4 j4Var = new j4(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f9592c) {
            if (!this.f9594e.isEmpty()) {
                this.f9432a.b().w().a("Callable skipped the worker queue.");
            }
            j4Var.run();
        } else {
            D(j4Var);
        }
        return j4Var;
    }

    public final Future t(Callable callable) throws IllegalStateException {
        k();
        com.google.android.gms.common.internal.p.j(callable);
        j4 j4Var = new j4(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f9592c) {
            j4Var.run();
        } else {
            D(j4Var);
        }
        return j4Var;
    }

    public final void y(Runnable runnable) throws IllegalStateException {
        k();
        com.google.android.gms.common.internal.p.j(runnable);
        j4 j4Var = new j4(this, runnable, false, "Task exception on network thread");
        synchronized (this.f9598i) {
            this.f9595f.add(j4Var);
            k4 k4Var = this.f9593d;
            if (k4Var == null) {
                k4 k4Var2 = new k4(this, "Measurement Network", this.f9595f);
                this.f9593d = k4Var2;
                k4Var2.setUncaughtExceptionHandler(this.f9597h);
                this.f9593d.start();
            } else {
                k4Var.b();
            }
        }
    }

    public final void z(Runnable runnable) throws IllegalStateException {
        k();
        com.google.android.gms.common.internal.p.j(runnable);
        D(new j4(this, runnable, false, "Task exception on worker thread"));
    }
}
