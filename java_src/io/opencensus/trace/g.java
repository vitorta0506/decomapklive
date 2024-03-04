package io.opencensus.trace;
/* loaded from: classes7.dex */
public abstract class g {

    /* loaded from: classes7.dex */
    private static final class b extends g {

        /* renamed from: a  reason: collision with root package name */
        private final io.opencensus.trace.export.b f51305a;

        @Override // io.opencensus.trace.g
        public io.opencensus.trace.export.b a() {
            return this.f51305a;
        }

        @Override // io.opencensus.trace.g
        public h b() {
            return h.a();
        }

        private b() {
            this.f51305a = io.opencensus.trace.export.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g c() {
        return new b();
    }

    public abstract io.opencensus.trace.export.b a();

    public abstract h b();
}
