package ei;

import io.reactivex.r;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class a<T> extends c<T> {

    /* renamed from: c  reason: collision with root package name */
    static final C0419a[] f39422c = new C0419a[0];

    /* renamed from: d  reason: collision with root package name */
    static final C0419a[] f39423d = new C0419a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<C0419a<T>[]> f39424a = new AtomicReference<>(f39423d);

    /* renamed from: b  reason: collision with root package name */
    Throwable f39425b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ei.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0419a<T> extends AtomicBoolean implements th.b {
        private static final long serialVersionUID = 3562861878281475070L;

        /* renamed from: a  reason: collision with root package name */
        final r<? super T> f39426a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f39427b;

        C0419a(r<? super T> rVar, a<T> aVar) {
            this.f39426a = rVar;
            this.f39427b = aVar;
        }

        public void a() {
            if (get()) {
                return;
            }
            this.f39426a.onComplete();
        }

        public void b(Throwable th2) {
            if (get()) {
                ci.a.s(th2);
            } else {
                this.f39426a.onError(th2);
            }
        }

        public void c(T t10) {
            if (get()) {
                return;
            }
            this.f39426a.onNext(t10);
        }

        @Override // th.b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f39427b.f(this);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return get();
        }
    }

    a() {
    }

    public static <T> a<T> e() {
        return new a<>();
    }

    boolean d(C0419a<T> c0419a) {
        C0419a<T>[] c0419aArr;
        C0419a<T>[] c0419aArr2;
        do {
            c0419aArr = this.f39424a.get();
            if (c0419aArr == f39422c) {
                return false;
            }
            int length = c0419aArr.length;
            c0419aArr2 = new C0419a[length + 1];
            System.arraycopy(c0419aArr, 0, c0419aArr2, 0, length);
            c0419aArr2[length] = c0419a;
        } while (!this.f39424a.compareAndSet(c0419aArr, c0419aArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void f(C0419a<T> c0419a) {
        C0419a<T>[] c0419aArr;
        C0419a[] c0419aArr2;
        do {
            c0419aArr = this.f39424a.get();
            if (c0419aArr == f39422c || c0419aArr == f39423d) {
                return;
            }
            int length = c0419aArr.length;
            int i9 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (c0419aArr[i10] == c0419a) {
                    i9 = i10;
                    break;
                } else {
                    i10++;
                }
            }
            if (i9 < 0) {
                return;
            }
            if (length == 1) {
                c0419aArr2 = f39423d;
            } else {
                C0419a[] c0419aArr3 = new C0419a[length - 1];
                System.arraycopy(c0419aArr, 0, c0419aArr3, 0, i9);
                System.arraycopy(c0419aArr, i9 + 1, c0419aArr3, i9, (length - i9) - 1);
                c0419aArr2 = c0419aArr3;
            }
        } while (!this.f39424a.compareAndSet(c0419aArr, c0419aArr2));
    }

    @Override // io.reactivex.r
    public void onComplete() {
        C0419a<T>[] c0419aArr = this.f39424a.get();
        C0419a<T>[] c0419aArr2 = f39422c;
        if (c0419aArr == c0419aArr2) {
            return;
        }
        for (C0419a<T> c0419a : this.f39424a.getAndSet(c0419aArr2)) {
            c0419a.a();
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        xh.b.e(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        C0419a<T>[] c0419aArr = this.f39424a.get();
        C0419a<T>[] c0419aArr2 = f39422c;
        if (c0419aArr == c0419aArr2) {
            ci.a.s(th2);
            return;
        }
        this.f39425b = th2;
        for (C0419a<T> c0419a : this.f39424a.getAndSet(c0419aArr2)) {
            c0419a.b(th2);
        }
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        xh.b.e(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (C0419a<T> c0419a : this.f39424a.get()) {
            c0419a.c(t10);
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        if (this.f39424a.get() == f39422c) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super T> rVar) {
        C0419a<T> c0419a = new C0419a<>(rVar, this);
        rVar.onSubscribe(c0419a);
        if (d(c0419a)) {
            if (c0419a.isDisposed()) {
                f(c0419a);
                return;
            }
            return;
        }
        Throwable th2 = this.f39425b;
        if (th2 != null) {
            rVar.onError(th2);
        } else {
            rVar.onComplete();
        }
    }
}
