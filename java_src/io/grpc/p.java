package io.grpc;

import io.grpc.l;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes5.dex */
public final class p {

    /* renamed from: b  reason: collision with root package name */
    private static final p f45306b = new p(new l.a(), l.b.f43352a);

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentMap<String, o> f45307a = new ConcurrentHashMap();

    p(o... oVarArr) {
        for (o oVar : oVarArr) {
            this.f45307a.put(oVar.a(), oVar);
        }
    }

    public static p a() {
        return f45306b;
    }

    public o b(String str) {
        return this.f45307a.get(str);
    }
}
