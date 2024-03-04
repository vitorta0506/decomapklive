package com.google.common.util.concurrent;

import com.google.common.util.concurrent.a;
import com.google.common.util.concurrent.w;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class h0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Executor f13762a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.util.concurrent.a f13763b;

        a(Executor executor, com.google.common.util.concurrent.a aVar) {
            this.f13762a = executor;
            this.f13763b = aVar;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.f13762a.execute(runnable);
            } catch (RejectedExecutionException e10) {
                this.f13763b.S(e10);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class b extends com.google.common.util.concurrent.b {

        /* renamed from: a  reason: collision with root package name */
        private final ExecutorService f13764a;

        b(ExecutorService executorService) {
            this.f13764a = (ExecutorService) com.google.common.base.o.s(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f13764a.awaitTermination(j10, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f13764a.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.f13764a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.f13764a.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f13764a.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.f13764a.shutdownNow();
        }

        public final String toString() {
            String obj = super.toString();
            String valueOf = String.valueOf(this.f13764a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2 + valueOf.length());
            sb2.append(obj);
            sb2.append("[");
            sb2.append(valueOf);
            sb2.append("]");
            return sb2.toString();
        }
    }

    /* loaded from: classes2.dex */
    private static final class c extends b implements g0 {

        /* renamed from: b  reason: collision with root package name */
        final ScheduledExecutorService f13765b;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static final class a<V> extends w.a<V> implements f0<V> {

            /* renamed from: b  reason: collision with root package name */
            private final ScheduledFuture<?> f13766b;

            public a(d0<V> d0Var, ScheduledFuture<?> scheduledFuture) {
                super(d0Var);
                this.f13766b = scheduledFuture;
            }

            @Override // java.lang.Comparable
            /* renamed from: A0 */
            public int compareTo(Delayed delayed) {
                return this.f13766b.compareTo(delayed);
            }

            @Override // com.google.common.util.concurrent.v, java.util.concurrent.Future
            public boolean cancel(boolean z10) {
                boolean cancel = super.cancel(z10);
                if (cancel) {
                    this.f13766b.cancel(z10);
                }
                return cancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.f13766b.getDelay(timeUnit);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static final class b extends a.j<Void> implements Runnable {

            /* renamed from: h  reason: collision with root package name */
            private final Runnable f13767h;

            public b(Runnable runnable) {
                this.f13767h = (Runnable) com.google.common.base.o.s(runnable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.a
            public String M() {
                String valueOf = String.valueOf(this.f13767h);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 7);
                sb2.append("task=[");
                sb2.append(valueOf);
                sb2.append("]");
                return sb2.toString();
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f13767h.run();
                } catch (Throwable th2) {
                    S(th2);
                    throw com.google.common.base.y.f(th2);
                }
            }
        }

        c(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f13765b = (ScheduledExecutorService) com.google.common.base.o.s(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* renamed from: e */
        public f0<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            m0 V = m0.V(runnable, null);
            return new a(V, this.f13765b.schedule(V, j10, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* renamed from: f */
        public <V> f0<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
            m0 W = m0.W(callable);
            return new a(W, this.f13765b.schedule(W, j10, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* renamed from: g */
        public f0<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f13765b.scheduleAtFixedRate(bVar, j10, j11, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* renamed from: h */
        public f0<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f13765b.scheduleWithFixedDelay(bVar, j10, j11, timeUnit));
        }
    }

    public static Executor a() {
        return s.INSTANCE;
    }

    public static g0 b(ScheduledExecutorService scheduledExecutorService) {
        if (scheduledExecutorService instanceof g0) {
            return (g0) scheduledExecutorService;
        }
        return new c(scheduledExecutorService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor c(Executor executor, com.google.common.util.concurrent.a<?> aVar) {
        com.google.common.base.o.s(executor);
        com.google.common.base.o.s(aVar);
        return executor == a() ? executor : new a(executor, aVar);
    }
}
