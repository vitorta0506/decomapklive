package io.reactivex.internal.observers;

import io.reactivex.r;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes7.dex */
public abstract class c<T> extends CountDownLatch implements r<T>, th.b {

    /* renamed from: a  reason: collision with root package name */
    T f51317a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f51318b;

    /* renamed from: c  reason: collision with root package name */
    th.b f51319c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f51320d;

    public c() {
        super(1);
    }

    public final T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e10) {
                dispose();
                throw io.reactivex.internal.util.f.d(e10);
            }
        }
        Throwable th2 = this.f51318b;
        if (th2 == null) {
            return this.f51317a;
        }
        throw io.reactivex.internal.util.f.d(th2);
    }

    @Override // th.b
    public final void dispose() {
        this.f51320d = true;
        th.b bVar = this.f51319c;
        if (bVar != null) {
            bVar.dispose();
        }
    }

    @Override // th.b
    public final boolean isDisposed() {
        return this.f51320d;
    }

    @Override // io.reactivex.r
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.r
    public final void onSubscribe(th.b bVar) {
        this.f51319c = bVar;
        if (this.f51320d) {
            bVar.dispose();
        }
    }
}
