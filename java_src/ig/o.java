package ig;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.w0;
import io.grpc.netty.shaded.io.netty.handler.ssl.ApplicationProtocolConfig;
import io.grpc.netty.shaded.io.netty.handler.ssl.SslProvider;
import io.grpc.netty.shaded.io.netty.handler.ssl.q1;
import io.grpc.netty.shaded.io.netty.handler.ssl.w1;
import java.security.Provider;
import java.security.Security;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f41257a = Logger.getLogger(o.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f41258b;

    /* renamed from: c  reason: collision with root package name */
    private static final ApplicationProtocolConfig f41259c;

    /* renamed from: d  reason: collision with root package name */
    private static final ApplicationProtocolConfig f41260d;

    /* renamed from: e  reason: collision with root package name */
    private static final ApplicationProtocolConfig f41261e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41262a;

        static {
            int[] iArr = new int[SslProvider.values().length];
            f41262a = iArr;
            try {
                iArr[SslProvider.JDK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41262a[SslProvider.OPENSSL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        static final Provider f41263a;

        /* renamed from: b  reason: collision with root package name */
        static final Throwable f41264b;

        static {
            Provider provider = null;
            try {
                th = null;
                provider = io.grpc.internal.w.c();
            } catch (Throwable th2) {
                th = th2;
            }
            f41263a = provider;
            f41264b = th;
        }
    }

    static {
        List<String> unmodifiableList = Collections.unmodifiableList(Arrays.asList("h2"));
        f41258b = unmodifiableList;
        ApplicationProtocolConfig.Protocol protocol = ApplicationProtocolConfig.Protocol.ALPN;
        ApplicationProtocolConfig.SelectorFailureBehavior selectorFailureBehavior = ApplicationProtocolConfig.SelectorFailureBehavior.NO_ADVERTISE;
        ApplicationProtocolConfig.SelectedListenerFailureBehavior selectedListenerFailureBehavior = ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT;
        f41259c = new ApplicationProtocolConfig(protocol, selectorFailureBehavior, selectedListenerFailureBehavior, (Iterable<String>) unmodifiableList);
        f41260d = new ApplicationProtocolConfig(ApplicationProtocolConfig.Protocol.NPN, selectorFailureBehavior, selectedListenerFailureBehavior, (Iterable<String>) unmodifiableList);
        f41261e = new ApplicationProtocolConfig(ApplicationProtocolConfig.Protocol.NPN_AND_ALPN, selectorFailureBehavior, selectedListenerFailureBehavior, (Iterable<String>) unmodifiableList);
    }

    private o() {
    }

    public static q1 a(q1 q1Var) {
        return b(q1Var, d());
    }

    public static q1 b(q1 q1Var, SslProvider sslProvider) {
        ApplicationProtocolConfig applicationProtocolConfig;
        int i9 = a.f41262a[sslProvider.ordinal()];
        if (i9 == 1) {
            Provider e10 = e();
            if (e10 != null) {
                return c(q1Var, e10);
            }
            throw new IllegalArgumentException("Could not find Jetty NPN/ALPN or Conscrypt as installed JDK providers");
        } else if (i9 == 2) {
            if (io.grpc.netty.shaded.io.netty.handler.ssl.e0.g()) {
                applicationProtocolConfig = f41261e;
            } else {
                applicationProtocolConfig = f41260d;
            }
            return q1Var.j(SslProvider.OPENSSL).c(w0.f44457a, w1.f44846a).a(applicationProtocolConfig);
        } else {
            throw new IllegalArgumentException("Unsupported provider: " + sslProvider);
        }
    }

    public static q1 c(q1 q1Var, Provider provider) {
        ApplicationProtocolConfig applicationProtocolConfig;
        if ("SunJSSE".equals(provider.getName())) {
            if (u.d()) {
                applicationProtocolConfig = f41259c;
            } else if (u.e()) {
                applicationProtocolConfig = f41260d;
            } else if (u.c()) {
                applicationProtocolConfig = f41259c;
            } else {
                throw new IllegalArgumentException(provider.getName() + " selected, but Java 9+ and Jetty NPN/ALPN unavailable");
            }
        } else if (!"IBMJSSE2".equals(provider.getName()) && !"OpenJSSE".equals(provider.getName())) {
            if (io.grpc.internal.w.a(provider)) {
                applicationProtocolConfig = f41259c;
                q1Var.h("TLSv1.2");
            } else {
                throw new IllegalArgumentException("Unknown provider; can't configure: " + provider);
            }
        } else if (u.c()) {
            applicationProtocolConfig = f41259c;
        } else {
            throw new IllegalArgumentException(provider.getName() + " selected, but Java 9+ ALPN unavailable");
        }
        return q1Var.j(SslProvider.JDK).c(w0.f44457a, w1.f44846a).a(applicationProtocolConfig).i(provider);
    }

    private static SslProvider d() {
        if (io.grpc.netty.shaded.io.netty.handler.ssl.e0.h()) {
            f41257a.log(Level.FINE, "Selecting OPENSSL");
            return SslProvider.OPENSSL;
        }
        Provider e10 = e();
        if (e10 != null) {
            f41257a.log(Level.FINE, "Selecting JDK with provider {0}", e10);
            return SslProvider.JDK;
        }
        Logger logger = f41257a;
        logger.log(Level.INFO, "Java 9 ALPN API unavailable (this may be normal)");
        logger.log(Level.INFO, "netty-tcnative unavailable (this may be normal)", io.grpc.netty.shaded.io.netty.handler.ssl.e0.q());
        logger.log(Level.INFO, "Conscrypt not found (this may be normal)", b.f41264b);
        logger.log(Level.INFO, "Jetty ALPN unavailable (this may be normal)", u.b());
        throw new IllegalStateException("Could not find TLS ALPN provider; no working netty-tcnative, Conscrypt, or Jetty NPN/ALPN available");
    }

    private static Provider e() {
        Provider[] providers;
        for (Provider provider : Security.getProviders("SSLContext.TLS")) {
            if ("SunJSSE".equals(provider.getName())) {
                if (u.d() || u.e() || u.c()) {
                    return provider;
                }
            } else if (!"IBMJSSE2".equals(provider.getName()) && !"OpenJSSE".equals(provider.getName())) {
                if (io.grpc.internal.w.a(provider)) {
                    return provider;
                }
            } else if (u.c()) {
                return provider;
            }
        }
        Provider provider2 = b.f41263a;
        if (provider2 != null) {
            return provider2;
        }
        return null;
    }

    public static q1 f() {
        return a(q1.d());
    }
}
