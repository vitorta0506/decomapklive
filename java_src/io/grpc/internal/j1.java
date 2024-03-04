package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.c;
import io.grpc.d0;
import io.grpc.internal.z1;
import io.grpc.n0;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class j1 {

    /* renamed from: a  reason: collision with root package name */
    private final b f42806a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, b> f42807b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, b> f42808c;

    /* renamed from: d  reason: collision with root package name */
    private final z1.c0 f42809d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f42810e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, ?> f42811f;

    /* loaded from: classes5.dex */
    static final class b {

        /* renamed from: g  reason: collision with root package name */
        static final c.a<b> f42812g = c.a.b("io.grpc.internal.ManagedChannelServiceConfig.MethodInfo");

        /* renamed from: a  reason: collision with root package name */
        final Long f42813a;

        /* renamed from: b  reason: collision with root package name */
        final Boolean f42814b;

        /* renamed from: c  reason: collision with root package name */
        final Integer f42815c;

        /* renamed from: d  reason: collision with root package name */
        final Integer f42816d;

        /* renamed from: e  reason: collision with root package name */
        final a2 f42817e;

        /* renamed from: f  reason: collision with root package name */
        final t0 f42818f;

        b(Map<String, ?> map, boolean z10, int i9, int i10) {
            this.f42813a = e2.x(map);
            this.f42814b = e2.y(map);
            Integer m10 = e2.m(map);
            this.f42815c = m10;
            if (m10 != null) {
                com.google.common.base.o.m(m10.intValue() >= 0, "maxInboundMessageSize %s exceeds bounds", m10);
            }
            Integer l10 = e2.l(map);
            this.f42816d = l10;
            if (l10 != null) {
                com.google.common.base.o.m(l10.intValue() >= 0, "maxOutboundMessageSize %s exceeds bounds", l10);
            }
            Map<String, ?> s10 = z10 ? e2.s(map) : null;
            this.f42817e = s10 == null ? null : b(s10, i9);
            Map<String, ?> e10 = z10 ? e2.e(map) : null;
            this.f42818f = e10 != null ? a(e10, i10) : null;
        }

        private static t0 a(Map<String, ?> map, int i9) {
            int intValue = ((Integer) com.google.common.base.o.t(e2.i(map), "maxAttempts cannot be empty")).intValue();
            com.google.common.base.o.h(intValue >= 2, "maxAttempts must be greater than 1: %s", intValue);
            int min = Math.min(intValue, i9);
            long longValue = ((Long) com.google.common.base.o.t(e2.d(map), "hedgingDelay cannot be empty")).longValue();
            com.google.common.base.o.j(longValue >= 0, "hedgingDelay must not be negative: %s", longValue);
            return new t0(min, longValue, e2.q(map));
        }

        private static a2 b(Map<String, ?> map, int i9) {
            int intValue = ((Integer) com.google.common.base.o.t(e2.j(map), "maxAttempts cannot be empty")).intValue();
            boolean z10 = true;
            com.google.common.base.o.h(intValue >= 2, "maxAttempts must be greater than 1: %s", intValue);
            int min = Math.min(intValue, i9);
            long longValue = ((Long) com.google.common.base.o.t(e2.f(map), "initialBackoff cannot be empty")).longValue();
            com.google.common.base.o.j(longValue > 0, "initialBackoffNanos must be greater than 0: %s", longValue);
            long longValue2 = ((Long) com.google.common.base.o.t(e2.k(map), "maxBackoff cannot be empty")).longValue();
            com.google.common.base.o.j(longValue2 > 0, "maxBackoff must be greater than 0: %s", longValue2);
            double doubleValue = ((Double) com.google.common.base.o.t(e2.a(map), "backoffMultiplier cannot be empty")).doubleValue();
            com.google.common.base.o.m(doubleValue > 0.0d, "backoffMultiplier must be greater than 0: %s", Double.valueOf(doubleValue));
            Long r10 = e2.r(map);
            com.google.common.base.o.m(r10 == null || r10.longValue() >= 0, "perAttemptRecvTimeout cannot be negative: %s", r10);
            Set<Status.Code> t10 = e2.t(map);
            if (r10 == null && t10.isEmpty()) {
                z10 = false;
            }
            com.google.common.base.o.e(z10, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout");
            return new a2(min, longValue, longValue2, doubleValue, r10, t10);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return com.google.common.base.l.a(this.f42813a, bVar.f42813a) && com.google.common.base.l.a(this.f42814b, bVar.f42814b) && com.google.common.base.l.a(this.f42815c, bVar.f42815c) && com.google.common.base.l.a(this.f42816d, bVar.f42816d) && com.google.common.base.l.a(this.f42817e, bVar.f42817e) && com.google.common.base.l.a(this.f42818f, bVar.f42818f);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f42813a, this.f42814b, this.f42815c, this.f42816d, this.f42817e, this.f42818f);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("timeoutNanos", this.f42813a).d("waitForReady", this.f42814b).d("maxInboundMessageSize", this.f42815c).d("maxOutboundMessageSize", this.f42816d).d("retryPolicy", this.f42817e).d("hedgingPolicy", this.f42818f).toString();
        }
    }

    /* loaded from: classes5.dex */
    static final class c extends io.grpc.d0 {

        /* renamed from: b  reason: collision with root package name */
        final j1 f42819b;

        @Override // io.grpc.d0
        public d0.b a(n0.f fVar) {
            return d0.b.e().b(this.f42819b).a();
        }

        private c(j1 j1Var) {
            this.f42819b = j1Var;
        }
    }

    j1(b bVar, Map<String, b> map, Map<String, b> map2, z1.c0 c0Var, Object obj, Map<String, ?> map3) {
        this.f42806a = bVar;
        this.f42807b = Collections.unmodifiableMap(new HashMap(map));
        this.f42808c = Collections.unmodifiableMap(new HashMap(map2));
        this.f42809d = c0Var;
        this.f42810e = obj;
        this.f42811f = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j1 a() {
        return new j1(null, new HashMap(), new HashMap(), null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j1 b(Map<String, ?> map, boolean z10, int i9, int i10, Object obj) {
        z1.c0 w6 = z10 ? e2.w(map) : null;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Map<String, ?> b10 = e2.b(map);
        List<Map<String, ?>> n9 = e2.n(map);
        if (n9 == null) {
            return new j1(null, hashMap, hashMap2, w6, obj, b10);
        }
        b bVar = null;
        for (Map<String, ?> map2 : n9) {
            b bVar2 = new b(map2, z10, i9, i10);
            List<Map<String, ?>> p10 = e2.p(map2);
            if (p10 != null && !p10.isEmpty()) {
                for (Map<String, ?> map3 : p10) {
                    String u10 = e2.u(map3);
                    String o10 = e2.o(map3);
                    if (com.google.common.base.v.b(u10)) {
                        com.google.common.base.o.m(com.google.common.base.v.b(o10), "missing service name for method %s", o10);
                        com.google.common.base.o.m(bVar == null, "Duplicate default method config in service config %s", map);
                        bVar = bVar2;
                    } else if (com.google.common.base.v.b(o10)) {
                        com.google.common.base.o.m(!hashMap2.containsKey(u10), "Duplicate service %s", u10);
                        hashMap2.put(u10, bVar2);
                    } else {
                        String b11 = MethodDescriptor.b(u10, o10);
                        com.google.common.base.o.m(!hashMap.containsKey(b11), "Duplicate method name %s", b11);
                        hashMap.put(b11, bVar2);
                    }
                }
            }
        }
        return new j1(bVar, hashMap, hashMap2, w6, obj, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.d0 c() {
        if (this.f42808c.isEmpty() && this.f42807b.isEmpty() && this.f42806a == null) {
            return null;
        }
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, ?> d() {
        return this.f42811f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object e() {
        return this.f42810e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j1.class != obj.getClass()) {
            return false;
        }
        j1 j1Var = (j1) obj;
        return com.google.common.base.l.a(this.f42806a, j1Var.f42806a) && com.google.common.base.l.a(this.f42807b, j1Var.f42807b) && com.google.common.base.l.a(this.f42808c, j1Var.f42808c) && com.google.common.base.l.a(this.f42809d, j1Var.f42809d) && com.google.common.base.l.a(this.f42810e, j1Var.f42810e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b f(MethodDescriptor<?, ?> methodDescriptor) {
        b bVar = this.f42807b.get(methodDescriptor.c());
        if (bVar == null) {
            bVar = this.f42808c.get(methodDescriptor.e());
        }
        return bVar == null ? this.f42806a : bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z1.c0 g() {
        return this.f42809d;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f42806a, this.f42807b, this.f42808c, this.f42809d, this.f42810e);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("defaultMethodConfig", this.f42806a).d("serviceMethodMap", this.f42807b).d("serviceMap", this.f42808c).d("retryThrottling", this.f42809d).d("loadBalancingConfig", this.f42810e).toString();
    }
}
