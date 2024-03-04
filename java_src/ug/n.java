package ug;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
/* loaded from: classes5.dex */
public class n<V> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f58490b = io.grpc.netty.shaded.io.netty.util.internal.k.j();

    /* renamed from: a  reason: collision with root package name */
    private final int f58491a = io.grpc.netty.shaded.io.netty.util.internal.k.j();

    private static void a(io.grpc.netty.shaded.io.netty.util.internal.k kVar, n<?> nVar) {
        Set newSetFromMap;
        int i9 = f58490b;
        Object h10 = kVar.h(i9);
        if (h10 != io.grpc.netty.shaded.io.netty.util.internal.k.f45082n && h10 != null) {
            newSetFromMap = (Set) h10;
        } else {
            newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
            kVar.o(i9, newSetFromMap);
        }
        newSetFromMap.add(nVar);
    }

    private V f(io.grpc.netty.shaded.io.netty.util.internal.k kVar) {
        V v10;
        try {
            v10 = e();
        } catch (Exception e10) {
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
            v10 = null;
        }
        kVar.o(this.f58491a, v10);
        a(kVar, this);
        return v10;
    }

    public static void j() {
        io.grpc.netty.shaded.io.netty.util.internal.k f10 = io.grpc.netty.shaded.io.netty.util.internal.k.f();
        if (f10 == null) {
            return;
        }
        try {
            Object h10 = f10.h(f58490b);
            if (h10 != null && h10 != io.grpc.netty.shaded.io.netty.util.internal.k.f45082n) {
                for (n nVar : (n[]) ((Set) h10).toArray(new n[0])) {
                    nVar.i(f10);
                }
            }
        } finally {
            io.grpc.netty.shaded.io.netty.util.internal.k.l();
        }
    }

    private static void k(io.grpc.netty.shaded.io.netty.util.internal.k kVar, n<?> nVar) {
        Object h10 = kVar.h(f58490b);
        if (h10 == io.grpc.netty.shaded.io.netty.util.internal.k.f45082n || h10 == null) {
            return;
        }
        ((Set) h10).remove(nVar);
    }

    private void n(io.grpc.netty.shaded.io.netty.util.internal.k kVar, V v10) {
        if (kVar.o(this.f58491a, v10)) {
            a(kVar, this);
        }
    }

    public final V b() {
        io.grpc.netty.shaded.io.netty.util.internal.k e10 = io.grpc.netty.shaded.io.netty.util.internal.k.e();
        V v10 = (V) e10.h(this.f58491a);
        return v10 != io.grpc.netty.shaded.io.netty.util.internal.k.f45082n ? v10 : f(e10);
    }

    public final V c(io.grpc.netty.shaded.io.netty.util.internal.k kVar) {
        V v10 = (V) kVar.h(this.f58491a);
        return v10 != io.grpc.netty.shaded.io.netty.util.internal.k.f45082n ? v10 : f(kVar);
    }

    public final V d() {
        V v10;
        io.grpc.netty.shaded.io.netty.util.internal.k f10 = io.grpc.netty.shaded.io.netty.util.internal.k.f();
        if (f10 == null || (v10 = (V) f10.h(this.f58491a)) == io.grpc.netty.shaded.io.netty.util.internal.k.f45082n) {
            return null;
        }
        return v10;
    }

    protected V e() throws Exception {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g(V v10) throws Exception {
    }

    public final void h() {
        i(io.grpc.netty.shaded.io.netty.util.internal.k.f());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i(io.grpc.netty.shaded.io.netty.util.internal.k kVar) {
        if (kVar == null) {
            return;
        }
        Object m10 = kVar.m(this.f58491a);
        k(kVar, this);
        if (m10 != io.grpc.netty.shaded.io.netty.util.internal.k.f45082n) {
            try {
                g(m10);
            } catch (Exception e10) {
                io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
            }
        }
    }

    public final void l(io.grpc.netty.shaded.io.netty.util.internal.k kVar, V v10) {
        if (v10 != io.grpc.netty.shaded.io.netty.util.internal.k.f45082n) {
            n(kVar, v10);
        } else {
            i(kVar);
        }
    }

    public final void m(V v10) {
        if (v10 != io.grpc.netty.shaded.io.netty.util.internal.k.f45082n) {
            n(io.grpc.netty.shaded.io.netty.util.internal.k.e(), v10);
        } else {
            h();
        }
    }
}
