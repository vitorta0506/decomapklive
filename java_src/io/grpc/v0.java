package io.grpc;

import com.google.common.collect.ImmutableMap;
import io.grpc.b1;
import io.grpc.t0;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class v0 {

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f45462e = Logger.getLogger(v0.class.getName());

    /* renamed from: f  reason: collision with root package name */
    private static v0 f45463f;

    /* renamed from: a  reason: collision with root package name */
    private final t0.d f45464a = new b();

    /* renamed from: b  reason: collision with root package name */
    private String f45465b = "unknown";

    /* renamed from: c  reason: collision with root package name */
    private final LinkedHashSet<u0> f45466c = new LinkedHashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private ImmutableMap<String, u0> f45467d = ImmutableMap.of();

    /* loaded from: classes5.dex */
    private final class b extends t0.d {
        private b() {
        }

        @Override // io.grpc.t0.d
        public String a() {
            String str;
            synchronized (v0.this) {
                str = v0.this.f45465b;
            }
            return str;
        }

        @Override // io.grpc.t0.d
        public t0 b(URI uri, t0.b bVar) {
            u0 u0Var = v0.this.f().get(uri.getScheme());
            if (u0Var == null) {
                return null;
            }
            return u0Var.b(uri, bVar);
        }
    }

    /* loaded from: classes5.dex */
    private static final class c implements b1.b<u0> {
        private c() {
        }

        @Override // io.grpc.b1.b
        /* renamed from: c */
        public int b(u0 u0Var) {
            return u0Var.e();
        }

        @Override // io.grpc.b1.b
        /* renamed from: d */
        public boolean a(u0 u0Var) {
            return u0Var.d();
        }
    }

    private synchronized void b(u0 u0Var) {
        com.google.common.base.o.e(u0Var.d(), "isAvailable() returned false");
        this.f45466c.add(u0Var);
    }

    public static synchronized v0 d() {
        v0 v0Var;
        synchronized (v0.class) {
            if (f45463f == null) {
                List<u0> e10 = b1.e(u0.class, e(), u0.class.getClassLoader(), new c());
                if (e10.isEmpty()) {
                    f45462e.warning("No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration");
                }
                f45463f = new v0();
                for (u0 u0Var : e10) {
                    Logger logger = f45462e;
                    logger.fine("Service loader found " + u0Var);
                    if (u0Var.d()) {
                        f45463f.b(u0Var);
                    }
                }
                f45463f.g();
            }
            v0Var = f45463f;
        }
        return v0Var;
    }

    static List<Class<?>> e() {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(io.grpc.internal.d0.class);
        } catch (ClassNotFoundException e10) {
            f45462e.log(Level.FINE, "Unable to find DNS NameResolver", (Throwable) e10);
        }
        return Collections.unmodifiableList(arrayList);
    }

    private synchronized void g() {
        HashMap hashMap = new HashMap();
        int i9 = Integer.MIN_VALUE;
        String str = "unknown";
        Iterator<u0> it = this.f45466c.iterator();
        while (it.hasNext()) {
            u0 next = it.next();
            String c10 = next.c();
            u0 u0Var = (u0) hashMap.get(c10);
            if (u0Var == null || u0Var.e() < next.e()) {
                hashMap.put(c10, next);
            }
            if (i9 < next.e()) {
                i9 = next.e();
                str = next.c();
            }
        }
        this.f45467d = ImmutableMap.copyOf((Map) hashMap);
        this.f45465b = str;
    }

    public t0.d c() {
        return this.f45464a;
    }

    synchronized Map<String, u0> f() {
        return this.f45467d;
    }
}
