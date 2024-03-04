package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.internal.c0;
import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes5.dex */
public abstract class q<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45235e;

    /* renamed from: f  reason: collision with root package name */
    private static final d<?> f45236f;

    /* renamed from: g  reason: collision with root package name */
    private static final int f45237g;

    /* renamed from: h  reason: collision with root package name */
    private static final int f45238h;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45239i;

    /* renamed from: a  reason: collision with root package name */
    private final int f45240a;

    /* renamed from: b  reason: collision with root package name */
    private final int f45241b;

    /* renamed from: c  reason: collision with root package name */
    private final int f45242c;

    /* renamed from: d  reason: collision with root package name */
    private final ug.n<e<T>> f45243d;

    /* loaded from: classes5.dex */
    static class a implements d<Object> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.a
        public void a(Object obj) {
        }

        public String toString() {
            return "NOOP_HANDLE";
        }
    }

    /* loaded from: classes5.dex */
    class b extends ug.n<e<T>> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public e<T> e() {
            return new e<>(q.this.f45240a, q.this.f45241b, q.this.f45242c);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: p */
        public void g(e<T> eVar) throws Exception {
            super.g(eVar);
            ((e) eVar).f45250b.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c<T> implements d<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final AtomicIntegerFieldUpdater<c<?>> f45245d = AtomicIntegerFieldUpdater.newUpdater(c.class, "a");

        /* renamed from: a  reason: collision with root package name */
        private volatile int f45246a;

        /* renamed from: b  reason: collision with root package name */
        private final e<T> f45247b;

        /* renamed from: c  reason: collision with root package name */
        private T f45248c;

        c(e<T> eVar) {
            this.f45247b = eVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.a
        public void a(Object obj) {
            if (obj == this.f45248c) {
                this.f45247b.d(this);
                return;
            }
            throw new IllegalArgumentException("object does not belong to handle");
        }

        boolean b() {
            if (this.f45246a != 1) {
                return false;
            }
            return f45245d.compareAndSet(this, 1, 0);
        }

        T c() {
            return this.f45248c;
        }

        void d(T t10) {
            this.f45248c = t10;
        }

        void e() {
            if (f45245d.getAndSet(this, 1) == 1) {
                throw new IllegalStateException("Object has been recycled already.");
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface d<T> extends r.a<T> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class e<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f45249a;

        /* renamed from: b  reason: collision with root package name */
        private final Queue<c<T>> f45250b;

        /* renamed from: c  reason: collision with root package name */
        private int f45251c;

        e(int i9, int i10, int i11) {
            this.f45249a = i10;
            this.f45250b = io.grpc.netty.shaded.io.netty.util.internal.t.u0(i11, i9);
            this.f45251c = i10;
        }

        c<T> b() {
            c<T> poll;
            Queue<c<T>> queue = this.f45250b;
            do {
                poll = queue.poll();
                if (poll == null) {
                    break;
                }
            } while (!poll.b());
            return poll;
        }

        c<T> c() {
            int i9 = this.f45251c + 1;
            this.f45251c = i9;
            if (i9 >= this.f45249a) {
                this.f45251c = 0;
                return new c<>(this);
            }
            return null;
        }

        void d(c<T> cVar) {
            cVar.e();
            this.f45250b.offer(cVar);
        }
    }

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(q.class);
        f45235e = b10;
        f45236f = new a();
        int e10 = c0.e("io.grpc.netty.shaded.io.netty.recycler.maxCapacityPerThread", c0.e("io.grpc.netty.shaded.io.netty.recycler.maxCapacity", 4096));
        int i9 = e10 >= 0 ? e10 : 4096;
        f45237g = i9;
        int e11 = c0.e("io.grpc.netty.shaded.io.netty.recycler.chunkSize", 32);
        f45239i = e11;
        int max = Math.max(0, c0.e("io.grpc.netty.shaded.io.netty.recycler.ratio", 8));
        f45238h = max;
        if (b10.isDebugEnabled()) {
            if (i9 == 0) {
                b10.debug("-Dio.netty.recycler.maxCapacityPerThread: disabled");
                b10.debug("-Dio.netty.recycler.ratio: disabled");
                b10.debug("-Dio.netty.recycler.chunkSize: disabled");
                return;
            }
            b10.debug("-Dio.netty.recycler.maxCapacityPerThread: {}", Integer.valueOf(i9));
            b10.debug("-Dio.netty.recycler.ratio: {}", Integer.valueOf(max));
            b10.debug("-Dio.netty.recycler.chunkSize: {}", Integer.valueOf(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public q() {
        this(f45237g);
    }

    public final T d() {
        if (this.f45240a == 0) {
            return e(f45236f);
        }
        e<T> b10 = this.f45243d.b();
        c<T> b11 = b10.b();
        if (b11 == null) {
            c<T> c10 = b10.c();
            if (c10 != null) {
                T e10 = e(c10);
                c10.d(e10);
                return e10;
            }
            return e(f45236f);
        }
        return b11.c();
    }

    protected abstract T e(d<T> dVar);

    protected q(int i9) {
        this(i9, f45238h, f45239i);
    }

    protected q(int i9, int i10, int i11) {
        this.f45243d = new b();
        this.f45241b = Math.max(0, i10);
        if (i9 <= 0) {
            this.f45240a = 0;
            this.f45242c = 0;
            return;
        }
        int max = Math.max(4, i9);
        this.f45240a = max;
        this.f45242c = Math.max(2, Math.min(i11, max >> 1));
    }
}
