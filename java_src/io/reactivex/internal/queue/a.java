package io.reactivex.internal.queue;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import yh.f;
/* loaded from: classes7.dex */
public final class a<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<C0528a<T>> f52667a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<C0528a<T>> f52668b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.reactivex.internal.queue.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0528a<E> extends AtomicReference<C0528a<E>> {
        private static final long serialVersionUID = 2404266111789071508L;

        /* renamed from: a  reason: collision with root package name */
        private E f52669a;

        C0528a() {
        }

        public E a() {
            E b10 = b();
            e(null);
            return b10;
        }

        public E b() {
            return this.f52669a;
        }

        public C0528a<E> c() {
            return get();
        }

        public void d(C0528a<E> c0528a) {
            lazySet(c0528a);
        }

        public void e(E e10) {
            this.f52669a = e10;
        }

        C0528a(E e10) {
            e(e10);
        }
    }

    public a() {
        C0528a<T> c0528a = new C0528a<>();
        d(c0528a);
        e(c0528a);
    }

    C0528a<T> a() {
        return this.f52668b.get();
    }

    C0528a<T> b() {
        return this.f52668b.get();
    }

    C0528a<T> c() {
        return this.f52667a.get();
    }

    @Override // yh.g
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    void d(C0528a<T> c0528a) {
        this.f52668b.lazySet(c0528a);
    }

    C0528a<T> e(C0528a<T> c0528a) {
        return this.f52667a.getAndSet(c0528a);
    }

    @Override // yh.g
    public boolean isEmpty() {
        return b() == c();
    }

    @Override // yh.g
    public boolean offer(T t10) {
        Objects.requireNonNull(t10, "Null is not a valid element");
        C0528a<T> c0528a = new C0528a<>(t10);
        e(c0528a).d(c0528a);
        return true;
    }

    @Override // yh.f, yh.g
    public T poll() {
        C0528a<T> c10;
        C0528a<T> a10 = a();
        C0528a<T> c11 = a10.c();
        if (c11 != null) {
            T a11 = c11.a();
            d(c11);
            return a11;
        } else if (a10 != c()) {
            do {
                c10 = a10.c();
            } while (c10 == null);
            T a12 = c10.a();
            d(c10);
            return a12;
        } else {
            return null;
        }
    }
}
