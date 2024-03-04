package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class md<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final Runnable f8876a = new ld(null);

    /* renamed from: b  reason: collision with root package name */
    private static final Runnable f8877b = new ld(null);

    private final void d(Thread thread) {
        Runnable runnable = get();
        kd kdVar = null;
        boolean z10 = false;
        int i9 = 0;
        while (true) {
            if (!(runnable instanceof kd)) {
                if (runnable != f8877b) {
                    break;
                }
            } else {
                kdVar = (kd) runnable;
            }
            i9++;
            if (i9 > 1000) {
                Runnable runnable2 = f8877b;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z10 = Thread.interrupted() || z10;
                    LockSupport.park(kdVar);
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

    abstract T b() throws Exception;

    abstract String c();

    abstract void f(Throwable th2);

    abstract void g(T t10);

    abstract boolean h();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            kd kdVar = new kd(this, null);
            super/*java.util.concurrent.locks.AbstractOwnableSynchronizer*/.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, kdVar)) {
                try {
                    Thread thread = (Thread) runnable;
                    thread.interrupt();
                    if (getAndSet(f8876a) == f8877b) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th2) {
                    if (getAndSet(f8876a) == f8877b) {
                        LockSupport.unpark((Thread) runnable);
                    }
                    throw th2;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        T t10 = null;
        if (compareAndSet(null, currentThread)) {
            boolean z10 = !h();
            if (z10) {
                try {
                    t10 = b();
                } catch (Throwable th2) {
                    if (!compareAndSet(currentThread, f8876a)) {
                        d(currentThread);
                    }
                    f(th2);
                    return;
                }
            }
            if (!compareAndSet(currentThread, f8876a)) {
                d(currentThread);
            }
            if (z10) {
                g(t10);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f8876a) {
            str = "running=[DONE]";
        } else if (runnable instanceof kd) {
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
        String c10 = c();
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(c10).length());
        sb3.append(str);
        sb3.append(", ");
        sb3.append(c10);
        return sb3.toString();
    }
}
