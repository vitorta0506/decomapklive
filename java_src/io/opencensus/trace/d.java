package io.opencensus.trace;

import java.util.Map;
import mh.j;
/* loaded from: classes7.dex */
public final class d extends Span {

    /* renamed from: e  reason: collision with root package name */
    public static final d f51296e = new d();

    private d() {
        super(j.f55118f, null);
    }

    @Override // io.opencensus.trace.Span
    public void b(String str, Map<String, mh.a> map) {
        lh.b.b(str, "description");
        lh.b.b(map, "attributes");
    }

    @Override // io.opencensus.trace.Span
    public void d(MessageEvent messageEvent) {
        lh.b.b(messageEvent, "messageEvent");
    }

    @Override // io.opencensus.trace.Span
    @Deprecated
    public void e(NetworkEvent networkEvent) {
    }

    @Override // io.opencensus.trace.Span
    public void g(mh.i iVar) {
        lh.b.b(iVar, "options");
    }

    @Override // io.opencensus.trace.Span
    public void i(String str, mh.a aVar) {
        lh.b.b(str, "key");
        lh.b.b(aVar, "value");
    }

    @Override // io.opencensus.trace.Span
    public void j(Map<String, mh.a> map) {
        lh.b.b(map, "attributes");
    }

    public String toString() {
        return "BlankSpan";
    }
}
