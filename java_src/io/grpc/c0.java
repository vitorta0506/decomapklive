package io.grpc;

import java.security.cert.Certificate;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
/* loaded from: classes5.dex */
public final class c0 {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f42050f = Logger.getLogger(c0.class.getName());

    /* renamed from: g  reason: collision with root package name */
    private static final c0 f42051g = new c0();

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentNavigableMap<Long, f0<Object>> f42052a = new ConcurrentSkipListMap();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentNavigableMap<Long, f0<Object>> f42053b = new ConcurrentSkipListMap();

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentMap<Long, f0<Object>> f42054c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentMap<Long, f0<Object>> f42055d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentMap<Long, Object> f42056e = new ConcurrentHashMap();

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f42057a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f42058b;

        public b(String str, Object obj) {
            this.f42057a = (String) com.google.common.base.o.s(str);
            com.google.common.base.o.A(obj == null || obj.getClass().getName().endsWith("com.google.protobuf.Any"), "the 'any' object must be of type com.google.protobuf.Any");
            this.f42058b = obj;
        }
    }

    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final String f42061a;

        /* renamed from: b  reason: collision with root package name */
        public final Certificate f42062b;

        /* renamed from: c  reason: collision with root package name */
        public final Certificate f42063c;

        public d(SSLSession sSLSession) {
            String cipherSuite = sSLSession.getCipherSuite();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            Certificate certificate = null;
            Certificate certificate2 = localCertificates != null ? localCertificates[0] : null;
            try {
                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                if (peerCertificates != null) {
                    certificate = peerCertificates[0];
                }
            } catch (SSLPeerUnverifiedException e10) {
                c0.f42050f.log(Level.FINE, String.format("Peer cert not available for peerHost=%s", sSLSession.getPeerHost()), (Throwable) e10);
            }
            this.f42061a = cipherSuite;
            this.f42062b = certificate2;
            this.f42063c = certificate;
        }
    }

    private static <T extends f0<?>> void b(Map<Long, T> map, T t10) {
        map.put(Long.valueOf(t10.c().d()), t10);
    }

    public static long f(l0 l0Var) {
        return l0Var.c().d();
    }

    public static c0 g() {
        return f42051g;
    }

    private static <T extends f0<?>> void h(Map<Long, T> map, T t10) {
        map.remove(Long.valueOf(f(t10)));
    }

    public void c(f0<Object> f0Var) {
        b(this.f42055d, f0Var);
    }

    public void d(f0<Object> f0Var) {
        b(this.f42053b, f0Var);
    }

    public void e(f0<Object> f0Var) {
        b(this.f42054c, f0Var);
    }

    public void i(f0<Object> f0Var) {
        h(this.f42055d, f0Var);
    }

    public void j(f0<Object> f0Var) {
        h(this.f42053b, f0Var);
    }

    public void k(f0<Object> f0Var) {
        h(this.f42054c, f0Var);
    }

    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final d f42059a;

        /* renamed from: b  reason: collision with root package name */
        public final b f42060b;

        public c(d dVar) {
            this.f42059a = (d) com.google.common.base.o.s(dVar);
            this.f42060b = null;
        }

        public c(b bVar) {
            this.f42059a = null;
            this.f42060b = (b) com.google.common.base.o.s(bVar);
        }
    }
}
