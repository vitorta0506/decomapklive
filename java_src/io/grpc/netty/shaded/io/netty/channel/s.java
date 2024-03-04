package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* loaded from: classes5.dex */
public final class s {

    /* renamed from: l  reason: collision with root package name */
    static final int f43746l = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.transport.outboundBufferEntrySizeOverhead", 96);

    /* renamed from: m  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43747m = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(s.class);

    /* renamed from: n  reason: collision with root package name */
    private static final ug.n<ByteBuffer[]> f43748n = new a();

    /* renamed from: o  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<s> f43749o = AtomicLongFieldUpdater.newUpdater(s.class, com.huawei.hms.opendevice.i.TAG);

    /* renamed from: p  reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater<s> f43750p = AtomicIntegerFieldUpdater.newUpdater(s.class, "j");

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.e f43751a;

    /* renamed from: b  reason: collision with root package name */
    private d f43752b;

    /* renamed from: c  reason: collision with root package name */
    private d f43753c;

    /* renamed from: d  reason: collision with root package name */
    private d f43754d;

    /* renamed from: e  reason: collision with root package name */
    private int f43755e;

    /* renamed from: f  reason: collision with root package name */
    private int f43756f;

    /* renamed from: g  reason: collision with root package name */
    private long f43757g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f43758h;

    /* renamed from: i  reason: collision with root package name */
    private volatile long f43759i;

    /* renamed from: j  reason: collision with root package name */
    private volatile int f43760j;

