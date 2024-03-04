package io.grpc.alts.internal;

import androidx.webkit.ProxyConfig;
import com.google.common.collect.ImmutableList;
import com.google.protobuf.Any;
import eh.o1;
import io.grpc.ChannelLogger;
import io.grpc.Status;
import io.grpc.a;
import io.grpc.alts.internal.e;
import io.grpc.alts.internal.g0;
import io.grpc.c0;
import io.grpc.netty.shaded.io.netty.handler.ssl.p1;
import java.security.GeneralSecurityException;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f41902a = Logger.getLogger(k.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final n f41903b = new n(32);

    /* renamed from: c  reason: collision with root package name */
    public static final a.c<j0> f41904c = a.c.a("TSI_PEER");

    /* renamed from: d  reason: collision with root package name */
    public static final a.c<Object> f41905d = a.c.a("AUTH_CONTEXT_KEY");

    /* renamed from: e  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.c f41906e = io.grpc.netty.shaded.io.netty.util.c.z(ProxyConfig.MATCH_HTTPS);

    /* loaded from: classes5.dex */
    private static final class b extends g0.b {
        private b() {
        }

        @Override // io.grpc.alts.internal.g0.b
        public g0.b.a a(Object obj) throws GeneralSecurityException {
            j jVar = (j) obj;
            if (a0.a(a0.b(), jVar.a()).a()) {
                return new g0.b.a(io.grpc.SecurityLevel.PRIVACY_AND_INTEGRITY, new c0.c(new c0.b("alts", Any.pack(jVar.f41898a))));
            }
            throw Status.f41719u.r("Local Rpc Protocol Versions " + a0.b() + " are not compatible with peer Rpc Protocol Versions " + jVar.a()).d();
        }
    }

    /* loaded from: classes5.dex */
    private static final class c implements i0 {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<String> f41907a;

        /* renamed from: b  reason: collision with root package name */
        private final f f41908b;

        c(ImmutableList<String> immutableList, f fVar) {
            this.f41907a = (ImmutableList) com.google.common.base.o.t(immutableList, "targetServiceAccounts");
            this.f41908b = (f) com.google.common.base.o.t(fVar, "lazyHandshakerChannel");
        }

        @Override // io.grpc.alts.internal.i0
        public h0 a(String str, ChannelLogger channelLogger) {
            return m.h(t.b(this.f41908b.b()), new e.b().e(a0.b()).g(this.f41907a).f(str).d(), channelLogger);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d implements ig.s {

        /* renamed from: a  reason: collision with root package name */
        private final i0 f41909a;

        /* renamed from: b  reason: collision with root package name */
        private final f f41910b;

        /* renamed from: c  reason: collision with root package name */
        private final p1 f41911c;

        /* renamed from: d  reason: collision with root package name */
        private final a.c<String> f41912d;

        d(ImmutableList<String> immutableList, io.grpc.internal.p1<io.grpc.d> p1Var, p1 p1Var2, a.c<String> cVar) {
            f fVar = new f(p1Var);
            this.f41910b = fVar;
            this.f41909a = new c(immutableList, fVar);
            this.f41911c = (p1) com.google.common.base.o.t(p1Var2, "checkNotNull");
            this.f41912d = cVar;
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.channel.k a(ig.j jVar) {
            io.grpc.netty.shaded.io.netty.channel.k g0Var;
            String str;
            io.grpc.netty.shaded.io.netty.channel.k b10 = ig.t.b(jVar);
            ChannelLogger z02 = jVar.z0();
            boolean z10 = (this.f41912d == null || (str = (String) jVar.y0().b(this.f41912d)) == null || str.startsWith("google_cfe_")) ? false : true;
            if (jVar.y0().b(hg.e.f40689d) == null && jVar.y0().b(hg.e.f40690e) == null && !z10) {
                g0Var = ig.t.a(b10, this.f41911c, jVar.x0(), z02);
            } else {
                g0Var = new g0(b10, new w(this.f41909a.a(jVar.x0(), z02)), new b(), k.f41903b, z02);
            }
            return ig.t.c(g0Var, z02);
        }

        @Override // ig.g0
        public io.grpc.netty.shaded.io.netty.util.c b() {
            return k.f41906e;
        }

        @Override // ig.g0
        public void close() {
            k.f41902a.finest("ALTS Server ProtocolNegotiator Closed");
            this.f41910b.a();
        }
    }

    /* loaded from: classes5.dex */
    public static final class e implements ig.r {

        /* renamed from: d  reason: collision with root package name */
        static a.c<String> f41913d = c();

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<String> f41914a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.internal.p1<io.grpc.d> f41915b;

        /* renamed from: c  reason: collision with root package name */
        private final p1 f41916c;

        public e(List<String> list, io.grpc.internal.p1<io.grpc.d> p1Var, p1 p1Var2) {
            this.f41914a = ImmutableList.copyOf((Collection) list);
            this.f41915b = (io.grpc.internal.p1) com.google.common.base.o.t(p1Var, "handshakerChannelPool");
            this.f41916c = (p1) com.google.common.base.o.t(p1Var2, "sslContext");
        }

        private static a.c<String> c() {
            try {
                a.c<ih.f> cVar = o1.f39034a;
                return (a.c) o1.class.getField("ATTR_CLUSTER_NAME").get(null);
            } catch (ClassNotFoundException e10) {
                k.f41902a.log(Level.FINE, "Unable to load xDS endpoint cluster name key, this may be expected", (Throwable) e10);
                return null;
            } catch (IllegalAccessException e11) {
                k.f41902a.log(Level.FINE, "Unable to load xDS endpoint cluster name key, this may be expected", (Throwable) e11);
                return null;
            } catch (NoSuchFieldException e12) {
                k.f41902a.log(Level.FINE, "Unable to load xDS endpoint cluster name key, this may be expected", (Throwable) e12);
                return null;
            }
        }

        @Override // ig.g0.a
        public int a() {
            return 443;
        }

        @Override // ig.g0.a
        /* renamed from: d */
        public ig.s b() {
            return new d(this.f41914a, this.f41915b, this.f41916c, f41913d);
        }
    }

    /* loaded from: classes5.dex */
    static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.internal.p1<io.grpc.d> f41917a;

        /* renamed from: b  reason: collision with root package name */
        private io.grpc.d f41918b;

        f(io.grpc.internal.p1<io.grpc.d> p1Var) {
            this.f41917a = (io.grpc.internal.p1) com.google.common.base.o.t(p1Var, "channelPool");
        }

        synchronized void a() {
            io.grpc.d dVar = this.f41918b;
            if (dVar != null) {
                this.f41918b = this.f41917a.b(dVar);
            }
        }

        synchronized io.grpc.d b() {
            if (this.f41918b == null) {
                this.f41918b = this.f41917a.a();
            }
            return this.f41918b;
        }
    }

    private k() {
    }
}
