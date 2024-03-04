package io.reactivex.internal.operators.observable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class e<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51563a;

    /* loaded from: classes7.dex */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f51564a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.p<T> f51565b;

        /* renamed from: c  reason: collision with root package name */
        private T f51566c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f51567d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f51568e = true;

        /* renamed from: f  reason: collision with root package name */
        private Throwable f51569f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f51570g;

        a(io.reactivex.p<T> pVar, b<T> bVar) {
            this.f51565b = pVar;
            this.f51564a = bVar;
        }

        private boolean a() {
            if (!this.f51570g) {
                this.f51570g = true;
                this.f51564a.b();
                new w1(this.f51565b).subscribe(this.f51564a);
            }
            try {
                io.reactivex.j<T> c10 = this.f51564a.c();
                if (c10.h()) {
                    this.f51568e = false;
                    this.f51566c = c10.e();
                    return true;
                }
                this.f51567d = false;
                if (c10.f()) {
                    return false;
                }
                Throwable d10 = c10.d();
                this.f51569f = d10;
                throw io.reactivex.internal.util.f.d(d10);
            } catch (InterruptedException e10) {
                this.f51564a.dispose();
                this.f51569f = e10;
                throw io.reactivex.internal.util.f.d(e10);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th2 = this.f51569f;
            if (th2 == null) {
                if (this.f51567d) {
                    return !this.f51568e || a();
                }
                return false;
            }
            throw io.reactivex.internal.util.f.d(th2);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th2 = this.f51569f;
            if (th2 == null) {
                if (hasNext()) {
                    this.f51568e = true;
                    return this.f51566c;
                }
                throw new NoSuchElementException("No more elements");
            }
            throw io.reactivex.internal.util.f.d(th2);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T> extends io.reactivex.observers.b<io.reactivex.j<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final BlockingQueue<io.reactivex.j<T>> f51571a = new ArrayBlockingQueue(1);

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f51572b = new AtomicInteger();

        b() {
        }

        @Override // io.reactivex.r
        /* renamed from: a */
        public void onNext(io.reactivex.j<T> jVar) {
            if (this.f51572b.getAndSet(0) == 1 || !jVar.h()) {
                while (!this.f51571a.offer(jVar)) {
                    io.reactivex.j<T> poll = this.f51571a.poll();
                    if (poll != null && !poll.h()) {
                        jVar = poll;
                    }
                }
            }
        }

        void b() {
            this.f51572b.set(1);
        }

        public io.reactivex.j<T> c() throws InterruptedException {
            b();
            io.reactivex.internal.util.c.b();
            return this.f51571a.take();
        }

        @Override // io.reactivex.r
        public void onComplete() {
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            ci.a.s(th2);
        }
    }

    public e(io.reactivex.p<T> pVar) {
        this.f51563a = pVar;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.f51563a, new b());
    }
}
