package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import kg.v;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class b0 {

    /* renamed from: j  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f53738j = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(b0.class);

    /* renamed from: a  reason: collision with root package name */
    final v<byte[]> f53739a;

    /* renamed from: b  reason: collision with root package name */
    final v<ByteBuffer> f53740b;

    /* renamed from: c  reason: collision with root package name */
    private final b<byte[]>[] f53741c;

    /* renamed from: d  reason: collision with root package name */
    private final b<ByteBuffer>[] f53742d;

    /* renamed from: e  reason: collision with root package name */
    private final b<byte[]>[] f53743e;

    /* renamed from: f  reason: collision with root package name */
    private final b<ByteBuffer>[] f53744f;

    /* renamed from: g  reason: collision with root package name */
    private final int f53745g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f53746h = new AtomicBoolean();

    /* renamed from: i  reason: collision with root package name */
    private int f53747i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53748a;

        static {
            int[] iArr = new int[v.d.values().length];
            f53748a = iArr;
            try {
                iArr[v.d.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53748a[v.d.Small.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class b<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final io.grpc.netty.shaded.io.netty.util.internal.r<C0552b> f53749e = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

        /* renamed from: a  reason: collision with root package name */
        private final int f53750a;

        /* renamed from: b  reason: collision with root package name */
        private final Queue<C0552b<T>> f53751b;

        /* renamed from: c  reason: collision with root package name */
        private final v.d f53752c;

        /* renamed from: d  reason: collision with root package name */
        private int f53753d;

        /* loaded from: classes5.dex */
        static class a implements r.b<C0552b> {
            a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
            /* renamed from: b */
            public C0552b a(r.a<C0552b> aVar) {
                return new C0552b(aVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kg.b0$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0552b<T> {

            /* renamed from: a  reason: collision with root package name */
            final r.a<C0552b<?>> f53754a;

            /* renamed from: b  reason: collision with root package name */
            w<T> f53755b;

            /* renamed from: c  reason: collision with root package name */
            ByteBuffer f53756c;

            /* renamed from: d  reason: collision with root package name */
            long f53757d = -1;

            /* renamed from: e  reason: collision with root package name */
            int f53758e;

            C0552b(r.a<C0552b<?>> aVar) {
                this.f53754a = aVar;
            }

            void a() {
                this.f53755b = null;
                this.f53756c = null;
                this.f53757d = -1L;
                this.f53754a.a(this);
            }
        }

        b(int i9, v.d dVar) {
            int d10 = io.grpc.netty.shaded.io.netty.util.internal.o.d(i9);
            this.f53750a = d10;
            this.f53751b = io.grpc.netty.shaded.io.netty.util.internal.t.q0(d10);
            this.f53752c = dVar;
        }

        private int c(int i9, boolean z10) {
            int i10 = 0;
            while (i10 < i9) {
                C0552b<T> poll = this.f53751b.poll();
                if (poll == null) {
                    break;
                }
                e(poll, z10);
                i10++;
            }
            return i10;
        }

        private void e(C0552b c0552b, boolean z10) {
            w<T> wVar = c0552b.f53755b;
            long j10 = c0552b.f53757d;
            ByteBuffer byteBuffer = c0552b.f53756c;
            if (!z10) {
                c0552b.a();
            }
            wVar.f53938a.w(wVar, j10, c0552b.f53758e, this.f53752c, byteBuffer, z10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static C0552b g(w<?> wVar, ByteBuffer byteBuffer, long j10, int i9) {
            C0552b a10 = f53749e.a();
            a10.f53755b = wVar;
            a10.f53756c = byteBuffer;
            a10.f53757d = j10;
            a10.f53758e = i9;
            return a10;
        }

        public final boolean a(w<T> wVar, ByteBuffer byteBuffer, long j10, int i9) {
            C0552b<T> g10 = g(wVar, byteBuffer, j10, i9);
            boolean offer = this.f53751b.offer(g10);
            if (!offer) {
                g10.a();
            }
            return offer;
        }

        public final boolean b(c0<T> c0Var, int i9, b0 b0Var) {
            C0552b<T> poll = this.f53751b.poll();
            if (poll == null) {
                return false;
            }
            f(poll.f53755b, poll.f53756c, poll.f53757d, c0Var, i9, b0Var);
            poll.a();
            this.f53753d++;
            return true;
        }

        public final int d(boolean z10) {
            return c(Integer.MAX_VALUE, z10);
        }

        protected abstract void f(w<T> wVar, ByteBuffer byteBuffer, long j10, c0<T> c0Var, int i9, b0 b0Var);

        public final void h() {
            int i9 = this.f53750a - this.f53753d;
            this.f53753d = 0;
            if (i9 > 0) {
                c(i9, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c<T> extends b<T> {
        c(int i9) {
            super(i9, v.d.Normal);
        }

        @Override // kg.b0.b
        protected void f(w<T> wVar, ByteBuffer byteBuffer, long j10, c0<T> c0Var, int i9, b0 b0Var) {
            wVar.m(c0Var, byteBuffer, j10, i9, b0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d<T> extends b<T> {
        d(int i9) {
            super(i9, v.d.Small);
        }

        @Override // kg.b0.b
        protected void f(w<T> wVar, ByteBuffer byteBuffer, long j10, c0<T> c0Var, int i9, b0 b0Var) {
            wVar.n(c0Var, byteBuffer, j10, i9, b0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(v<byte[]> vVar, v<ByteBuffer> vVar2, int i9, int i10, int i11, int i12) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i11, "maxCachedBufferCapacity");
        this.f53745g = i12;
        this.f53739a = vVar;
        this.f53740b = vVar2;
        if (vVar2 != null) {
            this.f53742d = j(i9, vVar2.f53922o);
            this.f53744f = i(i10, i11, vVar2);
            vVar2.F.getAndIncrement();
        } else {
            this.f53742d = null;
            this.f53744f = null;
        }
        if (vVar != null) {
            this.f53741c = j(i9, vVar.f53922o);
            this.f53743e = i(i10, i11, vVar);
            vVar.F.getAndIncrement();
        } else {
            this.f53741c = null;
            this.f53743e = null;
        }
        if (!(this.f53742d == null && this.f53744f == null && this.f53741c == null && this.f53743e == null) && i12 < 1) {
            throw new IllegalArgumentException("freeSweepAllocationThreshold: " + i12 + " (expected: > 0)");
        }
    }

    private boolean b(b<?> bVar, c0 c0Var, int i9) {
        if (bVar == null) {
            return false;
        }
        boolean b10 = bVar.b(c0Var, i9, this);
        int i10 = this.f53747i + 1;
        this.f53747i = i10;
        if (i10 >= this.f53745g) {
            this.f53747i = 0;
            o();
        }
        return b10;
    }

    private b<?> e(v<?> vVar, int i9, v.d dVar) {
        int i10 = a.f53748a[dVar.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return h(vVar, i9);
            }
            throw new Error();
        }
        return g(vVar, i9);
    }

    private static <T> b<T> f(b<T>[] bVarArr, int i9) {
        if (bVarArr == null || i9 > bVarArr.length - 1) {
            return null;
        }
        return bVarArr[i9];
    }

    private b<?> g(v<?> vVar, int i9) {
        int i10 = i9 - vVar.f53922o;
        if (vVar.y()) {
            return f(this.f53744f, i10);
        }
        return f(this.f53743e, i10);
    }

    private b<?> h(v<?> vVar, int i9) {
        if (vVar.y()) {
            return f(this.f53742d, i9);
        }
        return f(this.f53741c, i9);
    }

    private static <T> b<T>[] i(int i9, int i10, v<T> vVar) {
        if (i9 <= 0 || i10 <= 0) {
            return null;
        }
        int min = Math.min(vVar.f53880c, i10);
        ArrayList arrayList = new ArrayList();
        for (int i11 = vVar.f53922o; i11 < vVar.f53882e && vVar.l(i11) <= min; i11++) {
            arrayList.add(new c(i9));
        }
        return (b[]) arrayList.toArray(new b[0]);
    }

    private static <T> b<T>[] j(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            return null;
        }
        b<T>[] bVarArr = new b[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bVarArr[i11] = new d(i9);
        }
        return bVarArr;
    }

    private static int k(b<?> bVar, boolean z10) {
        if (bVar == null) {
            return 0;
        }
        return bVar.d(z10);
    }

    private static int l(b<?>[] bVarArr, boolean z10) {
        if (bVarArr == null) {
            return 0;
        }
        int i9 = 0;
        for (b<?> bVar : bVarArr) {
            i9 += k(bVar, z10);
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(int i9) {
        return 31 - Integer.numberOfLeadingZeros(i9);
    }

    private static void p(b<?> bVar) {
        if (bVar == null) {
            return;
        }
        bVar.h();
    }

    private static void q(b<?>[] bVarArr) {
        if (bVarArr == null) {
            return;
        }
        for (b<?> bVar : bVarArr) {
            p(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(v<?> vVar, w wVar, ByteBuffer byteBuffer, long j10, int i9, v.d dVar) {
        b<?> e10 = e(vVar, vVar.h(i9), dVar);
        if (e10 == null) {
            return false;
        }
        return e10.a(wVar, byteBuffer, j10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(v<?> vVar, c0<?> c0Var, int i9, int i10) {
        return b(g(vVar, i10), c0Var, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(v<?> vVar, c0<?> c0Var, int i9, int i10) {
        return b(h(vVar, i10), c0Var, i9);
    }

    protected void finalize() throws Throwable {
        try {
            super.finalize();
        } finally {
            m(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(boolean z10) {
        if (this.f53746h.compareAndSet(false, true)) {
            int l10 = l(this.f53742d, z10) + l(this.f53744f, z10) + l(this.f53741c, z10) + l(this.f53743e, z10);
            if (l10 > 0) {
                io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f53738j;
                if (bVar.isDebugEnabled()) {
                    bVar.debug("Freed {} thread-local buffer(s) from thread: {}", Integer.valueOf(l10), Thread.currentThread().getName());
                }
            }
            v<ByteBuffer> vVar = this.f53740b;
            if (vVar != null) {
                vVar.F.getAndDecrement();
            }
            v<byte[]> vVar2 = this.f53739a;
            if (vVar2 != null) {
                vVar2.F.getAndDecrement();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        q(this.f53742d);
        q(this.f53744f);
        q(this.f53741c);
        q(this.f53743e);
    }
}
