package io.grpc;

import io.grpc.b1;
import io.grpc.internal.s1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class p0 {

    /* renamed from: d  reason: collision with root package name */
    private static p0 f45309d;

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashSet<o0> f45311a = new LinkedHashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap<String, o0> f45312b = new LinkedHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f45308c = Logger.getLogger(p0.class.getName());

    /* renamed from: e  reason: collision with root package name */
    private static final Iterable<Class<?>> f45310e = c();

    /* loaded from: classes5.dex */
    private static final class a implements b1.b<o0> {
        a() {
        }

        @Override // io.grpc.b1.b
        /* renamed from: c */
        public int b(o0 o0Var) {
            return o0Var.c();
        }

        @Override // io.grpc.b1.b
        /* renamed from: d */
        public boolean a(o0 o0Var) {
            return o0Var.d();
        }
    }

    private synchronized void a(o0 o0Var) {
        com.google.common.base.o.e(o0Var.d(), "isAvailable() returned false");
        this.f45311a.add(o0Var);
    }

    public static synchronized p0 b() {
        p0 p0Var;
        synchronized (p0.class) {
            if (f45309d == null) {
                List<o0> e10 = b1.e(o0.class, f45310e, o0.class.getClassLoader(), new a());
                f45309d = new p0();
                for (o0 o0Var : e10) {
                    Logger logger = f45308c;
                    logger.fine("Service loader found " + o0Var);
                    if (o0Var.d()) {
                        f45309d.a(o0Var);
                    }
                }
                f45309d.e();
            }
            p0Var = f45309d;
        }
        return p0Var;
    }

    static List<Class<?>> c() {
        ArrayList arrayList = new ArrayList();
        try {
            int i9 = s1.f43059b;
            arrayList.add(s1.class);
        } catch (ClassNotFoundException e10) {
            f45308c.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e10);
        }
        try {
            int i10 = dh.f.f38124b;
            arrayList.add(dh.f.class);
        } catch (ClassNotFoundException e11) {
            f45308c.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e11);
        }
        return Collections.unmodifiableList(arrayList);
    }

    private synchronized void e() {
        this.f45312b.clear();
        Iterator<o0> it = this.f45311a.iterator();
        while (it.hasNext()) {
            o0 next = it.next();
            String b10 = next.b();
            o0 o0Var = this.f45312b.get(b10);
            if (o0Var == null || o0Var.c() < next.c()) {
                this.f45312b.put(b10, next);
            }
        }
    }

    public synchronized o0 d(String str) {
        return this.f45312b.get(com.google.common.base.o.t(str, "policy"));
    }
}
