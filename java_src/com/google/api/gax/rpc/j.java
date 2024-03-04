package com.google.api.gax.rpc;

import com.google.api.core.NanoClock;
import com.google.api.gax.rpc.f;
import com.google.api.gax.rpc.internal.QuotaProjectIdHidingCredentials;
import com.google.api.gax.rpc.mtls.MtlsProvider;
import com.google.api.gax.tracing.ApiTracerFactory;
import com.google.auth.Credentials;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.w7;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public abstract class j {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11306a;

        static {
            int[] iArr = new int[MtlsProvider.MtlsEndpointUsagePolicy.values().length];
            f11306a = iArr;
            try {
                iArr[MtlsProvider.MtlsEndpointUsagePolicy.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11306a[MtlsProvider.MtlsEndpointUsagePolicy.NEVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b {
        public abstract j a();

        public abstract b b(List<l5.d> list);

        public abstract b c(k5.a aVar);

        public abstract b d(Credentials credentials);

        public abstract b e(com.google.api.gax.rpc.a aVar);

        public abstract b f(String str);

        public abstract b g(ScheduledExecutorService scheduledExecutorService);

        public abstract b h(Map<String, String> map);

        protected abstract b i(Map<String, String> map);

        public abstract b j(String str);

        public abstract b k(l0 l0Var);

        public abstract b l(Duration duration);

        public abstract b m(ApiTracerFactory apiTracerFactory);

        public abstract b n(h0 h0Var);
    }

    public static j a(g0 g0Var) throws IOException {
        k5.a b10 = g0Var.b();
        l5.h a10 = g0Var.a();
        ScheduledExecutorService b11 = a10.b();
        Credentials a11 = g0Var.c().a();
        if (g0Var.i() != null) {
            a11 = new QuotaProjectIdHidingCredentials(a11);
        }
        i0 n9 = g0Var.n();
        if (n9.d() && g0Var.e() != null) {
            n9 = n9.c(b11);
        }
        Map<String, String> j10 = j(g0Var);
        if (n9.f()) {
            n9 = n9.i(j10);
        }
        if (n9.j() && a11 != null) {
            n9 = n9.b(a11);
        }
        String g10 = g(g0Var.d(), g0Var.h(), g0Var.l(), new MtlsProvider());
        if (n9.h()) {
            n9 = n9.g(g10);
        }
        h0 e10 = n9.e();
        com.google.api.gax.rpc.a c10 = e10.b1().c(e10);
        if (a11 != null) {
            c10 = c10.b(a11);
        }
        m0 k10 = g0Var.k();
        l0 l0Var = null;
        if (k10 != null) {
            if (k10.g()) {
                k10 = k10.e(g0Var.j());
            }
            if (k10.h()) {
                k10 = k10.b(b10);
            }
            if (k10.d()) {
                k10 = k10.c(b11);
            }
            l0Var = k10.f();
        }
        ImmutableList.b builder = ImmutableList.builder();
        if (n9.a()) {
            builder.a(e10);
        }
        if (a10.a()) {
            builder.a(new l5.g(b11));
        }
        if (k10 != null && k10.a()) {
            builder.a(l0Var);
        }
        return q().b(builder.j()).g(b11).d(a11).n(e10).h(ImmutableMap.copyOf((Map) g0Var.f().getHeaders())).i(ImmutableMap.copyOf((Map) g0Var.g().getHeaders())).c(b10).e(c10).f(g0Var.d()).j(g0Var.i()).k(l0Var).l(g0Var.j()).m(g0Var.m()).a();
    }

    static String g(String str, String str2, boolean z10, MtlsProvider mtlsProvider) throws IOException {
        if (z10) {
            int i9 = a.f11306a[mtlsProvider.d().ordinal()];
            return i9 != 1 ? (i9 == 2 || !mtlsProvider.f() || mtlsProvider.b() == null) ? str : str2 : str2;
        }
        return str;
    }

    private static Map<String, String> j(g0 g0Var) {
        Map<String, String> headers = g0Var.f().getHeaders();
        Map<String, String> headers2 = g0Var.g().getHeaders();
        HashMap hashMap = new HashMap();
        for (String str : w7.f(headers.keySet(), headers2.keySet())) {
            if ("user-agent".equals(str)) {
                hashMap.put(str, headers.get(str) + " " + headers2.get(str));
            } else if (!"x-goog-user-project".equals(str) || g0Var.i() == null) {
                throw new IllegalArgumentException("Header provider can't override the header: " + str);
            }
        }
        if (g0Var.i() != null) {
            hashMap.put("x-goog-user-project", g0Var.i());
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.putAll(headers2);
        hashMap2.putAll(headers);
        hashMap2.putAll(hashMap);
        return ImmutableMap.copyOf((Map) hashMap2);
    }

    public static b q() {
        return new f.b().b(Collections.emptyList()).g(Executors.newScheduledThreadPool(0)).h(Collections.emptyMap()).i(Collections.emptyMap()).c(NanoClock.getDefaultClock()).k(null).l(Duration.ZERO).m(com.google.api.gax.tracing.a.b()).j(null);
    }

    public abstract List<l5.d> b();

    public abstract k5.a c();

    public abstract Credentials d();

    public abstract com.google.api.gax.rpc.a e();

    public abstract String f();

    public abstract ScheduledExecutorService h();

    public abstract Map<String, String> i();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Map<String, String> k();

    public abstract String l();

    public abstract l0 m();

    public abstract Duration n();

    public abstract ApiTracerFactory o();

    public abstract h0 p();
}
