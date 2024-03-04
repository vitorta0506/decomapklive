package com.google.android.gms.measurement.internal;

import android.os.Process;
import androidx.annotation.GuardedBy;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k4 extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final Object f9569a;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue f9570b;
    @GuardedBy("threadLifeCycleLock")

    /* renamed from: c  reason: collision with root package name */
    private boolean f9571c = false;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l4 f9572d;

    public k4(l4 l4Var, String str, BlockingQueue blockingQueue) {
        this.f9572d = l4Var;
        com.google.android.gms.common.internal.p.j(str);
        com.google.android.gms.common.internal.p.j(blockingQueue);
        this.f9569a = new Object();
        this.f9570b = blockingQueue;
        setName(str);
    }

    private final void c() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        k4 k4Var;
        k4 k4Var2;
        obj = this.f9572d.f9598i;
        synchronized (obj) {
            if (!this.f9571c) {
                semaphore = this.f9572d.f9599j;
                semaphore.release();
                obj2 = this.f9572d.f9598i;
                obj2.notifyAll();
                l4 l4Var = this.f9572d;
                k4Var = l4Var.f9592c;
                if (this == k4Var) {
                    l4Var.f9592c = null;
                } else {
                    k4Var2 = l4Var.f9593d;
                    if (this == k4Var2) {
                        l4Var.f9593d = null;
                    } else {
                        l4Var.f9432a.b().r().a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f9571c = true;
            }
        }
    }

    private final void d(InterruptedException interruptedException) {
        this.f9572d.f9432a.b().w().b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    public final void b() {
        synchronized (this.f9569a) {
            this.f9569a.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Semaphore semaphore;
        Object obj;
        boolean z10 = false;
        while (!z10) {
            try {
                semaphore = this.f9572d.f9599j;
                semaphore.acquire();
                z10 = true;
            } catch (InterruptedException e10) {
                d(e10);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                j4 j4Var = (j4) this.f9570b.poll();
                if (j4Var != null) {
                    Process.setThreadPriority(true != j4Var.f9514b ? 10 : threadPriority);
                    j4Var.run();
                } else {
                    synchronized (this.f9569a) {
                        if (this.f9570b.peek() == null) {
                            l4.B(this.f9572d);
                            try {
                                this.f9569a.wait(30000L);
                            } catch (InterruptedException e11) {
                                d(e11);
                            }
                        }
                    }
                    obj = this.f9572d.f9598i;
                    synchronized (obj) {
                        if (this.f9570b.peek() == null) {
                            c();
                            return;
                        }
                    }
                }
            }
        } finally {
            c();
        }
    }
}
