package kotlin.time;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a/\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0005\u001a3\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\b0\u0003H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\t2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\n\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u000b2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\f\u001a7\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b*\u00020\t2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\b0\u0003H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a7\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b*\u00020\u000b2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\b0\u0003H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u0082\u0002\u000b\n\u0005\b\u009920\u0001\n\u0002\b\u0019¨\u0006\r"}, d2 = {"measureTime", "Lkotlin/time/Duration;", "block", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)J", "measureTimedValue", "Lkotlin/time/TimedValue;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/time/TimeSource;", "(Lkotlin/time/TimeSource;Lkotlin/jvm/functions/Function0;)J", "Lkotlin/time/TimeSource$Monotonic;", "(Lkotlin/time/TimeSource$Monotonic;Lkotlin/jvm/functions/Function0;)J", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class MeasureTimeKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static final long measureTime(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long m3120markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m3120markNowz9LOYto();
        block.invoke();
        return TimeSource.Monotonic.ValueTimeMark.m3123elapsedNowUwyO8pc(m3120markNowz9LOYto);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    @NotNull
    public static final <T> TimedValue<T> measureTimedValue(@NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return new TimedValue<>(block.invoke(), TimeSource.Monotonic.ValueTimeMark.m3123elapsedNowUwyO8pc(TimeSource.Monotonic.INSTANCE.m3120markNowz9LOYto()), null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static final long measureTime(@NotNull TimeSource timeSource, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(timeSource, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        TimeMark markNow = timeSource.markNow();
        block.invoke();
        return markNow.mo2975elapsedNowUwyO8pc();
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    @NotNull
    public static final <T> TimedValue<T> measureTimedValue(@NotNull TimeSource timeSource, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(timeSource, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return new TimedValue<>(block.invoke(), timeSource.markNow().mo2975elapsedNowUwyO8pc(), null);
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalTime
    public static final long measureTime(@NotNull TimeSource.Monotonic monotonic, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(monotonic, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        long m3120markNowz9LOYto = monotonic.m3120markNowz9LOYto();
        block.invoke();
        return TimeSource.Monotonic.ValueTimeMark.m3123elapsedNowUwyO8pc(m3120markNowz9LOYto);
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalTime
    @NotNull
    public static final <T> TimedValue<T> measureTimedValue(@NotNull TimeSource.Monotonic monotonic, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(monotonic, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return new TimedValue<>(block.invoke(), TimeSource.Monotonic.ValueTimeMark.m3123elapsedNowUwyO8pc(monotonic.m3120markNowz9LOYto()), null);
    }
}
