package m5;

import com.google.api.gax.retrying.RetrySettings;
import com.google.api.gax.rpc.StatusCode;
import com.google.auth.Credentials;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.e9;
import io.grpc.c;
import io.grpc.s0;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public final class p implements com.google.api.gax.rpc.a {

    /* renamed from: k  reason: collision with root package name */
    static final c.a<r5.a> f54882k = c.a.b("gax.tracer");

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.d f54883a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.c f54884b;

    /* renamed from: c  reason: collision with root package name */
    private final Duration f54885c;

    /* renamed from: d  reason: collision with root package name */
    private final Duration f54886d;

    /* renamed from: e  reason: collision with root package name */
    private final Duration f54887e;

    /* renamed from: f  reason: collision with root package name */
    private final Integer f54888f;

    /* renamed from: g  reason: collision with root package name */
    private final RetrySettings f54889g;

    /* renamed from: h  reason: collision with root package name */
    private final ImmutableSet<StatusCode.Code> f54890h;

    /* renamed from: i  reason: collision with root package name */
    private final ImmutableMap<String, List<String>> f54891i;

    /* renamed from: j  reason: collision with root package name */
    private final p5.a f54892j;

    private p(io.grpc.d dVar, io.grpc.c cVar, Duration duration, Duration duration2, Duration duration3, Integer num, ImmutableMap<String, List<String>> immutableMap, p5.a aVar, RetrySettings retrySettings, Set<StatusCode.Code> set) {
        this.f54883a = dVar;
        this.f54884b = (io.grpc.c) com.google.common.base.o.s(cVar);
        this.f54885c = duration;
        this.f54886d = duration2;
        this.f54887e = duration3;
        this.f54888f = num;
        this.f54891i = (ImmutableMap) com.google.common.base.o.s(immutableMap);
        this.f54892j = (p5.a) com.google.common.base.o.s(aVar);
        this.f54889g = retrySettings;
        this.f54890h = set == null ? null : ImmutableSet.copyOf((Collection) set);
    }

    public static p a() {
        return new p(null, io.grpc.c.f42037k, null, null, null, null, ImmutableMap.of(), p5.a.a(), null, null);
    }

    @Override // com.google.api.gax.rpc.a
    public r5.a e() {
        r5.a aVar = (r5.a) this.f54884b.h(f54882k);
        return aVar == null ? r5.c.h() : aVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return Objects.equals(this.f54883a, pVar.f54883a) && Objects.equals(this.f54884b, pVar.f54884b) && Objects.equals(this.f54885c, pVar.f54885c) && Objects.equals(this.f54886d, pVar.f54886d) && Objects.equals(this.f54887e, pVar.f54887e) && Objects.equals(this.f54888f, pVar.f54888f) && Objects.equals(this.f54891i, pVar.f54891i) && Objects.equals(this.f54892j, pVar.f54892j) && Objects.equals(this.f54889g, pVar.f54889g) && Objects.equals(this.f54890h, pVar.f54890h);
    }

    @Override // com.google.api.gax.rpc.a
    public com.google.api.gax.rpc.a f(com.google.api.gax.rpc.a aVar) {
        if (aVar == null) {
            return this;
        }
        if (aVar instanceof p) {
            p pVar = (p) aVar;
            io.grpc.d dVar = pVar.f54883a;
            if (dVar == null) {
                dVar = this.f54883a;
            }
            io.grpc.d dVar2 = dVar;
            io.grpc.t d10 = pVar.f54884b.d();
            if (d10 == null) {
                d10 = this.f54884b.d();
            }
            io.grpc.b c10 = pVar.f54884b.c();
            if (c10 == null) {
                c10 = this.f54884b.c();
            }
            io.grpc.c cVar = pVar.f54884b;
            c.a<r5.a> aVar2 = f54882k;
            r5.a aVar3 = (r5.a) cVar.h(aVar2);
            if (aVar3 == null) {
                aVar3 = (r5.a) this.f54884b.h(aVar2);
            }
            Duration duration = pVar.f54885c;
            if (duration == null) {
                duration = this.f54885c;
            }
            Duration duration2 = pVar.f54886d;
            if (duration2 == null) {
                duration2 = this.f54886d;
            }
            Duration duration3 = pVar.f54887e;
            if (duration3 == null) {
                duration3 = this.f54887e;
            }
            Integer num = pVar.f54888f;
            if (num == null) {
                num = this.f54888f;
            }
            RetrySettings retrySettings = pVar.f54889g;
            if (retrySettings == null) {
                retrySettings = this.f54889g;
            }
            RetrySettings retrySettings2 = retrySettings;
            ImmutableSet<StatusCode.Code> immutableSet = pVar.f54890h;
            if (immutableSet == null) {
                immutableSet = this.f54890h;
            }
            ImmutableSet<StatusCode.Code> immutableSet2 = immutableSet;
            ImmutableMap<String, List<String>> a10 = p5.c.a(this.f54891i, pVar.f54891i);
            p5.a b10 = this.f54892j.b(pVar.f54892j);
            io.grpc.c l10 = pVar.f54884b.k(c10).l(d10);
            if (aVar3 != null) {
                l10 = l10.q(aVar2, aVar3);
            }
            return new p(dVar2, l10, duration, duration2, duration3, num, a10, b10, retrySettings2, immutableSet2);
        }
        throw new IllegalArgumentException("context must be an instance of GrpcCallContext, but found " + aVar.getClass().getName());
    }

    public io.grpc.c g() {
        return this.f54884b;
    }

    public io.grpc.d h() {
        return this.f54883a;
    }

    public int hashCode() {
        return Objects.hash(this.f54883a, this.f54884b, this.f54885c, this.f54886d, this.f54887e, this.f54888f, this.f54891i, this.f54892j, this.f54889g, this.f54890h);
    }

    public Integer i() {
        return this.f54888f;
    }

    public Map<String, List<String>> j() {
        return this.f54891i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0 k() {
        s0 s0Var = new s0();
        e9<Map.Entry<String, List<String>>> it = this.f54891i.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, List<String>> next = it.next();
            String key = next.getKey();
            for (String str : next.getValue()) {
                s0Var.t(s0.i.e(key, s0.f45383e), str);
            }
        }
        return s0Var;
    }

    public Duration l() {
        return this.f54885c;
    }

    public p m(io.grpc.c cVar) {
        return new p(this.f54883a, cVar, this.f54885c, this.f54886d, this.f54887e, this.f54888f, this.f54891i, this.f54892j, this.f54889g, this.f54890h);
    }

    public p n(io.grpc.d dVar) {
        return new p(dVar, this.f54884b, this.f54885c, this.f54886d, this.f54887e, this.f54888f, this.f54891i, this.f54892j, this.f54889g, this.f54890h);
    }

    @Override // com.google.api.gax.rpc.a
    /* renamed from: o */
    public p b(Credentials credentials) {
        com.google.common.base.o.s(credentials);
        return m(this.f54884b.k(gg.b.a(credentials)));
    }

    @Override // com.google.api.gax.rpc.a
    /* renamed from: p */
    public p d(r5.a aVar) {
        com.google.common.base.o.s(aVar);
        return m(this.f54884b.q(f54882k, aVar));
    }

    @Override // com.google.api.gax.rpc.a
    /* renamed from: q */
    public p c(com.google.api.gax.rpc.h0 h0Var) {
        com.google.common.base.o.s(h0Var);
        if (h0Var instanceof h0) {
            return n(((h0) h0Var).c());
        }
        throw new IllegalArgumentException("Expected GrpcTransportChannel, got " + h0Var.getClass().getName());
    }
}
