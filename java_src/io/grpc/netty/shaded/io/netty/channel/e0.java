package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.channel.r0;
import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.WeakHashMap;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes5.dex */
public class e0 implements w {

    /* renamed from: l  reason: collision with root package name */
    static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43580l = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(e0.class);

    /* renamed from: m  reason: collision with root package name */
    private static final String f43581m = r1(g.class);

    /* renamed from: n  reason: collision with root package name */
    private static final String f43582n = r1(k.class);

    /* renamed from: o  reason: collision with root package name */
    private static final ug.n<Map<Class<?>, String>> f43583o = new a();

    /* renamed from: p  reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater<e0, r0.a> f43584p = AtomicReferenceFieldUpdater.newUpdater(e0.class, r0.a.class, "h");

    /* renamed from: a  reason: collision with root package name */
    final io.grpc.netty.shaded.io.netty.channel.b f43585a;

    /* renamed from: b  reason: collision with root package name */
    final io.grpc.netty.shaded.io.netty.channel.b f43586b;

    /* renamed from: c  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.e f43587c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.i f43588d;

    /* renamed from: e  reason: collision with root package name */
    private final e1 f43589e;

    /* renamed from: g  reason: collision with root package name */
    private Map<ug.l, ug.j> f43591g;

    /* renamed from: h  reason: collision with root package name */
    private volatile r0.a f43592h;

    /* renamed from: j  reason: collision with root package name */
    private i f43594j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f43595k;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f43590f = ResourceLeakDetector.g();

    /* renamed from: i  reason: collision with root package name */
    private boolean f43593i = true;

    /* loaded from: classes5.dex */
    static class a extends ug.n<Map<Class<?>, String>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public Map<Class<?>, String> e() {
            return new WeakHashMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.b f43596a;