    /* renamed from: k  reason: collision with root package name */
    private volatile Runnable f43761k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a extends ug.n<ByteBuffer[]> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public ByteBuffer[] e() throws Exception {
            return new ByteBuffer[1024];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w f43762a;

        b(w wVar) {
            this.f43762a = wVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f43762a.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f43764a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f43765b;

        c(Throwable th2, boolean z10) {
            this.f43764a = th2;
            this.f43765b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.e(this.f43764a, this.f43765b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: l  reason: collision with root package name */
        private static final io.grpc.netty.shaded.io.netty.util.internal.r<d> f43767l = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

        /* renamed from: a  reason: collision with root package name */
        private final r.a<d> f43768a;

        /* renamed from: b  reason: collision with root package name */
        d f43769b;

        /* renamed from: c  reason: collision with root package name */
        Object f43770c;

        /* renamed from: d  reason: collision with root package name */
        ByteBuffer[] f43771d;

        /* renamed from: e  reason: collision with root package name */
        ByteBuffer f43772e;

        /* renamed from: f  reason: collision with root package name */
        y f43773f;

        /* renamed from: g  reason: collision with root package name */
        long f43774g;

        /* renamed from: h  reason: collision with root package name */
        long f43775h;

        /* renamed from: i  reason: collision with root package name */
        int f43776i;

        /* renamed from: j  reason: collision with root package name */
        int f43777j;

        /* renamed from: k  reason: collision with root package name */
        boolean f43778k;

        /* loaded from: classes5.dex */
        static class a implements r.b<d> {
            a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
            /* renamed from: b */
            public d a(r.a<d> aVar) {
                return new d(aVar, null);
            }
        }

        /* synthetic */ d(r.a aVar, a aVar2) {
            this(aVar);
        }

        static d b(Object obj, int i9, long j10, y yVar) {
            d a10 = f43767l.a();
            a10.f43770c = obj;
            a10.f43776i = i9 + s.f43746l;
            a10.f43775h = j10;
            a10.f43773f = yVar;
            return a10;
        }

        int a() {
            if (this.f43778k) {
                return 0;
            }
            this.f43778k = true;
            int i9 = this.f43776i;
            io.grpc.netty.shaded.io.netty.util.r.c(this.f43770c);
            this.f43770c = kg.s0.f53902d;
            this.f43776i = 0;
            this.f43775h = 0L;
            this.f43774g = 0L;
            this.f43771d = null;
            this.f43772e = null;
            return i9;
        }

        void c() {
            this.f43769b = null;
            this.f43771d = null;
            this.f43772e = null;
            this.f43770c = null;
            this.f43773f = null;
            this.f43774g = 0L;
            this.f43775h = 0L;
            this.f43776i = 0;
            this.f43777j = -1;
            this.f43778k = false;
            this.f43768a.a(this);
        }

        d d() {
            d dVar = this.f43769b;
            c();
            return dVar;
        }

        private d(r.a<d> aVar) {
            this.f43777j = -1;
            this.f43768a = aVar;
        }
    }

    /* loaded from: classes5.dex */
    public interface e {
        boolean a(Object obj) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(io.grpc.netty.shaded.io.netty.channel.a aVar) {
        this.f43751a = aVar;
    }

    private void B(d dVar) {
        int i9 = this.f43755e - 1;
        this.f43755e = i9;
        if (i9 == 0) {
            this.f43752b = null;
            if (dVar == this.f43754d) {
                this.f43754d = null;
                this.f43753c = null;
                return;
            }
            return;
        }
        this.f43752b = dVar.f43769b;
    }

    private static void C(y yVar, Throwable th2) {
        io.grpc.netty.shaded.io.netty.util.internal.x.b(yVar, th2, yVar instanceof e1 ? null : f43747m);
    }

    private static void D(y yVar) {
        io.grpc.netty.shaded.io.netty.util.internal.x.c(yVar, null, yVar instanceof e1 ? null : f43747m);
    }

    private void E(boolean z10) {
        int i9;
        do {
            i9 = this.f43760j;
        } while (!f43750p.compareAndSet(this, i9, i9 | 1));
        if (i9 == 0) {
            l(z10);
        }
    }

    private void F(boolean z10) {
        int i9;
        int i10;
        do {
            i9 = this.f43760j;
            i10 = i9 & (-2);
        } while (!f43750p.compareAndSet(this, i9, i10));
        if (i9 == 0 || i10 != 0) {
            return;
        }
        l(z10);
    }

    private static long H(Object obj) {
        if (obj instanceof kg.j) {
            return ((kg.j) obj).P1();
        }
        if (obj instanceof p0) {
            return ((p0) obj).count();
        }
        if (obj instanceof kg.l) {
            return ((kg.l) obj).content().P1();
        }
        return -1L;
    }

    private void d() {
        int i9 = this.f43756f;
        if (i9 > 0) {
            this.f43756f = 0;
            Arrays.fill(f43748n.b(), 0, i9, (Object) null);
        }
    }

    private void i(long j10, boolean z10, boolean z11) {
        if (j10 == 0) {
            return;
        }
        long addAndGet = f43749o.addAndGet(this, -j10);
        if (!z11 || addAndGet >= this.f43751a.b0().d()) {
            return;
        }
        F(z10);
    }

    private static ByteBuffer[] j(ByteBuffer[] byteBufferArr, int i9, int i10) {
        int length = byteBufferArr.length;
        do {
            length <<= 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
        } while (i9 > length);
        ByteBuffer[] byteBufferArr2 = new ByteBuffer[length];
        System.arraycopy(byteBufferArr, 0, byteBufferArr2, 0, i10);
        return byteBufferArr2;
    }

    private void l(boolean z10) {
        w J = this.f43751a.J();
        if (z10) {
            Runnable runnable = this.f43761k;
            if (runnable == null) {
                runnable = new b(J);
                this.f43761k = runnable;
            }
            this.f43751a.a0().execute(runnable);
            return;
        }
        J.w();
    }

    private void o(long j10, boolean z10) {
        if (j10 != 0 && f43749o.addAndGet(this, j10) > this.f43751a.b0().f()) {
            E(z10);
        }
    }

    private boolean q(d dVar) {
        return (dVar == null || dVar == this.f43753c) ? false : true;
    }

    private static int u(d dVar, kg.j jVar, ByteBuffer[] byteBufferArr, int i9, int i10) {
        ByteBuffer byteBuffer;
        ByteBuffer[] byteBufferArr2 = dVar.f43771d;
        if (byteBufferArr2 == null) {
            byteBufferArr2 = jVar.t1();
            dVar.f43771d = byteBufferArr2;
        }
        for (int i11 = 0; i11 < byteBufferArr2.length && i9 < i10 && (byteBuffer = byteBufferArr2[i11]) != null; i11++) {
            if (byteBuffer.hasRemaining()) {
                byteBufferArr[i9] = byteBuffer;
                i9++;
            }
        }
        return i9;
    }

    private boolean z(Throwable th2, boolean z10) {
        d dVar = this.f43752b;
        if (dVar == null) {
            d();
            return false;
        }
        Object obj = dVar.f43770c;
        y yVar = dVar.f43773f;
        int i9 = dVar.f43776i;
        B(dVar);
        if (!dVar.f43778k) {
            io.grpc.netty.shaded.io.netty.util.r.c(obj);
            C(yVar, th2);
            i(i9, false, z10);
        }
        dVar.c();
        return true;
    }

    public void A(long j10) {
        while (true) {
            Object g10 = g();
            if (!(g10 instanceof kg.j)) {
                break;
            }
            kg.j jVar = (kg.j) g10;
            int Q1 = jVar.Q1();
            long K2 = jVar.K2() - Q1;
            if (K2 <= j10) {
                if (j10 != 0) {
                    w(K2);
                    j10 -= K2;
                }
                x();
            } else if (j10 != 0) {
                jVar.R1(Q1 + ((int) j10));
                w(j10);
            }
        }
        d();
    }

    public int G() {
        return this.f43755e;
    }

    public long I() {
        return this.f43759i;
    }

    public void a() {
        d dVar = this.f43753c;
        if (dVar != null) {
            if (this.f43752b == null) {
                this.f43752b = dVar;
            }
            do {
                this.f43755e++;
                if (!dVar.f43773f.g()) {
                    i(dVar.a(), false, true);
                }
                dVar = dVar.f43769b;
            } while (dVar != null);
            this.f43753c = null;
        }
    }

    public void b(Object obj, int i9, y yVar) {
        d b10 = d.b(obj, i9, H(obj), yVar);
        d dVar = this.f43754d;
        if (dVar == null) {
            this.f43752b = null;
        } else {
            dVar.f43769b = b10;
        }
        this.f43754d = b10;
        if (this.f43753c == null) {
            this.f43753c = b10;
        }
        o(b10.f43776i, false);
    }

    public long c() {
        long f10 = this.f43751a.b0().f() - this.f43759i;
        if (f10 <= 0 || !r()) {
            return 0L;
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(Throwable th2, boolean z10) {
        if (this.f43758h) {
            this.f43751a.a0().execute(new c(th2, z10));
            return;
        }
        this.f43758h = true;
        if (!z10 && this.f43751a.isOpen()) {
            throw new IllegalStateException("close() must be invoked after the channel is closed.");
        }
        if (p()) {
            try {
                for (d dVar = this.f43753c; dVar != null; dVar = dVar.d()) {
                    f43749o.addAndGet(this, -dVar.f43776i);
                    if (!dVar.f43778k) {
                        io.grpc.netty.shaded.io.netty.util.r.c(dVar.f43770c);
                        C(dVar.f43773f, th2);
                    }
                }
                this.f43758h = false;
                d();
                return;
            } catch (Throwable th3) {
                this.f43758h = false;
                throw th3;
            }
        }
        throw new IllegalStateException("close() must be invoked after all flushed writes are handled.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(ClosedChannelException closedChannelException) {
        e(closedChannelException, false);
    }

    public Object g() {
        d dVar = this.f43752b;
        if (dVar == null) {
            return null;
        }
        return dVar.f43770c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(long j10) {
        i(j10, true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(Throwable th2, boolean z10) {
        if (this.f43758h) {
            return;
        }
        try {
            this.f43758h = true;
            do {
            } while (z(th2, z10));
        } finally {
            this.f43758h = false;
        }
    }

    public void m(e eVar) throws Exception {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "processor");
        d dVar = this.f43752b;
        if (dVar == null) {
            return;
        }
        do {
            if (!dVar.f43778k && !eVar.a(dVar.f43770c)) {
                return;
            }
            dVar = dVar.f43769b;
        } while (q(dVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(long j10) {
        o(j10, true);
    }

    public boolean p() {
        return this.f43755e == 0;
    }

    public boolean r() {
        return this.f43760j == 0;
    }

    public int s() {
        return this.f43756f;
    }

    public long t() {
        return this.f43757g;
    }

    public ByteBuffer[] v(int i9, long j10) {
        kg.j jVar;
        int Q1;
        int K2;
        long j11 = 0;
        int i10 = 0;
        io.grpc.netty.shaded.io.netty.util.internal.k e10 = io.grpc.netty.shaded.io.netty.util.internal.k.e();
        ByteBuffer[] c10 = f43748n.c(e10);
        for (d dVar = this.f43752b; q(dVar); dVar = dVar.f43769b) {
            Object obj = dVar.f43770c;
            if (!(obj instanceof kg.j)) {
                break;
            }
            if (!dVar.f43778k && (K2 = jVar.K2() - (Q1 = (jVar = (kg.j) obj).Q1())) > 0) {
                long j12 = K2;
                if (j10 - j12 < j11 && i10 != 0) {
                    break;
                }
                j11 += j12;
                int i11 = dVar.f43777j;
                if (i11 == -1) {
                    i11 = jVar.s1();
                    dVar.f43777j = i11;
                }
                int min = Math.min(i9, i10 + i11);
                if (min > c10.length) {
                    c10 = j(c10, min, i10);
                    f43748n.l(e10, c10);
                }
                if (i11 == 1) {
                    ByteBuffer byteBuffer = dVar.f43772e;
                    if (byteBuffer == null) {
                        byteBuffer = jVar.e1(Q1, K2);
                        dVar.f43772e = byteBuffer;
                    }
                    c10[i10] = byteBuffer;
                    i10++;
                } else {
                    i10 = u(dVar, jVar, c10, i10, i9);
                }
                if (i10 >= i9) {
                    break;
                }
            }
        }
        this.f43756f = i10;
        this.f43757g = j11;
        return c10;
    }

    public void w(long j10) {
        d dVar = this.f43752b;
        y yVar = dVar.f43773f;
        long j11 = dVar.f43774g + j10;
        dVar.f43774g = j11;
        if (yVar instanceof x) {
            ((x) yVar).o0(j11, dVar.f43775h);
        }
    }

    public boolean x() {
        d dVar = this.f43752b;
        if (dVar == null) {
            d();
            return false;
        }
        Object obj = dVar.f43770c;
        y yVar = dVar.f43773f;
        int i9 = dVar.f43776i;
        B(dVar);
        if (!dVar.f43778k) {
            io.grpc.netty.shaded.io.netty.util.r.c(obj);
            D(yVar);
            i(i9, false, true);
        }
        dVar.c();
        return true;
    }

    public boolean y(Throwable th2) {
        return z(th2, true);
    }
}
