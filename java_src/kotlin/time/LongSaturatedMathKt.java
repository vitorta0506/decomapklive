package kotlin.time;

import kotlin.Metadata;
import kotlin.time.Duration;
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\"\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\"\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\n\u001a \u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"checkInfiniteSumDefined", "", "longNs", "duration", "Lkotlin/time/Duration;", "durationNs", "checkInfiniteSumDefined-PjuGub4", "(JJJ)J", "saturatingAdd", "saturatingAdd-pTJri5U", "(JJ)J", "saturatingAddInHalves", "saturatingAddInHalves-pTJri5U", "saturatingDiff", "valueNs", "originNs", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class LongSaturatedMathKt {
    /* renamed from: checkInfiniteSumDefined-PjuGub4  reason: not valid java name */
    private static final long m3110checkInfiniteSumDefinedPjuGub4(long j10, long j11, long j12) {
        if (!Duration.m3015isInfiniteimpl(j11) || (j10 ^ j12) >= 0) {
            return j10;
        }
        throw new IllegalArgumentException("Summing infinities of different signs");
    }

    /* renamed from: saturatingAdd-pTJri5U  reason: not valid java name */
    public static final long m3111saturatingAddpTJri5U(long j10, long j11) {
        long m3003getInWholeNanosecondsimpl = Duration.m3003getInWholeNanosecondsimpl(j11);
        if (((j10 - 1) | 1) == Long.MAX_VALUE) {
            return m3110checkInfiniteSumDefinedPjuGub4(j10, j11, m3003getInWholeNanosecondsimpl);
        }
        if ((1 | (m3003getInWholeNanosecondsimpl - 1)) == Long.MAX_VALUE) {
            return m3112saturatingAddInHalvespTJri5U(j10, j11);
        }
        long j12 = j10 + m3003getInWholeNanosecondsimpl;
        return ((j10 ^ j12) & (m3003getInWholeNanosecondsimpl ^ j12)) < 0 ? j10 < 0 ? Long.MIN_VALUE : Long.MAX_VALUE : j12;
    }

    /* renamed from: saturatingAddInHalves-pTJri5U  reason: not valid java name */
    private static final long m3112saturatingAddInHalvespTJri5U(long j10, long j11) {
        long m2986divUwyO8pc = Duration.m2986divUwyO8pc(j11, 2);
        if (((Duration.m3003getInWholeNanosecondsimpl(m2986divUwyO8pc) - 1) | 1) == Long.MAX_VALUE) {
            return (long) (j10 + Duration.m3026toDoubleimpl(j11, DurationUnit.NANOSECONDS));
        }
        return m3111saturatingAddpTJri5U(m3111saturatingAddpTJri5U(j10, m2986divUwyO8pc), m2986divUwyO8pc);
    }

    public static final long saturatingDiff(long j10, long j11) {
        if ((1 | (j11 - 1)) == Long.MAX_VALUE) {
            return Duration.m3035unaryMinusUwyO8pc(DurationKt.toDuration(j11, DurationUnit.DAYS));
        }
        long j12 = j10 - j11;
        if (((j12 ^ j10) & (~(j12 ^ j11))) < 0) {
            long j13 = 1000000;
            long j14 = (j10 % j13) - (j11 % j13);
            Duration.Companion companion = Duration.Companion;
            return Duration.m3019plusLRDsOJo(DurationKt.toDuration((j10 / j13) - (j11 / j13), DurationUnit.MILLISECONDS), DurationKt.toDuration(j14, DurationUnit.NANOSECONDS));
        }
        Duration.Companion companion2 = Duration.Companion;
        return DurationKt.toDuration(j12, DurationUnit.NANOSECONDS);
    }
}