        b(io.grpc.netty.shaded.io.netty.channel.b bVar) {
            this.f43596a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.Y0(this.f43596a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.b f43598a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.b f43599b;

        c(io.grpc.netty.shaded.io.netty.channel.b bVar, io.grpc.netty.shaded.io.netty.channel.b bVar2) {
            this.f43598a = bVar;
            this.f43599b = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.R0(this.f43598a);
            e0.this.Y0(this.f43599b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.b f43601a;

        d(io.grpc.netty.shaded.io.netty.channel.b bVar) {
            this.f43601a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.j1(this.f43601a, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.b f43603a;

        e(io.grpc.netty.shaded.io.netty.channel.b bVar) {
            this.f43603a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.i1(Thread.currentThread(), this.f43603a, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.b f43605a;

        f(io.grpc.netty.shaded.io.netty.channel.b bVar) {
            this.f43605a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.R0(this.f43605a);
        }
    }

    /* loaded from: classes5.dex */
    final class g extends io.grpc.netty.shaded.io.netty.channel.b implements t, o {

        /* renamed from: m  reason: collision with root package name */
        private final e.a f43607m;

        g(e0 e0Var) {
            super(e0Var, null, e0.f43581m, g.class);
            this.f43607m = e0Var.d().k0();
            m1();
        }

        private void r1() {
            if (e0.this.f43587c.b0().l()) {
                e0.this.f43587c.read();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.k
        public void A(m mVar) {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void C(m mVar) {
            mVar.w();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void D(m mVar) {
            mVar.q();
            r1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.k
        public void E(m mVar) {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void V(m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
            this.f43607m.Q(socketAddress, socketAddress2, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void X(m mVar, Object obj) {
            mVar.s(obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void Y(m mVar) {
            mVar.x();
            if (e0.this.f43587c.isOpen()) {
                return;
            }
            e0.this.h1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void Z(m mVar) {
            mVar.k();
            r1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
        public void a(m mVar, Throwable th2) {
            mVar.v(th2);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void e(m mVar, Object obj, y yVar) {
            this.f43607m.c(obj, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void h(m mVar, Object obj) {
            mVar.p(obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void j(m mVar, y yVar) {
            this.f43607m.M(yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void l(m mVar, y yVar) {
            this.f43607m.L(yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void n(m mVar) {
            this.f43607m.flush();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void o(m mVar) {
            this.f43607m.T();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void r(m mVar) {
            e0.this.v1();
            mVar.y();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void t(m mVar) {
            mVar.n0();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public io.grpc.netty.shaded.io.netty.channel.k z() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class h extends i {
        h(io.grpc.netty.shaded.io.netty.channel.b bVar) {
            super(bVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e0.i
        void b() {
            ug.j m02 = this.f43610a.m0();
            if (m02.Y()) {
                e0.this.R0(this.f43610a);
                return;
            }
            try {
                m02.execute(this);
            } catch (RejectedExecutionException e10) {
                if (e0.f43580l.isWarnEnabled()) {
                    e0.f43580l.warn("Can't invoke handlerAdded() as the EventExecutor {} rejected it, removing handler {}.", m02, this.f43610a.name(), e10);
                }
                e0.this.Q0(this.f43610a);
                this.f43610a.o1();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.R0(this.f43610a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.grpc.netty.shaded.io.netty.channel.b f43610a;

        /* renamed from: b  reason: collision with root package name */
        i f43611b;

        i(io.grpc.netty.shaded.io.netty.channel.b bVar) {
            this.f43610a = bVar;
        }

        abstract void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class j extends i {
        j(io.grpc.netty.shaded.io.netty.channel.b bVar) {
            super(bVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e0.i
        void b() {
            ug.j m02 = this.f43610a.m0();
            if (m02.Y()) {
                e0.this.Y0(this.f43610a);
                return;
            }
            try {
                m02.execute(this);
            } catch (RejectedExecutionException e10) {
                if (e0.f43580l.isWarnEnabled()) {
                    e0.f43580l.warn("Can't invoke handlerRemoved() as the EventExecutor {} rejected it, removing handler {}.", m02, this.f43610a.name(), e10);
                }
                this.f43610a.o1();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.Y0(this.f43610a);
        }
    }

    /* loaded from: classes5.dex */
    final class k extends io.grpc.netty.shaded.io.netty.channel.b implements o {
        k(e0 e0Var) {
            super(e0Var, null, e0.f43582n, k.class);
            m1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.k
        public void A(m mVar) {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void C(m mVar) {
            e0.this.x1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void D(m mVar) {
            e0.this.y1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.k
        public void E(m mVar) {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void X(m mVar, Object obj) {
            e0.this.E1(obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void Y(m mVar) {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void Z(m mVar) {
            e0.this.A1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void a(m mVar, Throwable th2) {
            e0.this.B1(th2);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void h(m mVar, Object obj) {
            e0.this.C1(mVar, obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void r(m mVar) {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void t(m mVar) {
            e0.this.z1();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public io.grpc.netty.shaded.io.netty.channel.k z() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e0(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        this.f43587c = (io.grpc.netty.shaded.io.netty.channel.e) io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "channel");
        this.f43588d = new d1(eVar, null);
        this.f43589e = new e1(eVar, true);
        k kVar = new k(this);
        this.f43586b = kVar;
        g gVar = new g(this);
        this.f43585a = gVar;
        gVar.f43501a = kVar;
        kVar.f43502b = gVar;
    }

    private static void C0(io.grpc.netty.shaded.io.netty.channel.b bVar, io.grpc.netty.shaded.io.netty.channel.b bVar2) {
        bVar2.f43502b = bVar;
        bVar2.f43501a = bVar.f43501a;
        bVar.f43501a.f43502b = bVar2;
        bVar.f43501a = bVar2;
    }

    private static void F0(io.grpc.netty.shaded.io.netty.channel.b bVar, io.grpc.netty.shaded.io.netty.channel.b bVar2) {
        bVar2.f43502b = bVar.f43502b;
        bVar2.f43501a = bVar;
        bVar.f43502b.f43501a = bVar2;
        bVar.f43502b = bVar2;
    }

    private io.grpc.netty.shaded.io.netty.channel.b G1(io.grpc.netty.shaded.io.netty.channel.b bVar) {
        synchronized (this) {
            Q0(bVar);
            if (!this.f43595k) {
                X0(bVar, false);
                return bVar;
            }
            ug.j m02 = bVar.m0();
            if (!m02.Y()) {
                m02.execute(new b(bVar));
                return bVar;
            }
            Y0(bVar);
            return bVar;
        }
    }

    private io.grpc.netty.shaded.io.netty.channel.k H1(io.grpc.netty.shaded.io.netty.channel.b bVar, String str, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        synchronized (this) {
            b1(kVar);
            if (str == null) {
                str = q1(kVar);
            } else if (!bVar.name().equals(str)) {
                a1(str);
            }
            io.grpc.netty.shaded.io.netty.channel.b w12 = w1(bVar.f43507g, str, kVar);
            I1(bVar, w12);
            if (!this.f43595k) {
                X0(w12, true);
                X0(bVar, false);
                return bVar.z();
            }
            ug.j m02 = bVar.m0();
            if (!m02.Y()) {
                m02.execute(new c(w12, bVar));
                return bVar.z();
            }
            R0(w12);
            Y0(bVar);
            return bVar.z();
        }
    }

    private static void I1(io.grpc.netty.shaded.io.netty.channel.b bVar, io.grpc.netty.shaded.io.netty.channel.b bVar2) {
        io.grpc.netty.shaded.io.netty.channel.b bVar3 = bVar.f43502b;
        io.grpc.netty.shaded.io.netty.channel.b bVar4 = bVar.f43501a;
        bVar2.f43502b = bVar3;
        bVar2.f43501a = bVar4;
        bVar3.f43501a = bVar2;
        bVar4.f43502b = bVar2;
        bVar.f43502b = bVar2;
        bVar.f43501a = bVar2;
    }

    private void P0(io.grpc.netty.shaded.io.netty.channel.b bVar) {
        io.grpc.netty.shaded.io.netty.channel.b bVar2 = this.f43586b.f43502b;
        bVar.f43502b = bVar2;
        bVar.f43501a = this.f43586b;
        bVar2.f43501a = bVar;
        this.f43586b.f43502b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Q0(io.grpc.netty.shaded.io.netty.channel.b bVar) {
        io.grpc.netty.shaded.io.netty.channel.b bVar2 = bVar.f43502b;
        io.grpc.netty.shaded.io.netty.channel.b bVar3 = bVar.f43501a;
        bVar2.f43501a = bVar3;
        bVar3.f43502b = bVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0(io.grpc.netty.shaded.io.netty.channel.b bVar) {
        try {
            bVar.z0();
        } catch (Throwable th2) {
            boolean z10 = false;
            try {
                Q0(bVar);
                bVar.A0();
                z10 = true;
            } catch (Throwable th3) {
                io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar2 = f43580l;
                if (bVar2.isWarnEnabled()) {
                    bVar2.warn("Failed to remove a handler: " + bVar.name(), th3);
                }
            }
            if (z10) {
                v(new ChannelPipelineException(bVar.z().getClass().getName() + ".handlerAdded() has thrown an exception; removed.", th2));
                return;
            }
            v(new ChannelPipelineException(bVar.z().getClass().getName() + ".handlerAdded() has thrown an exception; also failed to remove.", th2));
        }
    }

    private void S0() {
        i iVar;
        synchronized (this) {
            this.f43595k = true;
            this.f43594j = null;
        }
        for (iVar = this.f43594j; iVar != null; iVar = iVar.f43611b) {
            iVar.b();
        }
    }

    private void T0(io.grpc.netty.shaded.io.netty.channel.b bVar, ug.j jVar) {
        bVar.n1();
        jVar.execute(new f(bVar));
    }

    private void X0(io.grpc.netty.shaded.io.netty.channel.b bVar, boolean z10) {
        i hVar = z10 ? new h(bVar) : new j(bVar);
        i iVar = this.f43594j;
        if (iVar == null) {
            this.f43594j = hVar;
            return;
        }
        while (true) {
            i iVar2 = iVar.f43611b;
            if (iVar2 == null) {
                iVar.f43611b = hVar;
                return;
            }
            iVar = iVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0(io.grpc.netty.shaded.io.netty.channel.b bVar) {
        try {
            bVar.A0();
        } catch (Throwable th2) {
            v(new ChannelPipelineException(bVar.z().getClass().getName() + ".handlerRemoved() has thrown an exception.", th2));
        }
    }

    private void a1(String str) {
        if (f1(str) == null) {
            return;
        }
        throw new IllegalArgumentException("Duplicate handler name: " + str);
    }

    private static void b1(io.grpc.netty.shaded.io.netty.channel.k kVar) {
        if (kVar instanceof l) {
            l lVar = (l) kVar;
            if (!lVar.q() && lVar.f43714a) {
                throw new ChannelPipelineException(lVar.getClass().getName() + " is not a @Sharable handler, so can't be added or removed multiple times.");
            }
            lVar.f43714a = true;
        }
    }

    private ug.j d1(ug.l lVar) {
        if (lVar == null) {
            return null;
        }
        Boolean bool = (Boolean) this.f43587c.b0().b(r.J);
        if (bool != null && !bool.booleanValue()) {
            return lVar.next();
        }
        Map map = this.f43591g;
        if (map == null) {
            map = new IdentityHashMap(4);
            this.f43591g = map;
        }
        ug.j jVar = (ug.j) map.get(lVar);
        if (jVar == null) {
            ug.j next = lVar.next();
            map.put(lVar, next);
            return next;
        }
        return jVar;
    }

    private io.grpc.netty.shaded.io.netty.channel.b f1(String str) {
        for (io.grpc.netty.shaded.io.netty.channel.b bVar = this.f43585a.f43501a; bVar != this.f43586b; bVar = bVar.f43501a) {
            if (bVar.name().equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h1() {
        j1(this.f43585a.f43501a, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i1(Thread thread, io.grpc.netty.shaded.io.netty.channel.b bVar, boolean z10) {
        io.grpc.netty.shaded.io.netty.channel.b bVar2 = this.f43585a;
        while (bVar != bVar2) {
            ug.j m02 = bVar.m0();
            if (!z10 && !m02.L0(thread)) {
                m02.execute(new e(bVar));
                return;
            }
            Q0(bVar);
            Y0(bVar);
            bVar = bVar.f43502b;
            z10 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1(io.grpc.netty.shaded.io.netty.channel.b bVar, boolean z10) {
        Thread currentThread = Thread.currentThread();
        io.grpc.netty.shaded.io.netty.channel.b bVar2 = this.f43586b;
        while (bVar != bVar2) {
            ug.j m02 = bVar.m0();
            if (!z10 && !m02.L0(currentThread)) {
                m02.execute(new d(bVar));
                return;
            } else {
                bVar = bVar.f43501a;
                z10 = false;
            }
        }
        i1(currentThread, bVar2.f43502b, z10);
    }

    private String l1(String str, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        if (str == null) {
            return q1(kVar);
        }
        a1(str);
        return str;
    }

    private String q1(io.grpc.netty.shaded.io.netty.channel.k kVar) {
        Map<Class<?>, String> b10 = f43583o.b();
        Class<?> cls = kVar.getClass();
        String str = b10.get(cls);
        if (str == null) {
            str = r1(cls);
            b10.put(cls, str);
        }
        if (f1(str) != null) {
            int i9 = 1;
            String substring = str.substring(0, str.length() - 1);
            while (true) {
                str = substring + i9;
                if (f1(str) == null) {
                    break;
                }
                i9++;
            }
        }
        return str;
    }

    private static String r1(Class<?> cls) {
        return io.grpc.netty.shaded.io.netty.util.internal.b0.l(cls) + "#0";
    }

    private io.grpc.netty.shaded.io.netty.channel.b s1(io.grpc.netty.shaded.io.netty.channel.k kVar) {
        io.grpc.netty.shaded.io.netty.channel.b bVar = (io.grpc.netty.shaded.io.netty.channel.b) W0(kVar);
        if (bVar != null) {
            return bVar;
        }
        throw new NoSuchElementException(kVar.getClass().getName());
    }

    private io.grpc.netty.shaded.io.netty.channel.b t1(String str) {
        io.grpc.netty.shaded.io.netty.channel.b bVar = (io.grpc.netty.shaded.io.netty.channel.b) e1(str);
        if (bVar != null) {
            return bVar;
        }
        throw new NoSuchElementException(str);
    }

    private io.grpc.netty.shaded.io.netty.channel.b w1(ug.l lVar, String str, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        return new d0(this, d1(lVar), str, kVar);
    }

    public final w A0(ug.l lVar, String str, String str2, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        synchronized (this) {
            b1(kVar);
            String l12 = l1(str2, kVar);
            io.grpc.netty.shaded.io.netty.channel.b t12 = t1(str);
            io.grpc.netty.shaded.io.netty.channel.b w12 = w1(lVar, l12, kVar);
            C0(t12, w12);
            if (!this.f43595k) {
                w12.n1();
                X0(w12, true);
                return this;
            }
            ug.j m02 = w12.m0();
            if (!m02.Y()) {
                T0(w12, m02);
                return this;
            }
            R0(w12);
            return this;
        }
    }

    protected void A1() {
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final io.grpc.netty.shaded.io.netty.channel.i B(Throwable th2) {
        return new o0(this.f43587c, null, th2);
    }

    protected void B1(Throwable th2) {
        try {
            f43580l.warn("An exceptionCaught() event was fired, and it reached at the tail of the pipeline. It usually means the last handler in the pipeline did not handle the exception.", th2);
        } finally {
            io.grpc.netty.shaded.io.netty.util.r.a(th2);
        }
    }

    protected void C1(m mVar, Object obj) {
        D1(obj);
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f43580l;
        if (bVar.isDebugEnabled()) {
            bVar.debug("Discarded message pipeline : {}. Channel : {}.", mVar.J().names(), mVar.d());
        }
    }

    protected void D1(Object obj) {
        try {
            f43580l.debug("Discarded inbound message {} that reached at the tail of the pipeline. Please check your pipeline configuration.", obj);
        } finally {
            io.grpc.netty.shaded.io.netty.util.r.a(obj);
        }
    }

    public final w E0(ug.l lVar, String str, String str2, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        synchronized (this) {
            b1(kVar);
            String l12 = l1(str2, kVar);
            io.grpc.netty.shaded.io.netty.channel.b t12 = t1(str);
            io.grpc.netty.shaded.io.netty.channel.b w12 = w1(lVar, l12, kVar);
            F0(t12, w12);
            if (!this.f43595k) {
                w12.n1();
                X0(w12, true);
                return this;
            }
            ug.j m02 = w12.m0();
            if (!m02.Y()) {
                T0(w12, m02);
                return this;
            }
            R0(w12);
            return this;
        }
    }

    protected void E1(Object obj) {
        io.grpc.netty.shaded.io.netty.util.r.a(obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final y F() {
        return new f0(this.f43587c);
    }

    public final w F1() {
        this.f43586b.read();
        return this;
    }

    public final w G0(ug.l lVar, String str, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        synchronized (this) {
            b1(kVar);
            io.grpc.netty.shaded.io.netty.channel.b w12 = w1(lVar, l1(str, kVar), kVar);
            P0(w12);
            if (!this.f43595k) {
                w12.n1();
                X0(w12, true);
                return this;
            }
            ug.j m02 = w12.m0();
            if (!m02.Y()) {
                T0(w12, m02);
                return this;
            }
            R0(w12);
            return this;
        }
    }

    public final w H0(ug.l lVar, io.grpc.netty.shaded.io.netty.channel.k... kVarArr) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(kVarArr, "handlers");
        for (io.grpc.netty.shaded.io.netty.channel.k kVar : kVarArr) {
            if (kVar == null) {
                break;
            }
            G0(lVar, null, kVar);
        }
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final io.grpc.netty.shaded.io.netty.channel.i I(SocketAddress socketAddress, SocketAddress socketAddress2) {
        return this.f43586b.I(socketAddress, socketAddress2);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w J0(String str, String str2, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        return E0(null, str, str2, kVar);
    }

    public final Map<String, io.grpc.netty.shaded.io.netty.channel.k> J1() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (io.grpc.netty.shaded.io.netty.channel.b bVar = this.f43585a.f43501a; bVar != this.f43586b; bVar = bVar.f43501a) {
            linkedHashMap.put(bVar.name(), bVar.z());
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object K1(Object obj, io.grpc.netty.shaded.io.netty.channel.b bVar) {
        return this.f43590f ? io.grpc.netty.shaded.io.netty.util.r.d(obj, bVar) : obj;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final y N() {
        return this.f43589e;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w O0(io.grpc.netty.shaded.io.netty.channel.k kVar) {
        G1(s1(kVar));
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w U(io.grpc.netty.shaded.io.netty.channel.k... kVarArr) {
        return H0(null, kVarArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final m W(Class<? extends io.grpc.netty.shaded.io.netty.channel.k> cls) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(cls, "handlerType");
        for (io.grpc.netty.shaded.io.netty.channel.b bVar = this.f43585a.f43501a; bVar != null; bVar = bVar.f43501a) {
            if (cls.isAssignableFrom(bVar.z().getClass())) {
                return bVar;
            }
        }
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final m W0(io.grpc.netty.shaded.io.netty.channel.k kVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "handler");
        for (io.grpc.netty.shaded.io.netty.channel.b bVar = this.f43585a.f43501a; bVar != null; bVar = bVar.f43501a) {
            if (bVar.z() == kVar) {
                return bVar;
            }
        }
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final io.grpc.netty.shaded.io.netty.channel.i c(Object obj, y yVar) {
        return this.f43586b.c(obj, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final io.grpc.netty.shaded.io.netty.channel.i c0(Object obj) {
        return this.f43586b.c0(obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final io.grpc.netty.shaded.io.netty.channel.i close() {
        return this.f43586b.close();
    }

    public final io.grpc.netty.shaded.io.netty.channel.e d() {
        return this.f43587c;
    }

    public final m e1(String str) {
        return f1((String) io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "name"));
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final io.grpc.netty.shaded.io.netty.channel.i f(SocketAddress socketAddress) {
        return this.f43586b.f(socketAddress);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final io.grpc.netty.shaded.io.netty.channel.i g(Object obj) {
        return this.f43586b.g(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g1(long j10) {
        s S = this.f43587c.k0().S();
        if (S != null) {
            S.h(j10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final <T extends io.grpc.netty.shaded.io.netty.channel.k> T i(Class<T> cls) {
        m W = W(cls);
        if (W == null) {
            return null;
        }
        return (T) W.z();
    }

    @Override // java.lang.Iterable
    public final Iterator<Map.Entry<String, io.grpc.netty.shaded.io.netty.channel.k>> iterator() {
        return J1().entrySet().iterator();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w k() {
        io.grpc.netty.shaded.io.netty.channel.b.M0(this.f43585a);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final r0.a k1() {
        r0.a aVar = this.f43592h;
        if (aVar == null) {
            r0.a a10 = this.f43587c.b0().j().a();
            return !androidx.concurrent.futures.a.a(f43584p, this, null, a10) ? this.f43592h : a10;
        }
        return aVar;
    }

    public final w m1() {
        io.grpc.netty.shaded.io.netty.channel.b.H0(this.f43585a);
        return this;
    }

    public final w n1() {
        io.grpc.netty.shaded.io.netty.channel.b.P0(this.f43585a);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final List<String> names() {
        ArrayList arrayList = new ArrayList();
        for (io.grpc.netty.shaded.io.netty.channel.b bVar = this.f43585a.f43501a; bVar != null; bVar = bVar.f43501a) {
            arrayList.add(bVar.name());
        }
        return arrayList;
    }

    public final w o1() {
        io.grpc.netty.shaded.io.netty.channel.b.R0(this.f43585a);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w p(Object obj) {
        io.grpc.netty.shaded.io.netty.channel.b.I0(this.f43585a, obj);
        return this;
    }

    public final w p1() {
        this.f43586b.flush();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w q() {
        io.grpc.netty.shaded.io.netty.channel.b.F0(this.f43585a);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final io.grpc.netty.shaded.io.netty.channel.k remove(String str) {
        return G1(t1(str)).z();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w s(Object obj) {
        io.grpc.netty.shaded.io.netty.channel.b.e1(this.f43585a, obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final io.grpc.netty.shaded.io.netty.channel.k t0(String str, String str2, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        return H1(t1(str), str2, kVar);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.m(this));
        sb2.append('{');
        io.grpc.netty.shaded.io.netty.channel.b bVar = this.f43585a.f43501a;
        while (bVar != this.f43586b) {
            sb2.append('(');
            sb2.append(bVar.name());
            sb2.append(" = ");
            sb2.append(bVar.z().getClass().getName());
            sb2.append(')');
            bVar = bVar.f43501a;
            if (bVar == this.f43586b) {
                break;
            }
            sb2.append(", ");
        }
        sb2.append('}');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void u1(long j10) {
        s S = this.f43587c.k0().S();
        if (S != null) {
            S.n(j10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w v(Throwable th2) {
        io.grpc.netty.shaded.io.netty.channel.b.Y0(this.f43585a, th2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void v1() {
        if (this.f43593i) {
            this.f43593i = false;
            S0();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w w() {
        io.grpc.netty.shaded.io.netty.channel.b.T0(this.f43585a);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.w
    public final w x0(String str, String str2, io.grpc.netty.shaded.io.netty.channel.k kVar) {
        return A0(null, str, str2, kVar);
    }

    protected void x1() {
    }

    protected void y1() {
    }

    protected void z1() {
    }
}
