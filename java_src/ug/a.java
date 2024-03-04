package ug;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class a extends AbstractExecutorService implements j {

    /* renamed from: c  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f58417c = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(a.class);

    /* renamed from: a  reason: collision with root package name */
    private final l f58418a;

    /* renamed from: b  reason: collision with root package name */
    private final Collection<j> f58419b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void f(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th2) {
            f58417c.warn("A task raised an exception. Task: {}", runnable, th2);
        }
    }

    @Override // ug.j
    public boolean Y() {
        return L0(Thread.currentThread());
    }

    public void d(Runnable runnable) {
        execute(runnable);
    }

    @Override // java.lang.Iterable
    public Iterator<j> iterator() {
        return this.f58419b.iterator();
    }

    @Override // ug.l
    public q<?> l0() {
        return z0(2L, 15L, TimeUnit.SECONDS);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t10) {
        return new a0(this, runnable, t10);
    }

    public j next() {
        return this;
    }

    @Override // java.util.concurrent.ExecutorService, ug.l
    @Deprecated
    public abstract void shutdown();

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public List<Runnable> shutdownNow() {
        shutdown();
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(l lVar) {
        this.f58419b = Collections.singleton(this);
        this.f58418a = lVar;
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new a0(this, callable);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public d0<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public d0<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public d0<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> d0<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public q<?> submit(Runnable runnable) {
        return (q) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, ug.l
    public <T> q<T> submit(Runnable runnable, T t10) {
        return (q) super.submit(runnable, (Runnable) t10);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> q<T> submit(Callable<T> callable) {
        return (q) super.submit((Callable) callable);
    }
}
