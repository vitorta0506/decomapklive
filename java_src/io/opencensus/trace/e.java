package io.opencensus.trace;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class e {

    /* loaded from: classes7.dex */
    private static final class b implements jh.a {

        /* renamed from: a  reason: collision with root package name */
        private final mh.g f51297a;

        /* renamed from: b  reason: collision with root package name */
        private final Span f51298b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f51299c;

        @Override // jh.a, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            ph.b.a().a(this.f51297a);
            if (this.f51299c) {
                this.f51298b.f();
            }
        }

        private b(Span span, boolean z10) {
            this.f51298b = span;
            this.f51299c = z10;
            this.f51297a = ph.b.d(ph.b.a(), span).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Span a() {
        return ph.b.b(ph.b.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static jh.a b(Span span, boolean z10) {
        return new b(span, z10);
    }
}
