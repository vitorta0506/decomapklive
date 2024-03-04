package io.grpc.internal;

import com.google.common.base.VerifyException;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import io.grpc.Status;
import io.grpc.internal.z1;
import io.grpc.t0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class e2 {

    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f42567a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, ?> f42568b;

        public a(String str, Map<String, ?> map) {
            this.f42567a = (String) com.google.common.base.o.t(str, "policyName");
            this.f42568b = (Map) com.google.common.base.o.t(map, "rawConfigValue");
        }

        public String a() {
            return this.f42567a;
        }

        public Map<String, ?> b() {
            return this.f42568b;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f42567a.equals(aVar.f42567a) && this.f42568b.equals(aVar.f42568b);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f42567a, this.f42568b);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("policyName", this.f42567a).d("rawConfigValue", this.f42568b).toString();
        }
    }

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final io.grpc.o0 f42569a;

        /* renamed from: b  reason: collision with root package name */
        final Object f42570b;

        public b(io.grpc.o0 o0Var, Object obj) {
            this.f42569a = (io.grpc.o0) com.google.common.base.o.t(o0Var, "provider");
            this.f42570b = obj;
        }

        public Object a() {
            return this.f42570b;
        }

        public io.grpc.o0 b() {
            return this.f42569a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return com.google.common.base.l.a(this.f42569a, bVar.f42569a) && com.google.common.base.l.a(this.f42570b, bVar.f42570b);
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f42569a, this.f42570b);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("provider", this.f42569a).d("config", this.f42570b).toString();
        }
    }

    private e2() {
    }

    public static a A(Map<String, ?> map) {
        if (map.size() == 1) {
            String key = map.entrySet().iterator().next().getKey();
            return new a(key, b1.k(map, key));
        }
        throw new RuntimeException("There are " + map.size() + " fields in a LoadBalancingConfig object. Exactly one is expected. Config=" + map);
    }

    public static List<a> B(List<Map<String, ?>> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map<String, ?> map : list) {
            arrayList.add(A(map));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Double a(Map<String, ?> map) {
        return b1.h(map, "backoffMultiplier");
    }

    public static Map<String, ?> b(Map<String, ?> map) {
        if (map == null) {
            return null;
        }
        return b1.k(map, "healthCheckConfig");
    }

    public static String c(Map<String, ?> map) {
        if (map == null) {
            return null;
        }
        return b1.l(map, "serviceName");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long d(Map<String, ?> map) {
        return b1.m(map, "hedgingDelay");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, ?> e(Map<String, ?> map) {
        return b1.k(map, "hedgingPolicy");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long f(Map<String, ?> map) {
        return b1.m(map, "initialBackoff");
    }

    private static Set<Status.Code> g(Map<String, ?> map, String str) {
        List<?> e10 = b1.e(map, str);
        if (e10 == null) {
            return null;
        }
        return v(e10);
    }

    public static List<Map<String, ?>> h(Map<String, ?> map) {
        String l10;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("loadBalancingConfig")) {
            arrayList.addAll(b1.f(map, "loadBalancingConfig"));
        }
        if (arrayList.isEmpty() && (l10 = b1.l(map, "loadBalancingPolicy")) != null) {
            arrayList.add(Collections.singletonMap(l10.toLowerCase(Locale.ROOT), Collections.emptyMap()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer i(Map<String, ?> map) {
        return b1.i(map, "maxAttempts");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer j(Map<String, ?> map) {
        return b1.i(map, "maxAttempts");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long k(Map<String, ?> map) {
        return b1.m(map, "maxBackoff");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer l(Map<String, ?> map) {
        return b1.i(map, "maxRequestMessageBytes");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer m(Map<String, ?> map) {
        return b1.i(map, "maxResponseMessageBytes");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Map<String, ?>> n(Map<String, ?> map) {
        return b1.f(map, "methodConfig");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o(Map<String, ?> map) {
        return b1.l(map, PushConstants.MZ_PUSH_MESSAGE_METHOD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Map<String, ?>> p(Map<String, ?> map) {
        return b1.f(map, "name");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<Status.Code> q(Map<String, ?> map) {
        Set<Status.Code> g10 = g(map, "nonFatalStatusCodes");
        if (g10 == null) {
            return Collections.unmodifiableSet(EnumSet.noneOf(Status.Code.class));
        }
        com.google.common.base.a0.b(!g10.contains(Status.Code.OK), "%s must not contain OK", "nonFatalStatusCodes");
        return g10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long r(Map<String, ?> map) {
        return b1.m(map, "perAttemptRecvTimeout");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, ?> s(Map<String, ?> map) {
        return b1.k(map, "retryPolicy");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<Status.Code> t(Map<String, ?> map) {
        Set<Status.Code> g10 = g(map, "retryableStatusCodes");
        com.google.common.base.a0.b(g10 != null, "%s is required in retry policy", "retryableStatusCodes");
        com.google.common.base.a0.b(true ^ g10.contains(Status.Code.OK), "%s must not contain OK", "retryableStatusCodes");
        return g10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String u(Map<String, ?> map) {
        return b1.l(map, "service");
    }

    private static Set<Status.Code> v(List<?> list) {
        Status.Code valueOf;
        EnumSet noneOf = EnumSet.noneOf(Status.Code.class);
        for (Object obj : list) {
            if (obj instanceof Double) {
                Double d10 = (Double) obj;
                int intValue = d10.intValue();
                com.google.common.base.a0.b(((double) intValue) == d10.doubleValue(), "Status code %s is not integral", obj);
                valueOf = Status.i(intValue).n();
                com.google.common.base.a0.b(valueOf.value() == d10.intValue(), "Status code %s is not valid", obj);
            } else if (obj instanceof String) {
                try {
                    valueOf = Status.Code.valueOf((String) obj);
                } catch (IllegalArgumentException e10) {
                    throw new VerifyException("Status code " + obj + " is not valid", e10);
                }
            } else {
                throw new VerifyException("Can not convert status code " + obj + " to Status.Code, because its type is " + obj.getClass());
            }
            noneOf.add(valueOf);
        }
        return Collections.unmodifiableSet(noneOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z1.c0 w(Map<String, ?> map) {
        Map<String, ?> k10;
        if (map == null || (k10 = b1.k(map, "retryThrottling")) == null) {
            return null;
        }
        float floatValue = b1.h(k10, "maxTokens").floatValue();
        float floatValue2 = b1.h(k10, "tokenRatio").floatValue();
        com.google.common.base.o.A(floatValue > 0.0f, "maxToken should be greater than zero");
        com.google.common.base.o.A(floatValue2 > 0.0f, "tokenRatio should be greater than zero");
        return new z1.c0(floatValue, floatValue2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long x(Map<String, ?> map) {
        return b1.m(map, "timeout");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean y(Map<String, ?> map) {
        return b1.d(map, "waitForReady");
    }

    public static t0.c z(List<a> list, io.grpc.p0 p0Var) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : list) {
            String a10 = aVar.a();
            io.grpc.o0 d10 = p0Var.d(a10);
            if (d10 == null) {
                arrayList.add(a10);
            } else {
                if (!arrayList.isEmpty()) {
                    Logger.getLogger(e2.class.getName()).log(Level.FINEST, "{0} specified by Service Config are not available", arrayList);
                }
                t0.c e10 = d10.e(aVar.b());
                return e10.d() != null ? e10 : t0.c.a(new b(d10, e10.c()));
            }
        }
        Status status = Status.f41706h;
        return t0.c.b(status.r("None of " + arrayList + " specified by Service Config are available."));
    }
}
