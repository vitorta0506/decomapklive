package io.reactivex.internal.observers;

import io.reactivex.u;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes7.dex */
public final class f<T> extends CountDownLatch implements u<T>, io.reactivex.b, io.reactivex.h<T> {

    /* renamed from: a  reason: collision with root package name */
    T f51321a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f51322b;

    /* renamed from: c  reason: collision with root package name */
    th.b f51323c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f51324d;

    public f() {
        super(1);
    }

    public T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e10) {
                b();
                throw io.reactivex.internal.util.f.d(e10);
            }
        }
        Throwable th2 = this.f51322b;
        if (th2 == null) {
            return this.f51321a;
        }
        throw io.reactivex.internal.util.f.d(th2);
    }

    void b() {
        this.f51324d = true;
        th.b bVar = this.f51323c;
        if (bVar != null) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.b
    public void onComplete() {
        countDown();
    }

    @Override // io.reactivex.u
    public void onError(Throwable th2) {
        this.f51322b = th2;
        countDown();
    }

    @Override // io.reactivex.u
    public void onSubscribe(th.b bVar) {
        this.f51323c = bVar;
        if (this.f51324d) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.u
    public void onSuccess(T t10) {
        this.f51321a = t10;
        countDown();
    }
}
