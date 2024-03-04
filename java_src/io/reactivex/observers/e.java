package io.reactivex.observers;

import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
import io.reactivex.u;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public class e<T> extends BaseTestConsumer<T, e<T>> implements r<T>, h<T>, u<T>, io.reactivex.b {

    /* renamed from: i  reason: collision with root package name */
    private final r<? super T> f52784i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicReference<th.b> f52785j;

    /* renamed from: k  reason: collision with root package name */
    private yh.b<T> f52786k;

    /* loaded from: classes7.dex */
    enum a implements r<Object> {
        INSTANCE;

        @Override // io.reactivex.r
        public void onComplete() {
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
        }
    }

    public e() {
        this(a.INSTANCE);
    }

    @Override // th.b
    public final void dispose() {
        DisposableHelper.dispose(this.f52785j);
    }

    @Override // th.b
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f52785j.get());
    }

    @Override // io.reactivex.r
    public void onComplete() {
        if (!this.f52771f) {
            this.f52771f = true;
            if (this.f52785j.get() == null) {
                this.f52768c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f52770e = Thread.currentThread();
            this.f52769d++;
            this.f52784i.onComplete();
        } finally {
            this.f52766a.countDown();
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (!this.f52771f) {
            this.f52771f = true;
            if (this.f52785j.get() == null) {
                this.f52768c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f52770e = Thread.currentThread();
            if (th2 == null) {
                this.f52768c.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f52768c.add(th2);
            }
            this.f52784i.onError(th2);
        } finally {
            this.f52766a.countDown();
        }
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (!this.f52771f) {
            this.f52771f = true;
            if (this.f52785j.get() == null) {
                this.f52768c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f52770e = Thread.currentThread();
        if (this.f52773h != 2) {
            this.f52767b.add(t10);
            if (t10 == null) {
                this.f52768c.add(new NullPointerException("onNext received a null value"));
            }
            this.f52784i.onNext(t10);
            return;
        }
        while (true) {
            try {
                T poll = this.f52786k.poll();
                if (poll == null) {
                    return;
                }
                this.f52767b.add(poll);
            } catch (Throwable th2) {
                this.f52768c.add(th2);
                this.f52786k.dispose();
                return;
            }
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        this.f52770e = Thread.currentThread();
        if (bVar == null) {
            this.f52768c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f52785j.compareAndSet(null, bVar)) {
            bVar.dispose();
            if (this.f52785j.get() != DisposableHelper.DISPOSED) {
                this.f52768c.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + bVar));
            }
        } else {
            int i9 = this.f52772g;
            if (i9 != 0 && (bVar instanceof yh.b)) {
                yh.b<T> bVar2 = (yh.b) bVar;
                this.f52786k = bVar2;
                int requestFusion = bVar2.requestFusion(i9);
                this.f52773h = requestFusion;
                if (requestFusion == 1) {
                    this.f52771f = true;
                    this.f52770e = Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.f52786k.poll();
                            if (poll != null) {
                                this.f52767b.add(poll);
                            } else {
                                this.f52769d++;
                                this.f52785j.lazySet(DisposableHelper.DISPOSED);
                                return;
                            }
                        } catch (Throwable th2) {
                            this.f52768c.add(th2);
                            return;
                        }
                    }
                }
            }
            this.f52784i.onSubscribe(bVar);
        }
    }

    @Override // io.reactivex.h
    public void onSuccess(T t10) {
        onNext(t10);
        onComplete();
    }

    public e(r<? super T> rVar) {
        this.f52785j = new AtomicReference<>();
        this.f52784i = rVar;
    }
}
