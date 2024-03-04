package io.grpc.alts.internal;

import io.grpc.ChannelLogger;
import io.grpc.c0;
import io.grpc.internal.r0;
import java.security.GeneralSecurityException;
import java.util.List;
/* loaded from: classes5.dex */
public final class g0 extends pg.a {

    /* renamed from: l  reason: collision with root package name */
    private final w f41880l;

    /* renamed from: m  reason: collision with root package name */
    private final b f41881m;

    /* renamed from: n  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.k f41882n;

    /* renamed from: o  reason: collision with root package name */
    private final n f41883o;

    /* renamed from: p  reason: collision with root package name */
    private ig.f0 f41884p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f41885q;

    /* renamed from: r  reason: collision with root package name */
    private final ChannelLogger f41886r;

    /* loaded from: classes5.dex */
    class a implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f41887a;

        a(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f41887a = mVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) {
            if (!iVar.p0()) {
                this.f41887a.v(iVar.L());
            } else if (this.f41887a.f0()) {
                g0.this.R();
            } else {
                g0.this.f41885q = true;
                try {
                    g0.this.S(this.f41887a);
                } catch (Exception e10) {
                    this.f41887a.v(e10);
                }
                this.f41887a.flush();
            }
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class b {

        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private final io.grpc.SecurityLevel f41889a;

            /* renamed from: b  reason: collision with root package name */
            private final c0.c f41890b;

            public a(io.grpc.SecurityLevel securityLevel, c0.c cVar) {
                this.f41889a = (io.grpc.SecurityLevel) com.google.common.base.o.t(securityLevel, "securityLevel");
                this.f41890b = cVar;
            }

            public c0.c a() {
                return this.f41890b;
            }

            public io.grpc.SecurityLevel b() {
                return this.f41889a;
            }
        }

        public abstract a a(Object obj) throws GeneralSecurityException;
    }

    public g0(io.grpc.netty.shaded.io.netty.channel.k kVar, w wVar, b bVar, n nVar, ChannelLogger channelLogger) {
        this.f41880l = (w) com.google.common.base.o.t(wVar, "handshaker");
        this.f41881m = (b) com.google.common.base.o.t(bVar, "handshakeValidator");
        this.f41882n = (io.grpc.netty.shaded.io.netty.channel.k) com.google.common.base.o.t(kVar, "next");
        this.f41883o = nVar;
        this.f41886r = channelLogger;
    }

    private void P(io.grpc.netty.shaded.io.netty.channel.m mVar, j0 j0Var, Object obj, b.a aVar) {
        com.google.common.base.o.A(this.f41884p != null, "negotiation not yet complete");
        this.f41886r.a(ChannelLogger.ChannelLogLevel.INFO, "TsiHandshake finished");
        ig.f0 f0Var = this.f41884p;
        mVar.s(ig.q.c(ig.q.b(f0Var, ig.q.a(f0Var).d().d(k.f41904c, j0Var).d(k.f41905d, obj).d(r0.f43015a, aVar.b()).a()), aVar.a()));
    }

    private io.grpc.netty.shaded.io.netty.channel.i Q(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        n nVar = this.f41883o;
        if (nVar == null) {
            return mVar.m();
        }
        return nVar.a(mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        n nVar = this.f41883o;
        if (nVar != null) {
            nVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(io.grpc.netty.shaded.io.netty.channel.m mVar) throws GeneralSecurityException {
        while (true) {
            kg.j retain = mVar.P().l(1024).retain();
            try {
                try {
                    this.f41880l.f(retain);
                    if (!retain.j1()) {
                        return;
                    }
                    mVar.g(retain).c(io.grpc.netty.shaded.io.netty.channel.j.f43709j3);
                    retain.release(1);
                } catch (GeneralSecurityException e10) {
                    throw new GeneralSecurityException("TsiHandshakeHandler encountered exception", e10);
                }
            } finally {
                retain.release(2);
            }
        }
    }

    @Override // pg.a
    protected void I(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (this.f41885q) {
            R();
            this.f41885q = false;
        }
        this.f41880l.b();
    }

    @Override // pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void X(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
        if (obj instanceof ig.f0) {
            com.google.common.base.o.A(this.f41884p == null, "negotiation already started");
            this.f41884p = (ig.f0) obj;
            this.f41886r.a(ChannelLogger.ChannelLogLevel.INFO, "TsiHandshake started");
            io.grpc.netty.shaded.io.netty.channel.i Q = Q(mVar);
            if (Q.p0()) {
                this.f41885q = true;
                S(mVar);
                return;
            }
            Q.c((ug.r<? extends ug.q<? super Void>>) new a(mVar));
            return;
        }
        super.X(mVar, obj);
    }

    @Override // pg.a
    protected void x(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
        if (this.f41880l.h(jVar) && this.f41880l.g()) {
            S(mVar);
        }
        if (this.f41880l.g()) {
            return;
        }
        j0 d10 = this.f41880l.d();
        Object e10 = this.f41880l.e();
        b.a a10 = this.f41881m.a(e10);
        f0 c10 = this.f41880l.c(mVar.P());
        try {
            e0 e0Var = new e0(c10);
            mVar.J().x0(mVar.name(), null, e0Var);
            mVar.J().x0(mVar.J().W0(e0Var).name(), null, this.f41882n);
            mVar.J().remove(mVar.name());
            P(mVar, d10, e10, a10);
        } catch (Throwable th2) {
            if (c10 != null) {
                c10.destroy();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.a
    public void y(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
        x(mVar, jVar, list);
    }
}
