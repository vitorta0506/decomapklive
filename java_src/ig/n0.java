package ig;

import io.grpc.Status;
import java.net.SocketAddress;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n0 extends io.grpc.netty.shaded.io.netty.channel.g {

    /* renamed from: g  reason: collision with root package name */
    private static final Logger f41247g = Logger.getLogger(n0.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final Queue<c> f41248b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.k f41249c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f41250d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f41251e;

    /* renamed from: f  reason: collision with root package name */
    private Throwable f41252f;

    /* loaded from: classes5.dex */
    final class a implements io.grpc.netty.shaded.io.netty.channel.j {
        a() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) {
            if (iVar.p0()) {
                return;
            }
            n0.this.v(iVar.L());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class b implements io.grpc.netty.shaded.io.netty.channel.j {
        b() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) {
            if (iVar.p0()) {
                return;
            }
            n0.f41247g.log(Level.FINE, "Failed closing channel", iVar.L());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final Object f41255a;

        /* renamed from: b  reason: collision with root package name */
        final io.grpc.netty.shaded.io.netty.channel.y f41256b;

        c(Object obj, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f41255a = obj;
            this.f41256b = yVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(io.grpc.netty.shaded.io.netty.channel.k kVar) {
        this.f41249c = (io.grpc.netty.shaded.io.netty.channel.k) com.google.common.base.o.t(kVar, "next");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Throwable th2) {
        if (this.f41252f == null) {
            this.f41252f = th2;
        } else {
            f41247g.log(Level.FINE, "Ignoring duplicate failure", th2);
        }
        while (!this.f41248b.isEmpty()) {
            c poll = this.f41248b.poll();
            poll.f41256b.u(th2);
            io.grpc.netty.shaded.io.netty.util.r.a(poll.f41255a);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        mVar.J().J0(mVar.name(), null, this.f41249c);
        super.A(mVar);
        mVar.J().s(f0.f41157c);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void E(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (!this.f41248b.isEmpty()) {
            v(Status.f41718t.r("Buffer removed before draining writes").d());
        }
        super.E(mVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void V(io.grpc.netty.shaded.io.netty.channel.m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        super.V(mVar, socketAddress, socketAddress2, yVar);
        yVar.c((ug.r<? extends ug.q<? super Void>>) new a());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
    public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
        Throwable th3 = this.f41252f;
        Status s10 = m0.s(th2);
        v(s10.f("Channel Pipeline: " + mVar.J().names()).d());
        if (mVar.d().isActive() && th3 == null) {
            mVar.close().c((ug.r<? extends ug.q<? super Void>>) new b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        Throwable th2 = this.f41252f;
        if (th2 != null) {
            yVar.u(th2);
            io.grpc.netty.shaded.io.netty.util.r.a(obj);
            return;
        }
        if ((obj instanceof i) || (obj instanceof h)) {
            mVar.close();
        }
        this.f41248b.add(new c(obj, yVar));
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void h(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) {
        try {
            Logger logger = f41247g;
            Level level = Level.FINE;
            if (logger.isLoggable(level)) {
                logger.log(level, "Unexpected channelRead()->{0} reached end of pipeline {1}", new Object[]{obj instanceof kg.j ? kg.n.v((kg.j) obj) : obj, mVar.J().names()});
            }
            Status status = Status.f41718t;
            a(mVar, status.r("channelRead() missed by ProtocolNegotiator handler: " + obj).d());
        } finally {
            io.grpc.netty.shaded.io.netty.util.r.c(obj);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        Status status = Status.f41719u;
        v(status.r("Connection closing while performing protocol negotiation for " + mVar.J().names()).d());
        super.l(mVar, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public void n(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        this.f41251e = true;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void t(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        Status status = Status.f41719u;
        v(status.r("Connection closed while performing protocol negotiation for " + mVar.J().names()).d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void w(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        if (!mVar.d().isActive() || this.f41250d) {
            return;
        }
        this.f41250d = true;
        while (!this.f41248b.isEmpty()) {
            c poll = this.f41248b.poll();
            mVar.c(poll.f41255a, poll.f41256b);
        }
        if (this.f41251e) {
            mVar.flush();
        }
        mVar.J().O0(this);
    }
}
