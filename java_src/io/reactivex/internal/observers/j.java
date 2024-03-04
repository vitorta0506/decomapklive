package io.reactivex.internal.observers;

import io.reactivex.r;
/* loaded from: classes7.dex */
public abstract class j<T, U, V> extends l implements r<T>, io.reactivex.internal.util.h<U, V> {

    /* renamed from: b  reason: collision with root package name */
    protected final r<? super V> f51332b;

    /* renamed from: c  reason: collision with root package name */
    protected final yh.f<U> f51333c;

    /* renamed from: d  reason: collision with root package name */
    protected volatile boolean f51334d;

    /* renamed from: e  reason: collision with root package name */
    protected volatile boolean f51335e;

    /* renamed from: f  reason: collision with root package name */
    protected Throwable f51336f;

    public j(r<? super V> rVar, yh.f<U> fVar) {
        this.f51332b = rVar;
        this.f51333c = fVar;
    }

    public final boolean b() {
        return this.f51337a.getAndIncrement() == 0;
    }

    public final boolean c() {
        return this.f51337a.get() == 0 && this.f51337a.compareAndSet(0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d(U u10, boolean z10, th.b bVar) {
        r<? super V> rVar = this.f51332b;
        yh.f<U> fVar = this.f51333c;
        if (this.f51337a.get() == 0 && this.f51337a.compareAndSet(0, 1)) {
            v(rVar, u10);
            if (w(-1) == 0) {
                return;
            }
        } else {
            fVar.offer(u10);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.k.c(fVar, rVar, z10, bVar, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(U u10, boolean z10, th.b bVar) {
        r<? super V> rVar = this.f51332b;
        yh.f<U> fVar = this.f51333c;
        if (this.f51337a.get() == 0 && this.f51337a.compareAndSet(0, 1)) {
            if (fVar.isEmpty()) {
                v(rVar, u10);
                if (w(-1) == 0) {
                    return;
                }
            } else {
                fVar.offer(u10);
            }
        } else {
            fVar.offer(u10);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.k.c(fVar, rVar, z10, bVar, this);
    }

    @Override // io.reactivex.internal.util.h
    public final Throwable u() {
        return this.f51336f;
    }

    @Override // io.reactivex.internal.util.h
    public void v(r<? super V> rVar, U u10) {
    }

    @Override // io.reactivex.internal.util.h
    public final int w(int i9) {
        return this.f51337a.addAndGet(i9);
    }

    @Override // io.reactivex.internal.util.h
    public final boolean x() {
        return this.f51335e;
    }

    @Override // io.reactivex.internal.util.h
    public final boolean y() {
        return this.f51334d;
    }
}
