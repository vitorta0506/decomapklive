package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class ObservableScalarXMap {

    /* loaded from: classes7.dex */
    public static final class ScalarDisposable<T> extends AtomicInteger implements yh.b<T>, Runnable {
        static final int FUSED = 1;
        static final int ON_COMPLETE = 3;
        static final int ON_NEXT = 2;
        static final int START = 0;
        private static final long serialVersionUID = 3880992722410194083L;
        final io.reactivex.r<? super T> observer;
        final T value;

        public ScalarDisposable(io.reactivex.r<? super T> rVar, T t10) {
            this.observer = rVar;
            this.value = t10;
        }

        @Override // yh.g
        public void clear() {
            lazySet(3);
        }

        @Override // th.b
        public void dispose() {
            set(3);
        }

        @Override // th.b
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // yh.g
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // yh.g
        public boolean offer(T t10) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // yh.g
        public T poll() throws Exception {
            if (get() == 1) {
                lazySet(3);
                return this.value;
            }
            return null;
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            if ((i9 & 1) != 0) {
                lazySet(1);
                return 1;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.observer.onNext((T) this.value);
                if (get() == 2) {
                    lazySet(3);
                    this.observer.onComplete();
                }
            }
        }

        public boolean offer(T t10, T t11) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, R> extends io.reactivex.k<R> {

        /* renamed from: a  reason: collision with root package name */
        final T f51401a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f51402b;

        a(T t10, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar) {
            this.f51401a = t10;
            this.f51402b = oVar;
        }

        @Override // io.reactivex.k
        public void subscribeActual(io.reactivex.r<? super R> rVar) {
            try {
                io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51402b.apply((T) this.f51401a), "The mapper returned a null ObservableSource");
                if (pVar instanceof Callable) {
                    try {
                        Object call = ((Callable) pVar).call();
                        if (call == null) {
                            EmptyDisposable.complete(rVar);
                            return;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(rVar, call);
                        rVar.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                        return;
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        EmptyDisposable.error(th2, rVar);
                        return;
                    }
                }
                pVar.subscribe(rVar);
            } catch (Throwable th3) {
                EmptyDisposable.error(th3, rVar);
            }
        }
    }

    public static <T, U> io.reactivex.k<U> a(T t10, vh.o<? super T, ? extends io.reactivex.p<? extends U>> oVar) {
        return ci.a.o(new a(t10, oVar));
    }

    public static <T, R> boolean b(io.reactivex.p<T> pVar, io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar) {
        if (pVar instanceof Callable) {
            try {
                Object obj = (Object) ((Callable) pVar).call();
                if (obj == 0) {
                    EmptyDisposable.complete(rVar);
                    return true;
                }
                try {
                    io.reactivex.p pVar2 = (io.reactivex.p) xh.b.e(oVar.apply(obj), "The mapper returned a null ObservableSource");
                    if (pVar2 instanceof Callable) {
                        try {
                            Object call = ((Callable) pVar2).call();
                            if (call == null) {
                                EmptyDisposable.complete(rVar);
                                return true;
                            }
                            ScalarDisposable scalarDisposable = new ScalarDisposable(rVar, call);
                            rVar.onSubscribe(scalarDisposable);
                            scalarDisposable.run();
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            EmptyDisposable.error(th2, rVar);
                            return true;
                        }
                    } else {
                        pVar2.subscribe(rVar);
                    }
                    return true;
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    EmptyDisposable.error(th3, rVar);
                    return true;
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                EmptyDisposable.error(th4, rVar);
                return true;
            }
        }
        return false;
    }
}
