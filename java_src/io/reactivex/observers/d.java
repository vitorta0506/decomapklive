package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.r;
/* loaded from: classes7.dex */
public final class d<T> implements r<T>, th.b {

    /* renamed from: a  reason: collision with root package name */
    final r<? super T> f52778a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f52779b;

    /* renamed from: c  reason: collision with root package name */
    th.b f52780c;

    /* renamed from: d  reason: collision with root package name */
    boolean f52781d;

    /* renamed from: e  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f52782e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f52783f;

    public d(r<? super T> rVar) {
        this(rVar, false);
    }

    void a() {
        io.reactivex.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.f52782e;
                if (aVar == null) {
                    this.f52781d = false;
                    return;
                }
                this.f52782e = null;
            }
        } while (!aVar.a((r<? super T>) this.f52778a));
    }

    @Override // th.b
    public void dispose() {
        this.f52780c.dispose();
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f52780c.isDisposed();
    }

    @Override // io.reactivex.r
    public void onComplete() {
        if (this.f52783f) {
            return;
        }
        synchronized (this) {
            if (this.f52783f) {
                return;
            }
            if (this.f52781d) {
                io.reactivex.internal.util.a<Object> aVar = this.f52782e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f52782e = aVar;
                }
                aVar.b(NotificationLite.complete());
                return;
            }
            this.f52783f = true;
            this.f52781d = true;
            this.f52778a.onComplete();
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (this.f52783f) {
            ci.a.s(th2);
            return;
        }
        synchronized (this) {
            boolean z10 = true;
            if (!this.f52783f) {
                if (this.f52781d) {
                    this.f52783f = true;
                    io.reactivex.internal.util.a<Object> aVar = this.f52782e;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f52782e = aVar;
                    }
                    Object error = NotificationLite.error(th2);
                    if (this.f52779b) {
                        aVar.b(error);
                    } else {
                        aVar.d(error);
                    }
                    return;
                }
                this.f52783f = true;
                this.f52781d = true;
                z10 = false;
            }
            if (z10) {
                ci.a.s(th2);
            } else {
                this.f52778a.onError(th2);
            }
        }
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (this.f52783f) {
            return;
        }
        if (t10 == null) {
            this.f52780c.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.f52783f) {
                return;
            }
            if (this.f52781d) {
                io.reactivex.internal.util.a<Object> aVar = this.f52782e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f52782e = aVar;
                }
                aVar.b(NotificationLite.next(t10));
                return;
            }
            this.f52781d = true;
            this.f52778a.onNext(t10);
            a();
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        if (DisposableHelper.validate(this.f52780c, bVar)) {
            this.f52780c = bVar;
            this.f52778a.onSubscribe(this);
        }
    }

    public d(r<? super T> rVar, boolean z10) {
        this.f52778a = rVar;
        this.f52779b = z10;
    }
}
