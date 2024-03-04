package jg;

import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.channel.f0;
import io.grpc.netty.shaded.io.netty.channel.h;
import io.grpc.netty.shaded.io.netty.channel.i;
import io.grpc.netty.shaded.io.netty.channel.k;
import io.grpc.netty.shaded.io.netty.channel.m0;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.util.internal.b0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.net.SocketAddress;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import jg.a;
/* loaded from: classes5.dex */
public abstract class a<B extends a<B, C>, C extends io.grpc.netty.shaded.io.netty.channel.e> implements Cloneable {

    /* renamed from: g  reason: collision with root package name */
    private static final Map.Entry<r<?>, Object>[] f53239g = new Map.Entry[0];

    /* renamed from: h  reason: collision with root package name */
    private static final Map.Entry<io.grpc.netty.shaded.io.netty.util.e<?>, Object>[] f53240h = new Map.Entry[0];

    /* renamed from: a  reason: collision with root package name */
    volatile m0 f53241a;

    /* renamed from: b  reason: collision with root package name */
    private volatile e<? extends C> f53242b;

    /* renamed from: c  reason: collision with root package name */
    private volatile SocketAddress f53243c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<r<?>, Object> f53244d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<io.grpc.netty.shaded.io.netty.util.e<?>, Object> f53245e;

    /* renamed from: f  reason: collision with root package name */
    private volatile k f53246f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        this.f53244d = new LinkedHashMap();
        this.f53245e = new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void A(io.grpc.netty.shaded.io.netty.channel.e eVar, Map.Entry<r<?>, Object>[] entryArr, io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar) {
        for (Map.Entry<r<?>, Object> entry : entryArr) {
            z(eVar, entry.getKey(), entry.getValue(), bVar);
        }
    }

    static <K, V> Map<K, V> i(Map<K, V> map) {
        if (map.isEmpty()) {
            return Collections.emptyMap();
        }
        return Collections.unmodifiableMap(new HashMap(map));
    }

    static Map.Entry<io.grpc.netty.shaded.io.netty.util.e<?>, Object>[] r(Map<io.grpc.netty.shaded.io.netty.util.e<?>, Object> map) {
        return (Map.Entry[]) map.entrySet().toArray(f53240h);
    }

    static Map.Entry<r<?>, Object>[] t(Map<r<?>, Object> map) {
        Map.Entry<r<?>, Object>[] entryArr;
        synchronized (map) {
            entryArr = (Map.Entry[]) new LinkedHashMap(map).entrySet().toArray(f53239g);
        }
        return entryArr;
    }

    private B x() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void y(io.grpc.netty.shaded.io.netty.channel.e eVar, Map.Entry<io.grpc.netty.shaded.io.netty.util.e<?>, Object>[] entryArr) {
        for (Map.Entry<io.grpc.netty.shaded.io.netty.util.e<?>, Object> entry : entryArr) {
            eVar.T(entry.getKey()).set(entry.getValue());
        }
    }

    private static void z(io.grpc.netty.shaded.io.netty.channel.e eVar, r<?> rVar, Object obj, io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar) {
        try {
            if (eVar.b0().k(rVar, obj)) {
                return;
            }
            bVar.warn("Unknown channel option '{}' for channel '{}'", rVar, eVar);
        } catch (Throwable th2) {
            bVar.warn("Failed to set channel option '{}' with value '{}' for channel '{}'", rVar, obj, eVar, th2);
        }
    }

    public B B() {
        if (this.f53241a != null) {
            if (this.f53242b != null) {
                return x();
            }
            throw new IllegalStateException("channel or channelFactory not set");
        }
        throw new IllegalStateException("group not set");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<io.grpc.netty.shaded.io.netty.util.e<?>, Object> a() {
        return i(this.f53245e);
    }

    final Map<io.grpc.netty.shaded.io.netty.util.e<?>, Object> b() {
        return this.f53245e;
    }

    public B d(h<? extends C> hVar) {
        return e(hVar);
    }

    @Deprecated
    public B e(e<? extends C> eVar) {
        s.h(eVar, "channelFactory");
        if (this.f53242b == null) {
            this.f53242b = eVar;
            return x();
        }
        throw new IllegalStateException("channelFactory set already");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e<? extends C> f() {
        return this.f53242b;
    }

    @Override // 
    /* renamed from: g */
    public abstract B clone();

    public abstract b<B, C> h();

    @Deprecated
    public final m0 j() {
        return this.f53241a;
    }

    public B k(m0 m0Var) {
        s.h(m0Var, "group");
        if (this.f53241a == null) {
            this.f53241a = m0Var;
            return x();
        }
        throw new IllegalStateException("group set already");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final k l() {
        return this.f53246f;
    }

    public B m(k kVar) {
        this.f53246f = (k) s.h(kVar, "handler");
        return x();
    }

    abstract void n(io.grpc.netty.shaded.io.netty.channel.e eVar) throws Exception;

    final i o() {
        C c10 = null;
        try {
            c10 = this.f53242b.a();
            n(c10);
            i i02 = h().c().i0(c10);
            if (i02.L() != null) {
                if (c10.O()) {
                    c10.close();
                } else {
                    c10.k0().V();
                }
            }
            return i02;
        } catch (Throwable th2) {
            if (c10 != null) {
                c10.k0().V();
                return new f0(c10, ug.s.f58497q).u(th2);
            }
            return new f0(new f(), ug.s.f58497q).u(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SocketAddress p() {
        return this.f53243c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map.Entry<io.grpc.netty.shaded.io.netty.util.e<?>, Object>[] q() {
        return r(b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map.Entry<r<?>, Object>[] s() {
        return t(this.f53244d);
    }

    public String toString() {
        return b0.m(this) + '(' + h() + ')';
    }

    public <T> B u(r<T> rVar, T t10) {
        s.h(rVar, "option");
        synchronized (this.f53244d) {
            if (t10 == null) {
                this.f53244d.remove(rVar);
            } else {
                this.f53244d.put(rVar, t10);
            }
        }
        return x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<r<?>, Object> v() {
        Map<r<?>, Object> i9;
        synchronized (this.f53244d) {
            i9 = i(this.f53244d);
        }
        return i9;
    }

    public i w() {
        B();
        return o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(a<B, C> aVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f53244d = linkedHashMap;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f53245e = concurrentHashMap;
        this.f53241a = aVar.f53241a;
        this.f53242b = aVar.f53242b;
        this.f53246f = aVar.f53246f;
        this.f53243c = aVar.f53243c;
        synchronized (aVar.f53244d) {
            linkedHashMap.putAll(aVar.f53244d);
        }
        concurrentHashMap.putAll(aVar.f53245e);
    }
}
