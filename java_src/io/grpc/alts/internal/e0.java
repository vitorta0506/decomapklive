package io.grpc.alts.internal;

import io.grpc.alts.internal.f0;
import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.u0;
import java.net.SocketAddress;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class e0 extends pg.a implements io.grpc.netty.shaded.io.netty.channel.t {

    /* renamed from: o  reason: collision with root package name */
    private static final Logger f41861o = Logger.getLogger(e0.class.getName());

    /* renamed from: l  reason: collision with root package name */
    private f0 f41862l;

    /* renamed from: m  reason: collision with root package name */
    private u0 f41863m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f41864n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class a implements f0.a<kg.j> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f41865a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y f41866b;

        a(io.grpc.netty.shaded.io.netty.channel.m mVar, y yVar) {
            this.f41865a = mVar;
            this.f41866b = yVar;
        }

        @Override // io.grpc.alts.internal.f0.a
        /* renamed from: a */
        public void accept(kg.j jVar) {
            this.f41865a.u(jVar, this.f41866b.u0());
        }
    }

    public e0(f0 f0Var) {
        this.f41862l = (f0) com.google.common.base.o.t(f0Var, "protector");
    }

    private void M() {
        try {
            u0 u0Var = this.f41863m;
            if (u0Var != null && !u0Var.d()) {
                this.f41863m.g(new ChannelException("Pending write on teardown of TSI handler"));
            }
            this.f41863m = null;
            f0 f0Var = this.f41862l;
            if (f0Var != null) {
                try {
                    f0Var.destroy();
                } finally {
                    this.f41862l = null;
                }
            }
        } catch (Throwable th2) {
            this.f41863m = null;
            throw th2;
        }
    }

    private void N(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        if (this.f41864n) {
            return;
        }
        this.f41864n = true;
        try {
            try {
                if (!this.f41863m.d()) {
                    n(mVar);
                }
            } catch (GeneralSecurityException e10) {
                f41861o.log(Level.FINE, "Ignored error on flush before close", (Throwable) e10);
            }
        } finally {
            M();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        super.A(mVar);
        this.f41863m = new u0((io.grpc.netty.shaded.io.netty.channel.m) com.google.common.base.o.s(mVar));
    }

    @Override // pg.a
    public void I(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        M();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void V(io.grpc.netty.shaded.io.netty.channel.m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        mVar.Q(socketAddress, socketAddress2, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        if (this.f41862l == null) {
            yVar.u(new IllegalStateException("write() called after close()"));
            return;
        }
        kg.j jVar = (kg.j) obj;
        if (!jVar.j1()) {
            yVar.m();
        } else {
            this.f41863m.a(jVar, yVar);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void j(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        N(mVar);
        mVar.M(yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        N(mVar);
        mVar.L(yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void n(io.grpc.netty.shaded.io.netty.channel.m mVar) throws GeneralSecurityException {
        u0 u0Var = this.f41863m;
        if (u0Var == null || u0Var.d()) {
            return;
        }
        com.google.common.base.o.A(this.f41862l != null, "flush() called after close()");
        y yVar = new y(mVar.d(), mVar.m0(), this.f41863m.j());
        ArrayList arrayList = new ArrayList(this.f41863m.j());
        while (!this.f41863m.d()) {
            arrayList.add(((kg.j) this.f41863m.c()).retain());
            yVar.n0(this.f41863m.f());
        }
        this.f41862l.b(arrayList, new a(mVar, yVar), mVar.P());
        yVar.t0();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void o(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        mVar.read();
    }

    @Override // pg.a
    protected void x(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
        com.google.common.base.o.A(this.f41862l != null, "decode() called after close()");
        this.f41862l.a(jVar, list, mVar.P());
    }
}
