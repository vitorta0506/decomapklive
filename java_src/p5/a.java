package p5;

import com.google.api.gax.rpc.a;
import com.google.common.base.o;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.e9;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f56742b = new a(ImmutableMap.of());

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<a.C0094a, Object> f56743a;

    private a(ImmutableMap<a.C0094a, Object> immutableMap) {
        this.f56743a = (ImmutableMap) o.s(immutableMap);
    }

    public static a a() {
        return f56742b;
    }

    public a b(a aVar) {
        o.s(aVar);
        ImmutableMap.b k10 = ImmutableMap.builder().k(aVar.f56743a);
        e9<a.C0094a> it = this.f56743a.keySet().iterator();
        while (it.hasNext()) {
            a.C0094a next = it.next();
            if (!aVar.f56743a.containsKey(next)) {
                k10.h(next, this.f56743a.get(next));
            }
        }
        return new a(k10.a());
    }
}
