package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
/* loaded from: classes7.dex */
public abstract class a<T, R> implements r<T>, yh.b<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final r<? super R> f51312a;

    /* renamed from: b  reason: collision with root package name */
    protected th.b f51313b;

    /* renamed from: c  reason: collision with root package name */
    protected yh.b<T> f51314c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f51315d;

    /* renamed from: e  reason: collision with root package name */
    protected int f51316e;

    public a(r<? super R> rVar) {
        this.f51312a = rVar;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(Throwable th2) {
        io.reactivex.exceptions.a.b(th2);
        this.f51313b.dispose();
        onError(th2);
    }

    @Override // yh.g
    public void clear() {
        this.f51314c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int d(int i9) {
        yh.b<T> bVar = this.f51314c;
        if (bVar == null || (i9 & 4) != 0) {
            return 0;
        }
        int requestFusion = bVar.requestFusion(i9);
        if (requestFusion != 0) {
            this.f51316e = requestFusion;
        }
        return requestFusion;
    }

    @Override // th.b
    public void dispose() {
        this.f51313b.dispose();
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f51313b.isDisposed();
    }

    @Override // yh.g
    public boolean isEmpty() {
        return this.f51314c.isEmpty();
    }

    @Override // yh.g
    public final boolean offer(R r10) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.r
    public void onComplete() {
        if (this.f51315d) {
            return;
        }
        this.f51315d = true;
        this.f51312a.onComplete();
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (this.f51315d) {
            ci.a.s(th2);
            return;
        }
        this.f51315d = true;
        this.f51312a.onError(th2);
    }

    @Override // io.reactivex.r
    public final void onSubscribe(th.b bVar) {
        if (DisposableHelper.validate(this.f51313b, bVar)) {
            this.f51313b = bVar;
            if (bVar instanceof yh.b) {
                this.f51314c = (yh.b) bVar;
            }
            if (b()) {
                this.f51312a.onSubscribe(this);
                a();
            }
        }
    }
}
