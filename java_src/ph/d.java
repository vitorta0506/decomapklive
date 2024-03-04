package ph;

import io.grpc.r;
import io.opencensus.trace.Span;
@Deprecated
/* loaded from: classes7.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final r.e<Span> f56892a = r.q("opencensus-trace-span-key");

    public static Span a(r rVar) {
        Span a10 = f56892a.a((r) lh.b.b(rVar, "context"));
        return a10 == null ? io.opencensus.trace.d.f51296e : a10;
    }

    public static r b(r rVar, Span span) {
        return ((r) lh.b.b(rVar, "context")).v(f56892a, span);
    }
}
