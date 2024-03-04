package io.grpc.internal;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class d2 implements Executor, Runnable {

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f42555d = Logger.getLogger(d2.class.getName());

    /* renamed from: e  reason: collision with root package name */
    private static final b f42556e = f();

    /* renamed from: a  reason: collision with root package name */
    private Executor f42557a;

    /* renamed from: b  reason: collision with root package name */
    private final Queue<Runnable> f42558b = new ConcurrentLinkedQueue();

    /* renamed from: c  reason: collision with root package name */
    private volatile int f42559c = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class b {
        private b() {
        }

        public abstract boolean a(d2 d2Var, int i9, int i10);

        public abstract void b(d2 d2Var, int i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicIntegerFieldUpdater<d2> f42560a;

        @Override // io.grpc.internal.d2.b
        public boolean a(d2 d2Var, int i9, int i10) {
            return this.f42560a.compareAndSet(d2Var, i9, i10);
        }

        @Override // io.grpc.internal.d2.b
        public void b(d2 d2Var, int i9) {
            this.f42560a.set(d2Var, i9);
        }

        private c(AtomicIntegerFieldUpdater<d2> atomicIntegerFieldUpdater) {
            super();
            this.f42560a = atomicIntegerFieldUpdater;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d extends b {
        private d() {
            super();
        }

        @Override // io.grpc.internal.d2.b
        public boolean a(d2 d2Var, int i9, int i10) {
            synchronized (d2Var) {
                if (d2Var.f42559c == i9) {
                    d2Var.f42559c = i10;
                    return true;
                }
                return false;
            }
        }

        @Override // io.grpc.internal.d2.b
        public void b(d2 d2Var, int i9) {
            synchronized (d2Var) {
                d2Var.f42559c = i9;
            }
        }
    }

    public d2(Executor executor) {
        com.google.common.base.o.t(executor, "'executor' must not be null.");
        this.f42557a = executor;
    }

    private static b f() {
        try {
            return new c(AtomicIntegerFieldUpdater.newUpdater(d2.class, com.huawei.hms.opendevice.c.f27627a));
        } catch (Throwable th2) {
            f42555d.log(Level.SEVERE, "FieldUpdaterAtomicHelper failed", th2);
            return new d();
        }
    }

    private void g(Runnable runnable) {
        if (f42556e.a(this, 0, -1)) {
            try {
                this.f42557a.execute(this);
            } catch (Throwable th2) {
                if (runnable != null) {
                    this.f42558b.remove(runnable);
                }
                f42556e.b(this, 0);
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f42558b.add((Runnable) com.google.common.base.o.t(runnable, "'r' must not be null."));
        g(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable poll;
        try {
            Executor executor = this.f42557a;
            while (executor == this.f42557a && (poll = this.f42558b.poll()) != null) {
                try {
                    poll.run();
                } catch (RuntimeException e10) {
                    Logger logger = f42555d;
                    Level level = Level.SEVERE;
                    logger.log(level, "Exception while executing runnable " + poll, (Throwable) e10);
                }
            }
            f42556e.b(this, 0);
            if (this.f42558b.isEmpty()) {
                return;
            }
            g(null);
        } catch (Throwable th2) {
            f42556e.b(this, 0);
            throw th2;
        }
    }
}
