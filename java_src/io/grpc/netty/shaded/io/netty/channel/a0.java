package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.o;
import io.grpc.netty.shaded.io.netty.channel.t;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public class a0<I extends o, O extends t> extends g {

    /* renamed from: g  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43487g = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(a0.class);

    /* renamed from: b  reason: collision with root package name */
    private b f43488b;

    /* renamed from: c  reason: collision with root package name */
    private b f43489c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f43490d;

    /* renamed from: e  reason: collision with root package name */
    private I f43491e;

    /* renamed from: f  reason: collision with root package name */
    private O f43492f;

    /* loaded from: classes5.dex */
    class a extends b {
        a(m mVar, k kVar) {
            super(mVar, kVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.a0.b, io.grpc.netty.shaded.io.netty.channel.m
        public m v(Throwable th2) {
            if (!a0.this.f43489c.f43496c) {
                try {
                    a0.this.f43492f.a(a0.this.f43489c, th2);
                } catch (Throwable th3) {
                    if (a0.f43487g.isDebugEnabled()) {
                        a0.f43487g.debug("An exception {}was thrown by a user handler's exceptionCaught() method while handling the following exception:", io.grpc.netty.shaded.io.netty.util.internal.e0.e(th3), th2);
                    } else if (a0.f43487g.isWarnEnabled()) {
                        a0.f43487g.warn("An exception '{}' [enable DEBUG level for full stacktrace] was thrown by a user handler's exceptionCaught() method while handling the following exception:", th3, th2);
                    }
                }
            } else {
                super.v(th2);
            }
            return this;
        }
    }

    /* loaded from: classes5.dex */
    private static class b implements m {

        /* renamed from: a  reason: collision with root package name */
        private final m f43494a;

        /* renamed from: b  reason: collision with root package name */
        private final k f43495b;

        /* renamed from: c  reason: collision with root package name */
        boolean f43496c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.e();
            }
        }

        b(m mVar, k kVar) {
            this.f43494a = mVar;
            this.f43495b = kVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            if (this.f43496c) {
                return;
            }
            this.f43496c = true;
            try {
                this.f43495b.E(this);
            } catch (Throwable th2) {
                v(new ChannelPipelineException(this.f43495b.getClass().getName() + ".handlerRemoved() has thrown an exception.", th2));
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i B(Throwable th2) {
            return this.f43494a.B(th2);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public y F() {
            return this.f43494a.F();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public w J() {
            return this.f43494a.J();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i L(y yVar) {
            return this.f43494a.L(yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i M(y yVar) {
            return this.f43494a.M(yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public y N() {
            return this.f43494a.N();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public kg.k P() {
            return this.f43494a.P();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i Q(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
            return this.f43494a.Q(socketAddress, socketAddress2, yVar);
        }

        final void b() {
            ug.j m02 = m0();
            if (m02.Y()) {
                e();
            } else {
                m02.execute(new a());
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i c(Object obj, y yVar) {
            return this.f43494a.c(obj, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i c0(Object obj) {
            return this.f43494a.c0(obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i close() {
            return this.f43494a.close();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public e d() {
            return this.f43494a.d();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public boolean f0() {
            return this.f43496c || this.f43494a.f0();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m flush() {
            this.f43494a.flush();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i g(Object obj) {
            return this.f43494a.g(obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m k() {
            this.f43494a.k();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i m() {
            return this.f43494a.m();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public ug.j m0() {
            return this.f43494a.m0();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m n0() {
            this.f43494a.n0();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public String name() {
            return this.f43494a.name();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m p(Object obj) {
            this.f43494a.p(obj);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m q() {
            this.f43494a.q();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m read() {
            this.f43494a.read();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m s(Object obj) {
            this.f43494a.s(obj);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v
        public i u(Object obj, y yVar) {
            return this.f43494a.u(obj, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m v(Throwable th2) {
            this.f43494a.v(th2);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m w() {
            this.f43494a.w();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m x() {
            this.f43494a.x();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public m y() {
            this.f43494a.y();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.m
        public k z() {
            return this.f43494a.z();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a0() {
        p();
    }

    private void F(I i9, O o10) {
        if (this.f43491e == null) {
            io.grpc.netty.shaded.io.netty.util.internal.s.h(i9, "inboundHandler");
            io.grpc.netty.shaded.io.netty.util.internal.s.h(o10, "outboundHandler");
            if (!(i9 instanceof t)) {
                if (o10 instanceof o) {
                    throw new IllegalArgumentException("outboundHandler must not implement " + o.class.getSimpleName() + " to get combined.");
                }
                return;
            }
            throw new IllegalArgumentException("inboundHandler must not implement " + t.class.getSimpleName() + " to get combined.");
        }
        throw new IllegalStateException("init() can not be invoked if " + a0.class.getSimpleName() + " was constructed with non-default constructor.");
    }

    private void w() {
        if (!this.f43490d) {
            throw new IllegalStateException("handler not added to pipeline yet");
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void A(m mVar) throws Exception {
        if (this.f43491e != null) {
            this.f43489c = new b(mVar, this.f43492f);
            this.f43488b = new a(mVar, this.f43491e);
            this.f43490d = true;
            try {
                this.f43491e.A(this.f43488b);
                return;
            } finally {
                this.f43492f.A(this.f43489c);
            }
        }
        throw new IllegalStateException("init() must be invoked before being added to a " + w.class.getSimpleName() + " if " + a0.class.getSimpleName() + " was constructed with the default constructor.");
    }

    public final void B() {
        w();
        this.f43489c.b();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void C(m mVar) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.C(bVar);
        } else {
            bVar.w();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void D(m mVar) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.D(bVar);
        } else {
            bVar.q();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void E(m mVar) throws Exception {
        try {
            this.f43488b.b();
        } finally {
            this.f43489c.b();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void V(m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) throws Exception {
        b bVar = this.f43489c;
        if (!bVar.f43496c) {
            this.f43492f.V(bVar, socketAddress, socketAddress2, yVar);
        } else {
            bVar.Q(socketAddress, socketAddress2, yVar);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void X(m mVar, Object obj) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.X(bVar, obj);
        } else {
            bVar.s(obj);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void Y(m mVar) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.Y(bVar);
        } else {
            bVar.x();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void Z(m mVar) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.Z(bVar);
        } else {
            bVar.k();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
    public void a(m mVar, Throwable th2) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.a(bVar, th2);
        } else {
            bVar.v(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void e(m mVar, Object obj, y yVar) throws Exception {
        b bVar = this.f43489c;
        if (!bVar.f43496c) {
            this.f43492f.e(bVar, obj, yVar);
        } else {
            bVar.c(obj, yVar);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void h(m mVar, Object obj) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.h(bVar, obj);
        } else {
            bVar.p(obj);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void j(m mVar, y yVar) throws Exception {
        b bVar = this.f43489c;
        if (!bVar.f43496c) {
            this.f43492f.j(bVar, yVar);
        } else {
            bVar.M(yVar);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void l(m mVar, y yVar) throws Exception {
        b bVar = this.f43489c;
        if (!bVar.f43496c) {
            this.f43492f.l(bVar, yVar);
        } else {
            bVar.L(yVar);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void n(m mVar) throws Exception {
        b bVar = this.f43489c;
        if (!bVar.f43496c) {
            this.f43492f.n(bVar);
        } else {
            bVar.flush();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void o(m mVar) throws Exception {
        b bVar = this.f43489c;
        if (!bVar.f43496c) {
            this.f43492f.o(bVar);
        } else {
            bVar.read();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void r(m mVar) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.r(bVar);
        } else {
            bVar.y();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void t(m mVar) throws Exception {
        b bVar = this.f43488b;
        if (!bVar.f43496c) {
            this.f43491e.t(bVar);
        } else {
            bVar.n0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x(I i9, O o10) {
        F(i9, o10);
        this.f43491e = i9;
        this.f43492f = o10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final O y() {
        return this.f43492f;
    }

    public final void z() {
        w();
        this.f43488b.b();
    }
}
