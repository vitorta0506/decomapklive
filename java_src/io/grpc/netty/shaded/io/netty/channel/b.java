package io.grpc.netty.shaded.io.netty.channel;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.grpc.netty.shaded.io.netty.channel.a;
import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.net.SocketAddress;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class b implements m, io.grpc.netty.shaded.io.netty.util.u {

    /* renamed from: k  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43499k = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(b.class);

    /* renamed from: l  reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater<b> f43500l = AtomicIntegerFieldUpdater.newUpdater(b.class, "j");

    /* renamed from: a  reason: collision with root package name */
    volatile b f43501a;

    /* renamed from: b  reason: collision with root package name */
    volatile b f43502b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f43503c;

    /* renamed from: d  reason: collision with root package name */
    private final String f43504d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f43505e;

    /* renamed from: f  reason: collision with root package name */
    private final int f43506f;

    /* renamed from: g  reason: collision with root package name */
    final ug.j f43507g;

    /* renamed from: h  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.i f43508h;

    /* renamed from: i  reason: collision with root package name */
    private k f43509i;

    /* renamed from: j  reason: collision with root package name */
    private volatile int f43510j = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f43511a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y f43512b;

        a(b bVar, y yVar) {
            this.f43511a = bVar;
            this.f43512b = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f43511a.X0(this.f43512b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.grpc.netty.shaded.io.netty.channel.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0477b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f43514a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y f43515b;

        RunnableC0477b(b bVar, y yVar) {
            this.f43514a = bVar;
            this.f43515b = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f43514a.U0(this.f43515b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.Q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.E0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.G0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class g implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f43522b;

        g(Throwable th2) {
            this.f43522b = th2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.Z0(this.f43522b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class h implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f43524b;

        h(Object obj) {
            this.f43524b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f1(this.f43524b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class i implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f43526b;

        i(Object obj) {
            this.f43526b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.K0(this.f43526b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f43527a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SocketAddress f43528b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SocketAddress f43529c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ y f43530d;

        j(b bVar, SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
            this.f43527a = bVar;
            this.f43528b = socketAddress;
            this.f43529c = socketAddress2;
            this.f43530d = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f43527a.V0(this.f43528b, this.f43529c, this.f43530d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        private final b f43532a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f43533b = new a();

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f43534c = new RunnableC0478b();

        /* renamed from: d  reason: collision with root package name */
        private final Runnable f43535d = new c();

        /* renamed from: e  reason: collision with root package name */
        private final Runnable f43536e = new d();

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.f43532a.L0();
            }
        }

        /* renamed from: io.grpc.netty.shaded.io.netty.channel.b$k$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0478b implements Runnable {
            RunnableC0478b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.f43532a.d1();
            }
        }

        /* loaded from: classes5.dex */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.f43532a.S0();
            }
        }

        /* loaded from: classes5.dex */
        class d implements Runnable {
            d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                k.this.f43532a.a1();
            }
        }

        k(b bVar) {
            this.f43532a = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class l implements Runnable {

        /* renamed from: f  reason: collision with root package name */
        private static final io.grpc.netty.shaded.io.netty.util.internal.r<l> f43541f = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

        /* renamed from: g  reason: collision with root package name */
        private static final boolean f43542g = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.transport.estimateSizeOnSubmit", true);

        /* renamed from: h  reason: collision with root package name */
        private static final int f43543h = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.transport.writeTaskSizeOverhead", 32);

        /* renamed from: a  reason: collision with root package name */
        private final r.a<l> f43544a;

        /* renamed from: b  reason: collision with root package name */
        private b f43545b;

        /* renamed from: c  reason: collision with root package name */
        private Object f43546c;

        /* renamed from: d  reason: collision with root package name */
        private y f43547d;

        /* renamed from: e  reason: collision with root package name */
        private int f43548e;

        /* loaded from: classes5.dex */
        static class a implements r.b<l> {
            a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
            /* renamed from: b */
            public l a(r.a<l> aVar) {
                return new l(aVar, null);
            }
        }

        /* synthetic */ l(r.a aVar, c cVar) {
            this(aVar);
        }

        private void c() {
            if (f43542g) {
                this.f43545b.f43503c.g1(this.f43548e & Integer.MAX_VALUE);
            }
        }

        protected static void d(l lVar, b bVar, Object obj, y yVar, boolean z10) {
            lVar.f43545b = bVar;
            lVar.f43546c = obj;
            lVar.f43547d = yVar;
            if (f43542g) {
                lVar.f43548e = bVar.f43503c.k1().size(obj) + f43543h;
                bVar.f43503c.u1(lVar.f43548e);
            } else {
                lVar.f43548e = 0;
            }
            if (z10) {
                lVar.f43548e |= Integer.MIN_VALUE;
            }
        }

        static l f(b bVar, Object obj, y yVar, boolean z10) {
            l a10 = f43541f.a();
            d(a10, bVar, obj, yVar, z10);
            return a10;
        }

        private void g() {
            this.f43545b = null;
            this.f43546c = null;
            this.f43547d = null;
            this.f43544a.a(this);
        }

        void b() {
            try {
                c();
            } finally {
                g();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c();
                if (this.f43548e >= 0) {
                    this.f43545b.g1(this.f43546c, this.f43547d);
                } else {
                    this.f43545b.i1(this.f43546c, this.f43547d);
                }
            } finally {
                g();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private l(r.a<? extends l> aVar) {
            this.f43544a = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(e0 e0Var, ug.j jVar, String str, Class<? extends io.grpc.netty.shaded.io.netty.channel.k> cls) {
        boolean z10 = false;
        this.f43504d = (String) io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "name");
        this.f43503c = e0Var;
        this.f43507g = jVar;
        this.f43506f = n.c(cls);
        this.f43505e = (jVar == null || (jVar instanceof ug.v)) ? true : true;
    }

    private b C0(int i9) {
        ug.j m02 = m0();
        b bVar = this;
        do {
            bVar = bVar.f43501a;
        } while (p1(bVar, m02, i9, TypedValues.PositionType.TYPE_POSITION_TYPE));
        return bVar;
    }

    private b D0(int i9) {
        ug.j m02 = m0();
        b bVar = this;
        do {
            bVar = bVar.f43502b;
        } while (p1(bVar, m02, i9, 130560));
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        if (c1()) {
            try {
                ((o) z()).D(this);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void F0(b bVar) {
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.E0();
        } else {
            m02.execute(new e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        if (c1()) {
            try {
                ((o) z()).t(this);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void H0(b bVar) {
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.G0();
        } else {
            m02.execute(new f());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void I0(b bVar, Object obj) {
        Object K1 = bVar.f43503c.K1(io.grpc.netty.shaded.io.netty.util.internal.s.h(obj, "msg"), bVar);
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.K0(K1);
        } else {
            m02.execute(new i(K1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0(Object obj) {
        if (c1()) {
            try {
                ((o) z()).h(this, obj);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        p(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0() {
        if (c1()) {
            try {
                ((o) z()).Z(this);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void M0(b bVar) {
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.L0();
            return;
        }
        k kVar = bVar.f43509i;
        if (kVar == null) {
            kVar = new k(bVar);
            bVar.f43509i = kVar;
        }
        m02.execute(kVar.f43533b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        if (c1()) {
            try {
                ((o) z()).r(this);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void P0(b bVar) {
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.N0();
        } else {
            m02.execute(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        if (c1()) {
            try {
                ((o) z()).Y(this);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void R0(b bVar) {
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.Q0();
        } else {
            m02.execute(new d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0() {
        if (c1()) {
            try {
                ((o) z()).C(this);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void T0(b bVar) {
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.S0();
            return;
        }
        k kVar = bVar.f43509i;
        if (kVar == null) {
            kVar = new k(bVar);
            bVar.f43509i = kVar;
        }
        m02.execute(kVar.f43535d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U0(y yVar) {
        if (c1()) {
            try {
                ((t) z()).l(this, yVar);
                return;
            } catch (Throwable th2) {
                k1(th2, yVar);
                return;
            }
        }
        L(yVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
        if (c1()) {
            try {
                ((t) z()).V(this, socketAddress, socketAddress2, yVar);
                return;
            } catch (Throwable th2) {
                k1(th2, yVar);
                return;
            }
        }
        Q(socketAddress, socketAddress2, yVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X0(y yVar) {
        if (c1()) {
            try {
                ((t) z()).j(this, yVar);
                return;
            } catch (Throwable th2) {
                k1(th2, yVar);
                return;
            }
        }
        M(yVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Y0(b bVar, Throwable th2) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(th2, "cause");
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.Z0(th2);
            return;
        }
        try {
            m02.execute(new g(th2));
        } catch (Throwable th3) {
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar2 = f43499k;
            if (bVar2.isWarnEnabled()) {
                bVar2.warn("Failed to submit an exceptionCaught() event.", th3);
                bVar2.warn("The exceptionCaught() event that was failed to submit was:", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0(Throwable th2) {
        if (c1()) {
            try {
                z().a(this, th2);
                return;
            } catch (Throwable th3) {
                io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f43499k;
                if (bVar.isDebugEnabled()) {
                    bVar.debug("An exception {}was thrown by a user handler's exceptionCaught() method while handling the following exception:", io.grpc.netty.shaded.io.netty.util.internal.e0.e(th3), th2);
                    return;
                } else if (bVar.isWarnEnabled()) {
                    bVar.warn("An exception '{}' [enable DEBUG level for full stacktrace] was thrown by a user handler's exceptionCaught() method while handling the following exception:", th3, th2);
                    return;
                } else {
                    return;
                }
            }
        }
        v(th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a1() {
        if (c1()) {
            b1();
        } else {
            flush();
        }
    }

    private void b1() {
        try {
            ((t) z()).n(this);
        } catch (Throwable th2) {
            Z0(th2);
        }
    }

    private boolean c1() {
        int i9 = this.f43510j;
        if (i9 != 2) {
            return !this.f43505e && i9 == 1;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1() {
        if (c1()) {
            try {
                ((t) z()).o(this);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        read();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e1(b bVar, Object obj) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(obj, "event");
        ug.j m02 = bVar.m0();
        if (m02.Y()) {
            bVar.f1(obj);
        } else {
            m02.execute(new h(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f1(Object obj) {
        if (c1()) {
            try {
                ((o) z()).X(this, obj);
                return;
            } catch (Throwable th2) {
                Z0(th2);
                return;
            }
        }
        s(obj);
    }

    private void h1(Object obj, y yVar) {
        try {
            ((t) z()).e(this, obj, yVar);
        } catch (Throwable th2) {
            k1(th2, yVar);
        }
    }

    private boolean j1(y yVar, boolean z10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "promise");
        if (yVar.isDone()) {
            if (yVar.isCancelled()) {
                return true;
            }
            throw new IllegalArgumentException("promise already done: " + yVar);
        } else if (yVar.d() == d()) {
            if (yVar.getClass() == f0.class) {
                return false;
            }
            if (!z10 && (yVar instanceof e1)) {
                throw new IllegalArgumentException(io.grpc.netty.shaded.io.netty.util.internal.b0.l(e1.class) + " not allowed for this operation");
            } else if (yVar instanceof a.e) {
                throw new IllegalArgumentException(io.grpc.netty.shaded.io.netty.util.internal.b0.l(a.e.class) + " not allowed in a pipeline");
            } else {
                return false;
            }
        } else {
            throw new IllegalArgumentException(String.format("promise.channel does not match: %s (expected: %s)", yVar.d(), d()));
        }
    }

    private static void k1(Throwable th2, y yVar) {
        io.grpc.netty.shaded.io.netty.util.internal.x.b(yVar, th2, yVar instanceof e1 ? null : f43499k);
    }

    private static boolean l1(ug.j jVar, Runnable runnable, y yVar, Object obj, boolean z10) {
        if (z10) {
            try {
                if (jVar instanceof ug.a) {
                    ((ug.a) jVar).d(runnable);
                    return true;
                }
            } catch (Throwable th2) {
                if (obj != null) {
                    try {
                        io.grpc.netty.shaded.io.netty.util.r.a(obj);
                    } catch (Throwable th3) {
                        yVar.u(th2);
                        throw th3;
                    }
                }
                yVar.u(th2);
                return false;
            }
        }
        jVar.execute(runnable);
        return true;
    }

    private static boolean p1(b bVar, ug.j jVar, int i9, int i10) {
        return ((i10 | i9) & bVar.f43506f) == 0 || (bVar.m0() == jVar && (bVar.f43506f & i9) == 0);
    }

    private void q1(Object obj, boolean z10, y yVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(obj, "msg");
        try {
            if (j1(yVar, true)) {
                io.grpc.netty.shaded.io.netty.util.r.a(obj);
                return;
            }
            b D0 = D0(z10 ? 98304 : 32768);
            Object K1 = this.f43503c.K1(obj, D0);
            ug.j m02 = D0.m0();
            if (m02.Y()) {
                if (z10) {
                    D0.i1(K1, yVar);
                    return;
                } else {
                    D0.g1(K1, yVar);
                    return;
                }
            }
            l f10 = l.f(D0, K1, yVar, z10);
            if (l1(m02, f10, yVar, K1, !z10)) {
                return;
            }
            f10.b();
        } catch (RuntimeException e10) {
            io.grpc.netty.shaded.io.netty.util.r.a(obj);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void A0() throws Exception {
        try {
            if (this.f43510j == 2) {
                z().E(this);
            }
        } finally {
            o1();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i B(Throwable th2) {
        return new o0(d(), m0(), th2);
    }

    public io.grpc.netty.shaded.io.netty.channel.i B0(SocketAddress socketAddress, y yVar) {
        return Q(socketAddress, null, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public y F() {
        return new f0(d(), m0());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i I(SocketAddress socketAddress, SocketAddress socketAddress2) {
        return Q(socketAddress, socketAddress2, F());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public w J() {
        return this.f43503c;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i L(y yVar) {
        if (j1(yVar, false)) {
            return yVar;
        }
        b D0 = D0(4096);
        ug.j m02 = D0.m0();
        if (m02.Y()) {
            D0.U0(yVar);
        } else {
            l1(m02, new RunnableC0477b(D0, yVar), yVar, null, false);
        }
        return yVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i M(y yVar) {
        if (!d().R().b()) {
            return L(yVar);
        }
        if (j1(yVar, false)) {
            return yVar;
        }
        b D0 = D0(2048);
        ug.j m02 = D0.m0();
        if (m02.Y()) {
            D0.X0(yVar);
        } else {
            l1(m02, new a(D0, yVar), yVar, null, false);
        }
        return yVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public y N() {
        return d().N();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public kg.k P() {
        return d().b0().a();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i Q(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(socketAddress, "remoteAddress");
        if (j1(yVar, false)) {
            return yVar;
        }
        b D0 = D0(1024);
        ug.j m02 = D0.m0();
        if (m02.Y()) {
            D0.V0(socketAddress, socketAddress2, yVar);
        } else {
            l1(m02, new j(D0, socketAddress, socketAddress2, yVar), yVar, null, false);
        }
        return yVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.u
    public String b() {
        return '\'' + this.f43504d + "' will handle the message from this point.";
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i c(Object obj, y yVar) {
        q1(obj, false, yVar);
        return yVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i c0(Object obj) {
        return c(obj, F());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i close() {
        return L(F());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public io.grpc.netty.shaded.io.netty.channel.e d() {
        return this.f43503c.d();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i f(SocketAddress socketAddress) {
        return B0(socketAddress, F());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public boolean f0() {
        return this.f43510j == 3;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m flush() {
        b D0 = D0(65536);
        ug.j m02 = D0.m0();
        if (m02.Y()) {
            D0.a1();
        } else {
            k kVar = D0.f43509i;
            if (kVar == null) {
                kVar = new k(D0);
                D0.f43509i = kVar;
            }
            l1(m02, kVar.f43536e, d().N(), null, false);
        }
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i g(Object obj) {
        return u(obj, F());
    }

    void g1(Object obj, y yVar) {
        if (c1()) {
            h1(obj, yVar);
        } else {
            c(obj, yVar);
        }
    }

    void i1(Object obj, y yVar) {
        if (c1()) {
            h1(obj, yVar);
            b1();
            return;
        }
        u(obj, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m k() {
        M0(C0(64));
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i m() {
        io.grpc.netty.shaded.io.netty.channel.i iVar = this.f43508h;
        if (iVar == null) {
            d1 d1Var = new d1(d(), m0());
            this.f43508h = d1Var;
            return d1Var;
        }
        return iVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public ug.j m0() {
        ug.j jVar = this.f43507g;
        return jVar == null ? d().a0() : jVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m1() {
        int i9;
        do {
            i9 = this.f43510j;
            if (i9 == 3) {
                return false;
            }
        } while (!f43500l.compareAndSet(this, i9, 2));
        return true;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m n0() {
        H0(C0(16));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n1() {
        f43500l.compareAndSet(this, 0, 1);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public String name() {
        return this.f43504d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o1() {
        this.f43510j = 3;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m p(Object obj) {
        I0(C0(32), obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m q() {
        F0(C0(8));
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m read() {
        b D0 = D0(16384);
        ug.j m02 = D0.m0();
        if (m02.Y()) {
            D0.d1();
        } else {
            k kVar = D0.f43509i;
            if (kVar == null) {
                kVar = new k(D0);
                D0.f43509i = kVar;
            }
            m02.execute(kVar.f43534c);
        }
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m s(Object obj) {
        e1(C0(128), obj);
        return this;
    }

    public String toString() {
        return io.grpc.netty.shaded.io.netty.util.internal.b0.l(m.class) + '(' + this.f43504d + ", " + d() + ')';
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public io.grpc.netty.shaded.io.netty.channel.i u(Object obj, y yVar) {
        q1(obj, true, yVar);
        return yVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m v(Throwable th2) {
        Y0(C0(1), th2);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m w() {
        T0(C0(256));
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m x() {
        R0(C0(4));
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m
    public m y() {
        P0(C0(2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z0() throws Exception {
        if (m1()) {
            z().A(this);
        }
    }
}
