package ph;

import io.grpc.r;
import io.opencensus.trace.Span;
import mh.g;
import mh.h;
/* loaded from: classes7.dex */
public class c implements h {
    private static r d(g gVar) {
        return ((a) gVar).c();
    }

    private static g e(r rVar) {
        return new a(rVar);
    }

    @Override // mh.h
    public g a() {
        return e(r.j());
    }

    @Override // mh.h
    public g b(g gVar, Span span) {
        return e(d.b(d(gVar), span));
    }

    @Override // mh.h
    public Span c(g gVar) {
        return d.a(d(gVar));
    }
}
