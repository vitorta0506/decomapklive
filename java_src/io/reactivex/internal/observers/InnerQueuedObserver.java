package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class InnerQueuedObserver<T> extends AtomicReference<th.b> implements r<T>, th.b {
    private static final long serialVersionUID = -5417183359794346637L;
    volatile boolean done;
    int fusionMode;
    final i<T> parent;
    final int prefetch;
    yh.g<T> queue;

    public InnerQueuedObserver(i<T> iVar, int i9) {
        this.parent = iVar;
        this.prefetch = i9;
    }

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public int fusionMode() {
        return this.fusionMode;
    }

    @Override // th.b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean isDone() {
        return this.done;
    }

    @Override // io.reactivex.r
    public void onComplete() {
        this.parent.c(this);
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        this.parent.b(this, th2);
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (this.fusionMode == 0) {
            this.parent.d(this, t10);
        } else {
            this.parent.a();
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            if (bVar instanceof yh.b) {
                yh.b bVar2 = (yh.b) bVar;
                int requestFusion = bVar2.requestFusion(3);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = bVar2;
                    this.done = true;
                    this.parent.c(this);
                    return;
                } else if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = bVar2;
                    return;
                }
            }
            this.queue = io.reactivex.internal.util.k.b(-this.prefetch);
        }
    }

    public yh.g<T> queue() {
        return this.queue;
    }

    public void setDone() {
        this.done = true;
    }
}
