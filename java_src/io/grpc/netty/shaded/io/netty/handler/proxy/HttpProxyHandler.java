package io.grpc.netty.shaded.io.netty.handler.proxy;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.security.CertificateUtil;
import io.grpc.netty.shaded.io.netty.channel.m;
import io.grpc.netty.shaded.io.netty.channel.o;
import io.grpc.netty.shaded.io.netty.channel.y;
import io.grpc.netty.shaded.io.netty.handler.codec.http.f0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.h0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.i0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.j0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.k0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.r;
import io.grpc.netty.shaded.io.netty.handler.codec.http.t;
import io.grpc.netty.shaded.io.netty.util.c;
import io.grpc.netty.shaded.io.netty.util.h;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import kg.j;
import kg.s0;
/* loaded from: classes5.dex */
public final class HttpProxyHandler extends qg.b {

    /* renamed from: n  reason: collision with root package name */
    private final b f44479n;

    /* renamed from: o  reason: collision with root package name */
    private final String f44480o;

    /* renamed from: p  reason: collision with root package name */
    private final String f44481p;

    /* renamed from: q  reason: collision with root package name */
    private final CharSequence f44482q;

    /* renamed from: r  reason: collision with root package name */
    private final t f44483r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f44484s;

    /* renamed from: t  reason: collision with root package name */
    private h0 f44485t;

    /* renamed from: u  reason: collision with root package name */
    private t f44486u;

    /* loaded from: classes5.dex */
    public static final class HttpProxyConnectException extends ProxyConnectException {
        private static final long serialVersionUID = -8824334609292146066L;
        private final t headers;

        public HttpProxyConnectException(String str, t tVar) {
            super(str);
            this.headers = tVar;
        }

        public t headers() {
            return this.headers;
        }
    }

    /* loaded from: classes5.dex */
    private static final class b implements o, io.grpc.netty.shaded.io.netty.channel.t {

        /* renamed from: a  reason: collision with root package name */
        final io.grpc.netty.shaded.io.netty.handler.codec.http.o f44487a;

        private b() {
            this.f44487a = new io.grpc.netty.shaded.io.netty.handler.codec.http.o();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.k
        public void A(m mVar) throws Exception {
            this.f44487a.A(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void C(m mVar) throws Exception {
            this.f44487a.C(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void D(m mVar) throws Exception {
            this.f44487a.D(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.k
        public void E(m mVar) throws Exception {
            this.f44487a.E(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void V(m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) throws Exception {
            this.f44487a.V(mVar, socketAddress, socketAddress2, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void X(m mVar, Object obj) throws Exception {
            this.f44487a.X(mVar, obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void Y(m mVar) throws Exception {
            this.f44487a.Y(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void Z(m mVar) throws Exception {
            this.f44487a.Z(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void a(m mVar, Throwable th2) throws Exception {
            this.f44487a.a(mVar, th2);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void e(m mVar, Object obj, y yVar) throws Exception {
            this.f44487a.e(mVar, obj, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void h(m mVar, Object obj) throws Exception {
            this.f44487a.h(mVar, obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void j(m mVar, y yVar) throws Exception {
            this.f44487a.j(mVar, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void l(m mVar, y yVar) throws Exception {
            this.f44487a.l(mVar, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void n(m mVar) throws Exception {
            this.f44487a.n(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.t
        public void o(m mVar) throws Exception {
            this.f44487a.o(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void r(m mVar) throws Exception {
            this.f44487a.r(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.o
        public void t(m mVar) throws Exception {
            this.f44487a.t(mVar);
        }
    }

    public HttpProxyHandler(SocketAddress socketAddress) {
        this(socketAddress, null);
    }

    @Override // qg.b
    protected boolean I(m mVar, Object obj) throws Exception {
        if (obj instanceof f0) {
            if (this.f44485t == null) {
                f0 f0Var = (f0) obj;
                this.f44485t = f0Var.t();
                this.f44486u = f0Var.h();
            } else {
                throw new HttpProxyConnectException(F("too many responses"), null);
            }
        }
        boolean z10 = obj instanceof k0;
        if (z10) {
            h0 h0Var = this.f44485t;
            if (h0Var != null) {
                if (h0Var.a() != 200) {
                    throw new HttpProxyConnectException(F("status: " + this.f44485t), this.f44486u);
                }
            } else {
                throw new HttpProxyConnectException(F("missing response"), this.f44486u);
            }
        }
        return z10;
    }

    @Override // qg.b
    protected Object J(m mVar) throws Exception {
        InetSocketAddress inetSocketAddress = (InetSocketAddress) B();
        String a10 = i0.a(inetSocketAddress);
        int port = inetSocketAddress.getPort();
        String str = a10 + CertificateUtil.DELIMITER + port;
        if (!this.f44484s || (port != 80 && port != 443)) {
            a10 = str;
        }
        io.grpc.netty.shaded.io.netty.handler.codec.http.b bVar = new io.grpc.netty.shaded.io.netty.handler.codec.http.b(j0.f43961i, io.grpc.netty.shaded.io.netty.handler.codec.http.y.f44089j, str, s0.f53902d, false);
        bVar.h().O(r.L, a10);
        if (this.f44482q != null) {
            bVar.h().O(r.Y, this.f44482q);
        }
        if (this.f44483r != null) {
            bVar.h().c(this.f44483r);
        }
        return bVar;
    }

    @Override // qg.b
    public String K() {
        return "http";
    }

    @Override // qg.b
    protected void M(m mVar) throws Exception {
        this.f44479n.f44487a.z();
    }

    @Override // qg.b
    protected void N(m mVar) throws Exception {
        this.f44479n.f44487a.B();
    }

    @Override // qg.b
    protected void w(m mVar) throws Exception {
        mVar.J().J0(mVar.name(), null, this.f44479n);
    }

    @Override // qg.b
    public String y() {
        return this.f44482q != null ? "basic" : IntegrityManager.INTEGRITY_TYPE_NONE;
    }

    public HttpProxyHandler(SocketAddress socketAddress, t tVar) {
        this(socketAddress, tVar, false);
    }

    public HttpProxyHandler(SocketAddress socketAddress, t tVar, boolean z10) {
        super(socketAddress);
        this.f44479n = new b();
        this.f44480o = null;
        this.f44481p = null;
        this.f44482q = null;
        this.f44483r = tVar;
        this.f44484s = z10;
    }

    public HttpProxyHandler(SocketAddress socketAddress, String str, String str2) {
        this(socketAddress, str, str2, null);
    }

    public HttpProxyHandler(SocketAddress socketAddress, String str, String str2, t tVar) {
        this(socketAddress, str, str2, tVar, false);
    }

    public HttpProxyHandler(SocketAddress socketAddress, String str, String str2, t tVar, boolean z10) {
        super(socketAddress);
        this.f44479n = new b();
        this.f44480o = (String) s.h(str, "username");
        this.f44481p = (String) s.h(str2, "password");
        j c10 = s0.c(str + ':' + str2, h.f45016d);
        try {
            j m10 = io.grpc.netty.shaded.io.netty.handler.codec.base64.a.m(c10, false);
            try {
                this.f44482q = new c("Basic " + m10.p2(h.f45018f));
                m10.release();
                this.f44483r = tVar;
                this.f44484s = z10;
            } catch (Throwable th2) {
                m10.release();
                throw th2;
            }
        } finally {
            c10.release();
        }
    }
}
