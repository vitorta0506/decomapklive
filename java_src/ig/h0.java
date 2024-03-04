package ig;

import com.facebook.appevents.integrity.IntegrityManager;
import ig.g0;
import io.grpc.ChannelLogger;
import io.grpc.SecurityLevel;
import io.grpc.Status;
import io.grpc.TlsChannelCredentials;
import io.grpc.TlsServerCredentials$Feature;
import io.grpc.c0;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.r0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler;
import io.grpc.netty.shaded.io.netty.handler.proxy.HttpProxyHandler;
import io.grpc.netty.shaded.io.netty.handler.ssl.SslProvider;
import io.grpc.netty.shaded.io.netty.handler.ssl.p1;
import io.grpc.netty.shaded.io.netty.handler.ssl.q1;
import io.grpc.netty.shaded.io.netty.handler.ssl.s1;
import io.grpc.netty.shaded.io.netty.handler.ssl.u1;
import java.io.ByteArrayInputStream;
import java.net.SocketAddress;
import java.net.URI;
import java.nio.channels.ClosedChannelException;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
final class h0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f41162a = Logger.getLogger(h0.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final EnumSet<TlsChannelCredentials.Feature> f41163b = EnumSet.of(TlsChannelCredentials.Feature.MTLS, TlsChannelCredentials.Feature.CUSTOM_MANAGERS);

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<TlsServerCredentials$Feature> f41164c = EnumSet.of(TlsServerCredentials$Feature.MTLS, TlsServerCredentials$Feature.CUSTOM_MANAGERS);

    /* loaded from: classes5.dex */
    class a implements g0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g0 f41165a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SocketAddress f41166b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41167c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41168d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.util.c f41169e;

        a(g0 g0Var, SocketAddress socketAddress, String str, String str2, io.grpc.netty.shaded.io.netty.util.c cVar) {
            this.f41165a = g0Var;
            this.f41166b = socketAddress;
            this.f41167c = str;
            this.f41168d = str2;
            this.f41169e = cVar;
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.channel.k a(ig.j jVar) {
            return new l(this.f41166b, this.f41167c, this.f41168d, this.f41165a.a(jVar), jVar.z0());
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.util.c b() {
            return this.f41169e;
        }

        @Override // ig.g0
        public void close() {
            this.f41165a.close();
        }
    }

    /* loaded from: classes5.dex */
    static final class b extends k {

        /* renamed from: f  reason: collision with root package name */
        private final p1 f41170f;

        /* renamed from: g  reason: collision with root package name */
        private final String f41171g;

        /* renamed from: h  reason: collision with root package name */
        private final int f41172h;

        /* renamed from: i  reason: collision with root package name */
        private Executor f41173i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(io.grpc.netty.shaded.io.netty.channel.k kVar, p1 p1Var, String str, Executor executor, ChannelLogger channelLogger) {
            super(kVar, channelLogger);
            this.f41170f = (p1) com.google.common.base.o.t(p1Var, "sslContext");
            f e10 = h0.e(str);
            this.f41171g = e10.f41181a;
            this.f41172h = e10.f41182b;
            this.f41173i = executor;
        }

        private void z(io.grpc.netty.shaded.io.netty.channel.m mVar, SSLSession sSLSession) {
            c0.c cVar = new c0.c(new c0.d(sSLSession));
            f0 u10 = u();
            x(u10.c(u10.a().d().d(r0.f43015a, SecurityLevel.PRIVACY_AND_INTEGRITY).d(io.grpc.a0.f41750c, sSLSession).a()).d(cVar));
            s(mVar);
        }

        @Override // ig.h0.k
        protected void v(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            s1 s1Var;
            SSLEngine v10 = this.f41170f.v(mVar.P(), this.f41171g, this.f41172h);
            SSLParameters sSLParameters = v10.getSSLParameters();
            sSLParameters.setEndpointIdentificationAlgorithm("HTTPS");
            v10.setSSLParameters(sSLParameters);
            io.grpc.netty.shaded.io.netty.channel.w J = mVar.J();
            String name = mVar.name();
            if (this.f41173i != null) {
                s1Var = new s1(v10, false, this.f41173i);
            } else {
                s1Var = new s1(v10, false);
            }
            J.J0(name, null, s1Var);
        }

        @Override // ig.h0.k
        protected void y(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
            if (obj instanceof u1) {
                u1 u1Var = (u1) obj;
                if (u1Var.b()) {
                    s1 s1Var = (s1) mVar.J().i(s1.class);
                    if (this.f41170f.a().b().contains(s1Var.r0())) {
                        h0.d(Level.FINER, mVar, "TLS negotiation succeeded.", null);
                        z(mVar, s1Var.z0().getSession());
                        return;
                    }
                    RuntimeException l10 = h0.l("Failed ALPN negotiation: Unable to find compatible protocol");
                    h0.d(Level.FINE, mVar, "TLS negotiation failed.", l10);
                    mVar.v(l10);
                    return;
                }
                Throwable a10 = u1Var.a();
                if (a10 instanceof ClosedChannelException) {
                    a10 = Status.f41719u.r("Connection closed while performing TLS negotiation").q(a10).d();
                }
                mVar.v(a10);
                return;
            }
            super.y(mVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c implements g0 {

        /* renamed from: a  reason: collision with root package name */
        private final p1 f41174a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.internal.p1<? extends Executor> f41175b;

        /* renamed from: c  reason: collision with root package name */
        private Executor f41176c;

        public c(p1 p1Var, io.grpc.internal.p1<? extends Executor> p1Var2) {
            this.f41174a = (p1) com.google.common.base.o.t(p1Var, "sslContext");
            this.f41175b = p1Var2;
            if (p1Var2 != null) {
                this.f41176c = p1Var2.a();
            }
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.channel.k a(ig.j jVar) {
            e eVar = new e(jVar);
            ChannelLogger z02 = jVar.z0();
            return new n(new b(eVar, this.f41174a, jVar.x0(), this.f41176c, z02), z02);
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.util.c b() {
            return m0.f41213e;
        }

        @Override // ig.g0
        public void close() {
            Executor executor;
            io.grpc.internal.p1<? extends Executor> p1Var = this.f41175b;
            if (p1Var == null || (executor = this.f41176c) == null) {
                return;
            }
            p1Var.b(executor);
        }
    }

    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final g0.a f41177a;

        /* renamed from: b  reason: collision with root package name */
        public final io.grpc.b f41178b;

        /* renamed from: c  reason: collision with root package name */
        public final String f41179c;

        private d(g0.a aVar, io.grpc.b bVar, String str) {
            this.f41177a = aVar;
            this.f41178b = bVar;
            this.f41179c = str;
        }

        public static d a(String str) {
            return new d(null, null, (String) com.google.common.base.o.t(str, "error"));
        }

        public static d b(g0.a aVar) {
            return new d((g0.a) com.google.common.base.o.t(aVar, "factory"), null, null);
        }

        public d c(io.grpc.b bVar) {
            com.google.common.base.o.t(bVar, "callCreds");
            if (this.f41179c != null) {
                return this;
            }
            io.grpc.b bVar2 = this.f41178b;
            if (bVar2 != null) {
                bVar = new io.grpc.m(bVar2, bVar);
            }
            return new d(this.f41177a, bVar, null);
        }
    }

    /* loaded from: classes5.dex */
    static final class e extends io.grpc.netty.shaded.io.netty.channel.p {

        /* renamed from: b  reason: collision with root package name */
        private final ig.j f41180b;

        public e(ig.j jVar) {
            this.f41180b = (ig.j) com.google.common.base.o.t(jVar, "next");
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
        public void X(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
            if (obj instanceof f0) {
                f0 f0Var = (f0) obj;
                mVar.J().t0(mVar.name(), null, this.f41180b);
                this.f41180b.A0(f0Var.a(), f0Var.b());
                return;
            }
            super.X(mVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        final String f41181a;

        /* renamed from: b  reason: collision with root package name */
        final int f41182b;

        public f(String str, int i9) {
            this.f41181a = str;
            this.f41182b = i9;
        }
    }

    /* loaded from: classes5.dex */
    static final class g extends io.grpc.netty.shaded.io.netty.channel.p {

        /* renamed from: b  reason: collision with root package name */
        private final String f41183b;

        /* renamed from: c  reason: collision with root package name */
        private final ig.j f41184c;

        /* renamed from: d  reason: collision with root package name */
        private final ChannelLogger f41185d;

        /* renamed from: e  reason: collision with root package name */
        private f0 f41186e;

        g(String str, ig.j jVar) {
            this.f41183b = (String) com.google.common.base.o.t(str, "authority");
            this.f41184c = (ig.j) com.google.common.base.o.t(jVar, "next");
            this.f41185d = jVar.z0();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
        public void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            this.f41185d.a(ChannelLogger.ChannelLogLevel.INFO, "Http2Upgrade started");
            io.grpc.netty.shaded.io.netty.handler.codec.http.o oVar = new io.grpc.netty.shaded.io.netty.handler.codec.http.o();
            mVar.J().J0(mVar.name(), null, oVar);
            mVar.J().J0(mVar.name(), null, new HttpClientUpgradeHandler(oVar, new io.grpc.netty.shaded.io.netty.handler.codec.http2.w(this.f41184c), 1000));
            io.grpc.netty.shaded.io.netty.handler.codec.http.h hVar = new io.grpc.netty.shaded.io.netty.handler.codec.http.h(io.grpc.netty.shaded.io.netty.handler.codec.http.j0.f43961i, io.grpc.netty.shaded.io.netty.handler.codec.http.y.f44082c, FileUtils.RES_PREFIX_STORAGE);
            hVar.h().d(io.grpc.netty.shaded.io.netty.handler.codec.http.r.L, this.f41183b);
            mVar.g(hVar).c(io.grpc.netty.shaded.io.netty.channel.j.f43709j3);
            super.A(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
        public void X(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
            if (obj instanceof f0) {
                com.google.common.base.o.A(this.f41186e == null, "negotiation already started");
                this.f41186e = (f0) obj;
            } else if (obj == HttpClientUpgradeHandler.UpgradeEvent.UPGRADE_SUCCESSFUL) {
                com.google.common.base.o.A(this.f41186e != null, "negotiation not yet complete");
                this.f41185d.a(ChannelLogger.ChannelLogLevel.INFO, "Http2Upgrade finished");
                mVar.J().remove(mVar.name());
                this.f41184c.A0(this.f41186e.a(), this.f41186e.b());
            } else if (obj == HttpClientUpgradeHandler.UpgradeEvent.UPGRADE_REJECTED) {
                mVar.v(h0.l("HTTP/2 upgrade rejected"));
            } else {
                super.X(mVar, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class h implements g0 {
        h() {
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.channel.k a(ig.j jVar) {
            return new n(new e(jVar), jVar.z0());
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.util.c b() {
            return m0.f41214f;
        }

        @Override // ig.g0
        public void close() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class i implements g0.a {
        i() {
        }

        @Override // ig.g0.a
        public int a() {
            return 80;
        }

        @Override // ig.g0.a
        public g0 b() {
            return h0.f();
        }
    }

    /* loaded from: classes5.dex */
    static final class j implements g0 {
        j() {
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.channel.k a(ig.j jVar) {
            return new n(new g(jVar.x0(), jVar), jVar.z0());
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.util.c b() {
            return m0.f41214f;
        }

        @Override // ig.g0
        public void close() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class k extends io.grpc.netty.shaded.io.netty.channel.g {

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.channel.k f41187b;

        /* renamed from: c  reason: collision with root package name */
        private final String f41188c = getClass().getSimpleName().replace("Handler", "");

        /* renamed from: d  reason: collision with root package name */
        private f0 f41189d;

        /* renamed from: e  reason: collision with root package name */
        private final ChannelLogger f41190e;

        protected k(io.grpc.netty.shaded.io.netty.channel.k kVar, ChannelLogger channelLogger) {
            this.f41187b = (io.grpc.netty.shaded.io.netty.channel.k) com.google.common.base.o.t(kVar, "next");
            this.f41190e = (ChannelLogger) com.google.common.base.o.t(channelLogger, "negotiationLogger");
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
        public final void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            this.f41190e.b(ChannelLogger.ChannelLogLevel.DEBUG, "{0} started", this.f41188c);
            v(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
        public final void X(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
            if (obj instanceof f0) {
                f0 f0Var = this.f41189d;
                com.google.common.base.o.E(f0Var == null, "pre-existing negotiation: %s < %s", f0Var, obj);
                this.f41189d = (f0) obj;
                w(mVar);
                return;
            }
            y(mVar, obj);
        }

        protected final void s(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            com.google.common.base.o.A(this.f41189d != null, "previous protocol negotiation event hasn't triggered");
            this.f41190e.b(ChannelLogger.ChannelLogLevel.INFO, "{0} completed", this.f41188c);
            mVar.J().t0(mVar.name(), null, this.f41187b);
            mVar.s(this.f41189d);
        }

        protected final f0 u() {
            com.google.common.base.o.A(this.f41189d != null, "previous protocol negotiation event hasn't triggered");
            return this.f41189d;
        }

        protected void v(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            super.A(mVar);
        }

        protected void w(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        }

        protected final void x(f0 f0Var) {
            com.google.common.base.o.A(this.f41189d != null, "previous protocol negotiation event hasn't triggered");
            this.f41189d = (f0) com.google.common.base.o.s(f0Var);
        }

        protected void y(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
            super.X(mVar, obj);
        }
    }

    /* loaded from: classes5.dex */
    static final class l extends k {

        /* renamed from: f  reason: collision with root package name */
        private final SocketAddress f41191f;

        /* renamed from: g  reason: collision with root package name */
        private final String f41192g;

        /* renamed from: h  reason: collision with root package name */
        private final String f41193h;

        public l(SocketAddress socketAddress, String str, String str2, io.grpc.netty.shaded.io.netty.channel.k kVar, ChannelLogger channelLogger) {
            super(kVar, channelLogger);
            this.f41191f = (SocketAddress) com.google.common.base.o.t(socketAddress, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
            this.f41192g = str;
            this.f41193h = str2;
        }

        @Override // ig.h0.k
        protected void w(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            HttpProxyHandler httpProxyHandler;
            if (this.f41192g != null && this.f41193h != null) {
                httpProxyHandler = new HttpProxyHandler(this.f41191f, this.f41192g, this.f41193h);
            } else {
                httpProxyHandler = new HttpProxyHandler(this.f41191f);
            }
            mVar.J().J0(mVar.name(), null, httpProxyHandler);
        }

        @Override // ig.h0.k
        protected void y(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
            if (obj instanceof qg.a) {
                s(mVar);
            } else {
                super.X(mVar, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class m implements g0.a {

        /* renamed from: a  reason: collision with root package name */
        private final p1 f41194a;

        public m(p1 p1Var) {
            this.f41194a = (p1) com.google.common.base.o.t(p1Var, "sslContext");
        }

        @Override // ig.g0.a
        public int a() {
            return 443;
        }

        @Override // ig.g0.a
        public g0 b() {
            return h0.i(this.f41194a);
        }
    }

    /* loaded from: classes5.dex */
    static final class n extends k {

        /* renamed from: f  reason: collision with root package name */
        boolean f41195f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public n(io.grpc.netty.shaded.io.netty.channel.k kVar, ChannelLogger channelLogger) {
            super(kVar, channelLogger);
        }

        private void z(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            f0 u10 = u();
            x(u10.c(u10.a().d().d(io.grpc.a0.f41749b, mVar.d().K()).d(io.grpc.a0.f41748a, mVar.d().H()).d(r0.f43015a, SecurityLevel.NONE).a()));
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
        public void D(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            if (this.f41195f) {
                z(mVar);
                s(mVar);
            }
            super.D(mVar);
        }

        @Override // ig.h0.k
        protected void w(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f41195f = true;
            if (mVar.d().isActive()) {
                z(mVar);
                s(mVar);
            }
        }
    }

    private h0() {
    }

    public static d b(io.grpc.e eVar) {
        if (eVar instanceof TlsChannelCredentials) {
            TlsChannelCredentials tlsChannelCredentials = (TlsChannelCredentials) eVar;
            Set<TlsChannelCredentials.Feature> h10 = tlsChannelCredentials.h(f41163b);
            if (!h10.isEmpty()) {
                return d.a("TLS features not understood: " + h10);
            }
            q1 f10 = o.f();
            if (tlsChannelCredentials.c() != null) {
                f10.g(new ig.f(tlsChannelCredentials.c()));
            } else if (tlsChannelCredentials.d() != null) {
                f10.e(new ByteArrayInputStream(tlsChannelCredentials.b()), new ByteArrayInputStream(tlsChannelCredentials.d()), tlsChannelCredentials.e());
            }
            if (tlsChannelCredentials.g() != null) {
                f10.m(new ig.g(tlsChannelCredentials.g()));
            } else if (tlsChannelCredentials.f() != null) {
                f10.l(new ByteArrayInputStream(tlsChannelCredentials.f()));
            }
            try {
                return d.b(k(f10.b()));
            } catch (SSLException e10) {
                f41162a.log(Level.FINE, "Exception building SslContext", (Throwable) e10);
                return d.a("Unable to create SslContext: " + e10.getMessage());
            }
        } else if (eVar instanceof io.grpc.b0) {
            return d.b(g());
        } else {
            if (eVar instanceof io.grpc.n) {
                io.grpc.n nVar = (io.grpc.n) eVar;
                return b(nVar.c()).c(nVar.b());
            } else if (eVar instanceof w) {
                return d.b(((w) eVar).b());
            } else {
                if (eVar instanceof io.grpc.f) {
                    StringBuilder sb2 = new StringBuilder();
                    for (io.grpc.e eVar2 : ((io.grpc.f) eVar).a()) {
                        d b10 = b(eVar2);
                        if (b10.f41179c == null) {
                            return b10;
                        }
                        sb2.append(", ");
                        sb2.append(b10.f41179c);
                    }
                    return d.a(sb2.substring(2));
                }
                return d.a("Unsupported credential type: " + eVar.getClass().getName());
            }
        }
    }

    public static g0 c(SocketAddress socketAddress, String str, String str2, g0 g0Var) {
        com.google.common.base.o.t(g0Var, "negotiator");
        com.google.common.base.o.t(socketAddress, "proxyAddress");
        return new a(g0Var, socketAddress, str, str2, g0Var.b());
    }

    static void d(Level level, io.grpc.netty.shaded.io.netty.channel.m mVar, String str, Throwable th2) {
        Logger logger = f41162a;
        if (logger.isLoggable(level)) {
            s1 s1Var = (s1) mVar.J().i(s1.class);
            SSLEngine z02 = s1Var.z0();
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append("\nSSLEngine Details: [\n");
            if (z02 instanceof io.grpc.netty.shaded.io.netty.handler.ssl.o0) {
                sb2.append("    OpenSSL, ");
                sb2.append("Version: 0x");
                sb2.append(Integer.toHexString(io.grpc.netty.shaded.io.netty.handler.ssl.e0.s()));
                sb2.append(" (");
                sb2.append(io.grpc.netty.shaded.io.netty.handler.ssl.e0.t());
                sb2.append("), ");
                sb2.append("ALPN supported: ");
                sb2.append(SslProvider.isAlpnSupported(SslProvider.OPENSSL));
            } else if (u.d()) {
                sb2.append("    Jetty ALPN");
            } else if (u.e()) {
                sb2.append("    Jetty NPN");
            } else if (u.c()) {
                sb2.append("    JDK9 ALPN");
            }
            sb2.append("\n    TLS Protocol: ");
            sb2.append(z02.getSession().getProtocol());
            sb2.append("\n    Application Protocol: ");
            sb2.append(s1Var.r0());
            sb2.append("\n    Need Client Auth: ");
            sb2.append(z02.getNeedClientAuth());
            sb2.append("\n    Want Client Auth: ");
            sb2.append(z02.getWantClientAuth());
            sb2.append("\n    Supported protocols=");
            sb2.append(Arrays.toString(z02.getSupportedProtocols()));
            sb2.append("\n    Enabled protocols=");
            sb2.append(Arrays.toString(z02.getEnabledProtocols()));
            sb2.append("\n    Supported ciphers=");
            sb2.append(Arrays.toString(z02.getSupportedCipherSuites()));
            sb2.append("\n    Enabled ciphers=");
            sb2.append(Arrays.toString(z02.getEnabledCipherSuites()));
            sb2.append("\n]");
            logger.log(level, sb2.toString(), th2);
        }
    }

    static f e(String str) {
        int i9;
        URI c10 = GrpcUtil.c((String) com.google.common.base.o.t(str, "authority"));
        if (c10.getHost() != null) {
            str = c10.getHost();
            i9 = c10.getPort();
        } else {
            i9 = -1;
        }
        return new f(str, i9);
    }

    public static g0 f() {
        return new h();
    }

    public static g0.a g() {
        return new i();
    }

    public static g0 h() {
        return new j();
    }

    public static g0 i(p1 p1Var) {
        return j(p1Var, null);
    }

    public static g0 j(p1 p1Var, io.grpc.internal.p1<? extends Executor> p1Var2) {
        return new c(p1Var, p1Var2);
    }

    public static g0.a k(p1 p1Var) {
        return new m(p1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException l(String str) {
        return Status.f41719u.r(str).d();
    }
}
