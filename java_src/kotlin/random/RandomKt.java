package kotlin.random;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0004H\u0007\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\fH\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0000\u001a\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0000\u001a\u0014\u0010\u000f\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\u0012\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0013H\u0007\u001a\u0014\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003H\u0000¨\u0006\u0016"}, d2 = {"Random", "Lkotlin/random/Random;", "seed", "", "", "boundsErrorMessage", "", "from", "", "until", "checkRangeBounds", "", "", "fastLog2", "value", "nextInt", "range", "Lkotlin/ranges/IntRange;", "nextLong", "Lkotlin/ranges/LongRange;", "takeUpperBits", "bitCount", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class RandomKt {
    @SinceKotlin(version = "1.3")
    @NotNull
    public static final Random Random(int i9) {
        return new XorWowRandom(i9, i9 >> 31);
    }

    @NotNull
    public static final String boundsErrorMessage(@NotNull Object from, @NotNull Object until) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    public static final void checkRangeBounds(int i9, int i10) {
        if (!(i10 > i9)) {
            throw new IllegalArgumentException(boundsErrorMessage(Integer.valueOf(i9), Integer.valueOf(i10)).toString());
        }
    }

    public static final int fastLog2(int i9) {
        return 31 - Integer.numberOfLeadingZeros(i9);
    }

    @SinceKotlin(version = "1.3")
    public static final int nextInt(@NotNull Random random, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return range.getLast() < Integer.MAX_VALUE ? random.nextInt(range.getFirst(), range.getLast() + 1) : range.getFirst() > Integer.MIN_VALUE ? random.nextInt(range.getFirst() - 1, range.getLast()) + 1 : random.nextInt();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    @SinceKotlin(version = "1.3")
    public static final long nextLong(@NotNull Random random, @NotNull LongRange range) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return range.getLast() < Long.MAX_VALUE ? random.nextLong(range.getFirst(), range.getLast() + 1) : range.getFirst() > Long.MIN_VALUE ? random.nextLong(range.getFirst() - 1, range.getLast()) + 1 : random.nextLong();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    public static final int takeUpperBits(int i9, int i10) {
        return (i9 >>> (32 - i10)) & ((-i10) >> 31);
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final Random Random(long j10) {
        return new XorWowRandom((int) j10, (int) (j10 >> 32));
    }

    public static final void checkRangeBounds(long j10, long j11) {
        if (!(j11 > j10)) {
            throw new IllegalArgumentException(boundsErrorMessage(Long.valueOf(j10), Long.valueOf(j11)).toString());
        }
    }

    public static final void checkRangeBounds(double d10, double d11) {
        if (!(d11 > d10)) {
            throw new IllegalArgumentException(boundsErrorMessage(Double.valueOf(d10), Double.valueOf(d11)).toString());
        }
    }
}
