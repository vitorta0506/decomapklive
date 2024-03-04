package ug;

import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class e<V> extends c<V> {

    /* renamed from: a  reason: collision with root package name */
    private final j f58432a;

    /* JADX INFO: Access modifiers changed from: protected */
    public e(j jVar) {
        this.f58432a = jVar;
    }

    @Override // ug.q
    public boolean await(long j10, TimeUnit timeUnit) throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return true;
    }

    @Override // ug.q, io.grpc.netty.shaded.io.netty.channel.i
    public q<V> c(r<? extends q<? super V>> rVar) {
        h.C(i(), this, (r) io.grpc.netty.shaded.io.netty.util.internal.s.h(rVar, "listener"));
        return this;
    }

    @Override // ug.q
    public q<V> c0() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return this;
    }

    @Override // ug.q, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return false;
    }

    @Override // ug.q
    public q<V> f(r<? extends q<? super V>> rVar) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j i() {
        return this.f58432a;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }
}
