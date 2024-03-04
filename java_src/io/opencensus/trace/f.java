package io.opencensus.trace;
/* loaded from: classes7.dex */
public abstract class f {

    /* loaded from: classes7.dex */
    static final class a extends f {
        private a(String str) {
            lh.b.b(str, "name");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a c(String str, Span span) {
            return new a(str);
        }

        @Override // io.opencensus.trace.f
        public f a(boolean z10) {
            return this;
        }

        @Override // io.opencensus.trace.f
        public Span b() {
            return d.f51296e;
        }
    }

    public abstract f a(boolean z10);

    public abstract Span b();
}
