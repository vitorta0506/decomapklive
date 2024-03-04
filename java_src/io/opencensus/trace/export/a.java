package io.opencensus.trace.export;

import io.opencensus.trace.Status;
import io.opencensus.trace.export.SampledSpanStore;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
final class a extends SampledSpanStore.c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<SampledSpanStore.LatencyBucketBoundaries, Integer> f51302a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Status.CanonicalCode, Integer> f51303b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Map<SampledSpanStore.LatencyBucketBoundaries, Integer> map, Map<Status.CanonicalCode, Integer> map2) {
        Objects.requireNonNull(map, "Null numbersOfLatencySampledSpans");
        this.f51302a = map;
        Objects.requireNonNull(map2, "Null numbersOfErrorSampledSpans");
        this.f51303b = map2;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.c
    public Map<Status.CanonicalCode, Integer> b() {
        return this.f51303b;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.c
    public Map<SampledSpanStore.LatencyBucketBoundaries, Integer> c() {
        return this.f51302a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SampledSpanStore.c) {
            SampledSpanStore.c cVar = (SampledSpanStore.c) obj;
            return this.f51302a.equals(cVar.c()) && this.f51303b.equals(cVar.b());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f51302a.hashCode() ^ 1000003) * 1000003) ^ this.f51303b.hashCode();
    }

    public String toString() {
        return "PerSpanNameSummary{numbersOfLatencySampledSpans=" + this.f51302a + ", numbersOfErrorSampledSpans=" + this.f51303b + "}";
    }
}
