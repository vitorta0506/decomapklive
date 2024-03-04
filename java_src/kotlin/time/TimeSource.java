package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmInline;
import org.jetbrains.annotations.NotNull;
@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u0000 \u00042\u00020\u0001:\u0002\u0004\u0005J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lkotlin/time/TimeSource;", "", "markNow", "Lkotlin/time/TimeMark;", "Companion", "Monotonic", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@ExperimentalTime
/* loaded from: classes7.dex */
public interface TimeSource {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016\u0082\u0002\b\n\u0002\b!\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource;", "()V", "markNow", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "markNow-z9LOYto", "()J", "toString", "", "ValueTimeMark", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Monotonic implements TimeSource {
        @NotNull
        public static final Monotonic INSTANCE = new Monotonic();

        @SinceKotlin(version = "1.7")
        @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u0018\b\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\bH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0006J\u001a\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0010\u0010\u0015\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020 HÖ\u0001¢\u0006\u0004\b!\u0010\"R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006#"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/TimeMark;", "reading", "", "Lkotlin/time/ValueTimeMarkReading;", "constructor-impl", "(J)J", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "equals", "", "other", "", "equals-impl", "(JLjava/lang/Object;)Z", "hasNotPassedNow", "hasNotPassedNow-impl", "(J)Z", "hasPassedNow", "hasPassedNow-impl", "hashCode", "", "hashCode-impl", "(J)I", "minus", "duration", "minus-LRDsOJo", "(JJ)J", "plus", "plus-LRDsOJo", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
        @JvmInline
        @ExperimentalTime
        /* loaded from: classes7.dex */
        public static final class ValueTimeMark implements TimeMark {
            private final long reading;

            private /* synthetic */ ValueTimeMark(long j10) {
                this.reading = j10;
            }

            /* renamed from: box-impl  reason: not valid java name */
            public static final /* synthetic */ ValueTimeMark m3121boximpl(long j10) {
                return new ValueTimeMark(j10);
            }

            /* renamed from: constructor-impl  reason: not valid java name */
            public static long m3122constructorimpl(long j10) {
                return j10;
            }

            /* renamed from: equals-impl  reason: not valid java name */
            public static boolean m3124equalsimpl(long j10, Object obj) {
                return (obj instanceof ValueTimeMark) && j10 == ((ValueTimeMark) obj).m3134unboximpl();
            }

            /* renamed from: equals-impl0  reason: not valid java name */
            public static final boolean m3125equalsimpl0(long j10, long j11) {
                return j10 == j11;
            }

            /* renamed from: hasNotPassedNow-impl  reason: not valid java name */
            public static boolean m3126hasNotPassedNowimpl(long j10) {
                return Duration.m3016isNegativeimpl(m3123elapsedNowUwyO8pc(j10));
            }

            /* renamed from: hasPassedNow-impl  reason: not valid java name */
            public static boolean m3127hasPassedNowimpl(long j10) {
                return !Duration.m3016isNegativeimpl(m3123elapsedNowUwyO8pc(j10));
            }

            /* renamed from: hashCode-impl  reason: not valid java name */
            public static int m3128hashCodeimpl(long j10) {
                return (int) (j10 ^ (j10 >>> 32));
            }

            /* renamed from: toString-impl  reason: not valid java name */
            public static String m3131toStringimpl(long j10) {
                return "ValueTimeMark(reading=" + j10 + ')';
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: elapsedNow-UwyO8pc */
            public long mo2975elapsedNowUwyO8pc() {
                return m3123elapsedNowUwyO8pc(this.reading);
            }

            public boolean equals(Object obj) {
                return m3124equalsimpl(this.reading, obj);
            }

            @Override // kotlin.time.TimeMark
            public boolean hasNotPassedNow() {
                return m3126hasNotPassedNowimpl(this.reading);
            }

            @Override // kotlin.time.TimeMark
            public boolean hasPassedNow() {
                return m3127hasPassedNowimpl(this.reading);
            }

            public int hashCode() {
                return m3128hashCodeimpl(this.reading);
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo2976minusLRDsOJo(long j10) {
                return m3121boximpl(m3132minusLRDsOJo(j10));
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo2977plusLRDsOJo(long j10) {
                return m3121boximpl(m3133plusLRDsOJo(j10));
            }

            public String toString() {
                return m3131toStringimpl(this.reading);
            }

            /* renamed from: unbox-impl  reason: not valid java name */
            public final /* synthetic */ long m3134unboximpl() {
                return this.reading;
            }

            /* renamed from: elapsedNow-UwyO8pc  reason: not valid java name */
            public static long m3123elapsedNowUwyO8pc(long j10) {
                return MonotonicTimeSource.INSTANCE.m3114elapsedFrom6eNON_k(j10);
            }

            /* renamed from: minus-LRDsOJo  reason: not valid java name */
            public long m3132minusLRDsOJo(long j10) {
                return m3129minusLRDsOJo(this.reading, j10);
            }

            /* renamed from: plus-LRDsOJo  reason: not valid java name */
            public long m3133plusLRDsOJo(long j10) {
                return m3130plusLRDsOJo(this.reading, j10);
            }

            /* renamed from: minus-LRDsOJo  reason: not valid java name */
            public static long m3129minusLRDsOJo(long j10, long j11) {
                return MonotonicTimeSource.INSTANCE.m3113adjustReading6QKq23U(j10, Duration.m3035unaryMinusUwyO8pc(j11));
            }

            /* renamed from: plus-LRDsOJo  reason: not valid java name */
            public static long m3130plusLRDsOJo(long j10, long j11) {
                return MonotonicTimeSource.INSTANCE.m3113adjustReading6QKq23U(j10, j11);
            }
        }

        private Monotonic() {
        }

        @Override // kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ TimeMark markNow() {
            return ValueTimeMark.m3121boximpl(m3120markNowz9LOYto());
        }

        /* renamed from: markNow-z9LOYto  reason: not valid java name */
        public long m3120markNowz9LOYto() {
            return MonotonicTimeSource.INSTANCE.m3115markNowz9LOYto();
        }

        @NotNull
        public String toString() {
            return MonotonicTimeSource.INSTANCE.toString();
        }
    }

    @NotNull
    TimeMark markNow();
}
