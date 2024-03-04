package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class b1<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final T[] f51445a;

    /* loaded from: classes7.dex */
    static final class a<T> extends io.reactivex.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51446a;

        /* renamed from: b  reason: collision with root package name */
        final T[] f51447b;

        /* renamed from: c  reason: collision with root package name */
        int f51448c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51449d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f51450e;

        a(io.reactivex.r<? super T> rVar, T[] tArr) {
            this.f51446a = rVar;
            this.f51447b = tArr;
        }

        void a() {
            T[] tArr = this.f51447b;
            int length = tArr.length;
            for (int i9 = 0; i9 < length && !isDisposed(); i9++) {
                T t10 = tArr[i9];
                if (t10 == null) {
                    io.reactivex.r<? super T> rVar = this.f51446a;
                    rVar.onError(new NullPointerException("The element at index " + i9 + " is null"));
                    return;
                }
                this.f51446a.onNext(t10);
            }
            if (isDisposed()) {
                return;
            }
            this.f51446a.onComplete();
        }

        @Override // yh.g
        public void clear() {
            this.f51448c = this.f51447b.length;
        }

        @Override // th.b
        public void dispose() {
            this.f51450e = true;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51450e;
        }

        @Override // yh.g
        public boolean isEmpty() {
            return this.f51448c == this.f51447b.length;
        }

        @Override // yh.g
        public T poll() {
            int i9 = this.f51448c;
            T[] tArr = this.f51447b;
            if (i9 != tArr.length) {
                this.f51448c = i9 + 1;
                return (T) xh.b.e(tArr[i9], "The array element is null");
            }
            return null;
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            if ((i9 & 1) != 0) {
                this.f51449d = true;
                return 1;
            }
            return 0;
        }
    }

    public b1(T[] tArr) {
        this.f51445a = tArr;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar, this.f51445a);
        rVar.onSubscribe(aVar);
        if (aVar.f51449d) {
            return;
        }
        aVar.a();
    }
}
