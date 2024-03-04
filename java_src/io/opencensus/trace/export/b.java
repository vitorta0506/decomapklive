package io.opencensus.trace.export;
/* loaded from: classes7.dex */
public abstract class b {

    /* renamed from: io.opencensus.trace.export.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    private static final class C0508b extends b {

        /* renamed from: a  reason: collision with root package name */
        private final SampledSpanStore f51304a;

        private C0508b() {
            this.f51304a = SampledSpanStore.a();
        }

        @Override // io.opencensus.trace.export.b
        public SampledSpanStore a() {
            return this.f51304a;
        }
    }

    public static b b() {
        return new C0508b();
    }

    public abstract SampledSpanStore a();
}
