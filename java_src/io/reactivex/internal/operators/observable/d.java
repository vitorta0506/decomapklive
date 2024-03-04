package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51509a;

    /* renamed from: b  reason: collision with root package name */
    final T f51510b;

    /* loaded from: classes7.dex */
    static final class a<T> extends io.reactivex.observers.a<T> {

        /* renamed from: b  reason: collision with root package name */
        volatile Object f51511b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.reactivex.internal.operators.observable.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public final class C0512a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private Object f51512a;

            C0512a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = a.this.f51511b;
                this.f51512a = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f51512a == null) {
                        this.f51512a = a.this.f51511b;
                    }
                    if (!NotificationLite.isComplete(this.f51512a)) {
                        if (!NotificationLite.isError(this.f51512a)) {
                            return (T) NotificationLite.getValue(this.f51512a);
                        }
                        throw io.reactivex.internal.util.f.d(NotificationLite.getError(this.f51512a));
                    }
                    throw new NoSuchElementException();
                } finally {
                    this.f51512a = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t10) {
            this.f51511b = NotificationLite.next(t10);
        }

        public a<T>.C0512a b() {
            return new C0512a();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51511b = NotificationLite.complete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51511b = NotificationLite.error(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51511b = NotificationLite.next(t10);
        }
    }

    public d(io.reactivex.p<T> pVar, T t10) {
        this.f51509a = pVar;
        this.f51510b = t10;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f51510b);
        this.f51509a.subscribe(aVar);
        return aVar.b();
    }
}
