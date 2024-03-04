package io.opencensus.trace.export;

import io.opencensus.trace.Status;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public abstract class SampledSpanStore {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum ZERO_MICROSx10 uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes7.dex */
    public static final class LatencyBucketBoundaries {
        private static final /* synthetic */ LatencyBucketBoundaries[] $VALUES;
        public static final LatencyBucketBoundaries MICROSx100_MILLIx1;
        public static final LatencyBucketBoundaries MICROSx10_MICROSx100;
        public static final LatencyBucketBoundaries MILLIx100_SECONDx1;
        public static final LatencyBucketBoundaries MILLIx10_MILLIx100;
        public static final LatencyBucketBoundaries MILLIx1_MILLIx10;
        public static final LatencyBucketBoundaries SECONDx100_MAX;
        public static final LatencyBucketBoundaries SECONDx10_SECONDx100;
        public static final LatencyBucketBoundaries SECONDx1_SECONDx10;
        public static final LatencyBucketBoundaries ZERO_MICROSx10;
        private final long latencyLowerNs;
        private final long latencyUpperNs;

        static {
            TimeUnit timeUnit = TimeUnit.MICROSECONDS;
            LatencyBucketBoundaries latencyBucketBoundaries = new LatencyBucketBoundaries("ZERO_MICROSx10", 0, 0L, timeUnit.toNanos(10L));
            ZERO_MICROSx10 = latencyBucketBoundaries;
            LatencyBucketBoundaries latencyBucketBoundaries2 = new LatencyBucketBoundaries("MICROSx10_MICROSx100", 1, timeUnit.toNanos(10L), timeUnit.toNanos(100L));
            MICROSx10_MICROSx100 = latencyBucketBoundaries2;
            long nanos = timeUnit.toNanos(100L);
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            LatencyBucketBoundaries latencyBucketBoundaries3 = new LatencyBucketBoundaries("MICROSx100_MILLIx1", 2, nanos, timeUnit2.toNanos(1L));
            MICROSx100_MILLIx1 = latencyBucketBoundaries3;
            LatencyBucketBoundaries latencyBucketBoundaries4 = new LatencyBucketBoundaries("MILLIx1_MILLIx10", 3, timeUnit2.toNanos(1L), timeUnit2.toNanos(10L));
            MILLIx1_MILLIx10 = latencyBucketBoundaries4;
            LatencyBucketBoundaries latencyBucketBoundaries5 = new LatencyBucketBoundaries("MILLIx10_MILLIx100", 4, timeUnit2.toNanos(10L), timeUnit2.toNanos(100L));
            MILLIx10_MILLIx100 = latencyBucketBoundaries5;
            long nanos2 = timeUnit2.toNanos(100L);
            TimeUnit timeUnit3 = TimeUnit.SECONDS;
            LatencyBucketBoundaries latencyBucketBoundaries6 = new LatencyBucketBoundaries("MILLIx100_SECONDx1", 5, nanos2, timeUnit3.toNanos(1L));
            MILLIx100_SECONDx1 = latencyBucketBoundaries6;
            LatencyBucketBoundaries latencyBucketBoundaries7 = new LatencyBucketBoundaries("SECONDx1_SECONDx10", 6, timeUnit3.toNanos(1L), timeUnit3.toNanos(10L));
            SECONDx1_SECONDx10 = latencyBucketBoundaries7;
            LatencyBucketBoundaries latencyBucketBoundaries8 = new LatencyBucketBoundaries("SECONDx10_SECONDx100", 7, timeUnit3.toNanos(10L), timeUnit3.toNanos(100L));
            SECONDx10_SECONDx100 = latencyBucketBoundaries8;
            LatencyBucketBoundaries latencyBucketBoundaries9 = new LatencyBucketBoundaries("SECONDx100_MAX", 8, timeUnit3.toNanos(100L), Long.MAX_VALUE);
            SECONDx100_MAX = latencyBucketBoundaries9;
            $VALUES = new LatencyBucketBoundaries[]{latencyBucketBoundaries, latencyBucketBoundaries2, latencyBucketBoundaries3, latencyBucketBoundaries4, latencyBucketBoundaries5, latencyBucketBoundaries6, latencyBucketBoundaries7, latencyBucketBoundaries8, latencyBucketBoundaries9};
        }

        private LatencyBucketBoundaries(String str, int i9, long j10, long j11) {
            this.latencyLowerNs = j10;
            this.latencyUpperNs = j11;
        }

        public static LatencyBucketBoundaries valueOf(String str) {
            return (LatencyBucketBoundaries) Enum.valueOf(LatencyBucketBoundaries.class, str);
        }

        public static LatencyBucketBoundaries[] values() {
            return (LatencyBucketBoundaries[]) $VALUES.clone();
        }

        public long getLatencyLowerNs() {
            return this.latencyLowerNs;
        }

        public long getLatencyUpperNs() {
            return this.latencyUpperNs;
        }
    }

    /* loaded from: classes7.dex */
    private static final class b extends SampledSpanStore {

        /* renamed from: b  reason: collision with root package name */
        private static final c f51300b = c.a(Collections.emptyMap(), Collections.emptyMap());

        /* renamed from: a  reason: collision with root package name */
        private final Set<String> f51301a;

        private b() {
            this.f51301a = new HashSet();
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public void b(Collection<String> collection) {
            lh.b.b(collection, "spanNames");
            synchronized (this.f51301a) {
                this.f51301a.addAll(collection);
            }
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class c {
        public static c a(Map<LatencyBucketBoundaries, Integer> map, Map<Status.CanonicalCode, Integer> map2) {
            return new io.opencensus.trace.export.a(Collections.unmodifiableMap(new HashMap((Map) lh.b.b(map, "numbersOfLatencySampledSpans"))), Collections.unmodifiableMap(new HashMap((Map) lh.b.b(map2, "numbersOfErrorSampledSpans"))));
        }

        public abstract Map<Status.CanonicalCode, Integer> b();

        public abstract Map<LatencyBucketBoundaries, Integer> c();
    }

    protected SampledSpanStore() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SampledSpanStore a() {
        return new b();
    }

    @Deprecated
    public abstract void b(Collection<String> collection);
}
