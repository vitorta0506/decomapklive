package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class c0<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final Runnable f13749a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static final Runnable f13750b = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends AbstractOwnableSynchronizer implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final c0<?> f13751a;

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Thread thread) {
            super.setExclusiveOwnerThread(thread);
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return this.f13751a.toString();
        }

        private b(c0<?> c0Var) {
            this.f13751a = c0Var;
        }
    }

    /* loaded from: classes2.dex */
    private static final class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private void i(Thread thread) {
        Runnable runnable = get();
        b bVar = null;
        boolean z10 = false;
        int i9 = 0;
        while (true) {
            boolean z11 = runnable instanceof b;
            if (!z11 && runnable != f13750b) {
                break;
            }
            if (z11) {
                bVar = (b) runnable;
            }
            i9++;
            if (i9 > 1000) {
                Runnable runnable2 = f13750b;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z10 = Thread.interrupted() || z10;
                    LockSupport.park(bVar);
                }
            } else {
                Thread.yield();
            }
            runnable = get();
        }
        if (z10) {
            thread.interrupt();
        }
    }

    abstract void b(Throwable th2);

    abstract void c(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            b bVar = new b();
            bVar.c(Thread.currentThread());
            if (compareAndSet(runnable, bVar)) {
                try {
                    ((Thread) runnable).interrupt();
                } finally {
                    if (getAndSet(f13749a) == f13750b) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    abstract boolean f();

    abstract T g() throws Exception;

    abstract String h();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean z10 = !f();
            if (z10) {
                try {
                    obj = g();
                } catch (Throwable th2) {
                    if (!compareAndSet(currentThread, f13749a)) {
                        i(currentThread);
                    }
                    if (z10) {
                        b(th2);
                        return;
                    }
                    return;
                }
            }
            if (!compareAndSet(currentThread, f13749a)) {
                i(currentThread);
            }
            if (z10) {
                c(i0.a(obj));
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f13749a) {
            str = "running=[DONE]";
        } else if (runnable instanceof b) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 21);
            sb2.append("running=[RUNNING ON ");
            sb2.append(name);
            sb2.append("]");
            str = sb2.toString();
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String h10 = h();
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(h10).length());
        sb3.append(str);
        sb3.append(", ");
        sb3.append(h10);
        return sb3.toString();
    }
}
