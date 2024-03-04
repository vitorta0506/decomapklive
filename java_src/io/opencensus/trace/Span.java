package io.opencensus.trace;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Set;
import mh.j;
/* loaded from: classes7.dex */
public abstract class Span {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, mh.a> f51256c = Collections.emptyMap();

    /* renamed from: d  reason: collision with root package name */
    private static final Set<Options> f51257d = Collections.unmodifiableSet(EnumSet.noneOf(Options.class));

    /* renamed from: a  reason: collision with root package name */
    private final j f51258a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Options> f51259b;

    /* loaded from: classes7.dex */
    public enum Kind {
        SERVER,
        CLIENT
    }

    /* loaded from: classes7.dex */
    public enum Options {
        RECORD_EVENTS
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Span(j jVar, EnumSet<Options> enumSet) {
        Set<Options> unmodifiableSet;
        this.f51258a = (j) lh.b.b(jVar, "context");
        if (enumSet == null) {
            unmodifiableSet = f51257d;
        } else {
            unmodifiableSet = Collections.unmodifiableSet(EnumSet.copyOf((EnumSet) enumSet));
        }
        this.f51259b = unmodifiableSet;
        lh.b.a(!jVar.c().d() || unmodifiableSet.contains(Options.RECORD_EVENTS), "Span is sampled, but does not have RECORD_EVENTS set.");
    }

    public final void a(String str) {
        lh.b.b(str, "description");
        b(str, f51256c);
    }

    public abstract void b(String str, Map<String, mh.a> map);

    @Deprecated
    public void c(Map<String, mh.a> map) {
        j(map);
    }

    public void d(MessageEvent messageEvent) {
        lh.b.b(messageEvent, "messageEvent");
        e(nh.a.b(messageEvent));
    }

    @Deprecated
    public void e(NetworkEvent networkEvent) {
        d(nh.a.a(networkEvent));
    }

    public final void f() {
        g(mh.i.f55116a);
    }

    public abstract void g(mh.i iVar);

    public final j h() {
        return this.f51258a;
    }

    public void i(String str, mh.a aVar) {
        lh.b.b(str, "key");
        lh.b.b(aVar, "value");
        j(Collections.singletonMap(str, aVar));
    }

    public void j(Map<String, mh.a> map) {
        lh.b.b(map, "attributes");
        c(map);
    }
}
