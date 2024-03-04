package io.opencensus.trace;

import io.opencensus.trace.f;
/* loaded from: classes7.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static final b f51306a = new b();

    /* loaded from: classes7.dex */
    private static final class b extends h {
        @Override // io.opencensus.trace.h
        public f c(String str, Span span) {
            return f.a.c(str, span);
        }

        private b() {
        }
    }

    protected h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a() {
        return f51306a;
    }

    public final f b(String str) {
        return c(str, e.a());
    }

    public abstract f c(String str, Span span);

    public final jh.a d(Span span) {
        return e.b((Span) lh.b.b(span, "span"), false);
    }
}
