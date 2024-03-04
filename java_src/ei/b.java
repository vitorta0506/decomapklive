package ei;

import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import io.reactivex.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class b<T> extends c<T> implements a.InterfaceC0530a<Object> {

    /* renamed from: a  reason: collision with root package name */
    final c<T> f39428a;

    /* renamed from: b  reason: collision with root package name */
    boolean f39429b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f39430c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f39431d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c<T> cVar) {
        this.f39428a = cVar;
    }

    void d() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.f39430c;
                if (aVar == null) {
                    this.f39429b = false;
                    return;
                }
                this.f39430c = null;
            }
            aVar.c(this);
        }
    }

    @Override // io.reactivex.r
    public void onComplete() {
        if (this.f39431d) {
            return;
        }
        synchronized (this) {
            if (this.f39431d) {
                return;
            }
            this.f39431d = true;
            if (this.f39429b) {
                io.reactivex.internal.util.a<Object> aVar = this.f39430c;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f39430c = aVar;
                }
                aVar.b(NotificationLite.complete());
                return;
            }
            this.f39429b = true;
            this.f39428a.onComplete();
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (this.f39431d) {
            ci.a.s(th2);
            return;
        }
        synchronized (this) {
            boolean z10 = true;
            if (!this.f39431d) {
                this.f39431d = true;
                if (this.f39429b) {
                    io.reactivex.internal.util.a<Object> aVar = this.f39430c;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f39430c = aVar;
                    }
                    aVar.d(NotificationLite.error(th2));
                    return;
                }
                this.f39429b = true;
                z10 = false;
            }
            if (z10) {
                ci.a.s(th2);
            } else {
                this.f39428a.onError(th2);
            }
        }
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (this.f39431d) {
            return;
        }
        synchronized (this) {
            if (this.f39431d) {
                return;
            }
            if (this.f39429b) {
                io.reactivex.internal.util.a<Object> aVar = this.f39430c;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f39430c = aVar;
                }
                aVar.b(NotificationLite.next(t10));
                return;
            }
            this.f39429b = true;
            this.f39428a.onNext(t10);
            d();
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        boolean z10 = true;
        if (!this.f39431d) {
            synchronized (this) {
                if (!this.f39431d) {
                    if (this.f39429b) {
                        io.reactivex.internal.util.a<Object> aVar = this.f39430c;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f39430c = aVar;
                        }
                        aVar.b(NotificationLite.disposable(bVar));
                        return;
                    }
                    this.f39429b = true;
                    z10 = false;
                }
            }
        }
        if (z10) {
            bVar.dispose();
            return;
        }
        this.f39428a.onSubscribe(bVar);
        d();
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super T> rVar) {
        this.f39428a.subscribe(rVar);
    }

    @Override // io.reactivex.internal.util.a.InterfaceC0530a, vh.q
    public boolean test(Object obj) {
        return NotificationLite.acceptFull(obj, this.f39428a);
    }
}
