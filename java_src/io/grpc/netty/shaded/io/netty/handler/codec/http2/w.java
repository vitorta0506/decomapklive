package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.base64.Base64Dialect;
import io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import tg.b;
/* loaded from: classes5.dex */
public class w implements HttpClientUpgradeHandler.b {

    /* renamed from: e  reason: collision with root package name */
    private static final List<CharSequence> f44452e = Collections.singletonList(x.f44459a);

    /* renamed from: a  reason: collision with root package name */
    private final String f44453a;

    /* renamed from: b  reason: collision with root package name */
    private final c0 f44454b;

    /* renamed from: c  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.k f44455c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.k f44456d;

    public w(c0 c0Var) {
        this(null, c0Var);
    }

    private CharSequence c(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        kg.j jVar;
        kg.j jVar2 = null;
        try {
            x0 H1 = this.f44454b.g0().H1();
            kg.j l10 = mVar.P().l(H1.size() * 6);
            try {
                for (b.a<Long> aVar : H1.entries()) {
                    l10.C2(aVar.key());
                    l10.E2(aVar.value().intValue());
                }
                jVar2 = io.grpc.netty.shaded.io.netty.handler.codec.base64.a.l(l10, Base64Dialect.URL_SAFE);
                String p22 = jVar2.p2(io.grpc.netty.shaded.io.netty.util.h.f45016d);
                io.grpc.netty.shaded.io.netty.util.r.a(l10);
                io.grpc.netty.shaded.io.netty.util.r.a(jVar2);
                return p22;
            } catch (Throwable th2) {
                th = th2;
                kg.j jVar3 = jVar2;
                jVar2 = l10;
                jVar = jVar3;
                io.grpc.netty.shaded.io.netty.util.r.a(jVar2);
                io.grpc.netty.shaded.io.netty.util.r.a(jVar);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            jVar = null;
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler.b
    public Collection<CharSequence> a(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.handler.codec.http.d0 d0Var) {
        d0Var.h().O(x.f44459a, c(mVar));
        return f44452e;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler.b
    public void b(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.handler.codec.http.n nVar) throws Exception {
        try {
            mVar.J().x0(mVar.name(), this.f44453a, this.f44455c);
            if (this.f44456d != null) {
                mVar.J().x0(mVar.J().W0(this.f44454b).name(), null, this.f44456d);
            }
            this.f44454b.q0();
        } catch (Http2Exception e10) {
            mVar.v(e10);
            mVar.close();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler.b
    public CharSequence protocol() {
        return x.f44460b;
    }

    public w(String str, c0 c0Var) {
        this(str, c0Var, c0Var, null);
    }

    private w(String str, c0 c0Var, io.grpc.netty.shaded.io.netty.channel.k kVar, s0 s0Var) {
        this.f44453a = str;
        this.f44454b = (c0) io.grpc.netty.shaded.io.netty.util.internal.s.h(c0Var, "connectionHandler");
        this.f44455c = (io.grpc.netty.shaded.io.netty.channel.k) io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "upgradeToHandler");
        this.f44456d = s0Var;
    }
}
