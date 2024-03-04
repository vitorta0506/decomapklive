package org.threeten.bp.temporal;

import java.util.Map;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.Duration;
import org.threeten.bp.LocalDate;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.format.ResolverStyle;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final g f56640a = b.f56647a;

    /* renamed from: b  reason: collision with root package name */
    public static final g f56641b = b.f56648b;

    /* renamed from: c  reason: collision with root package name */
    public static final g f56642c = b.f56649c;

    /* renamed from: d  reason: collision with root package name */
    public static final g f56643d = b.f56650d;

    /* renamed from: e  reason: collision with root package name */
    public static final j f56644e = c.WEEK_BASED_YEARS;

    /* renamed from: f  reason: collision with root package name */
    public static final j f56645f = c.QUARTER_YEARS;

    /* renamed from: org.threeten.bp.temporal.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C0608a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56646a;

        static {
            int[] iArr = new int[c.values().length];
            f56646a = iArr;
            try {
                iArr[c.WEEK_BASED_YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56646a[c.QUARTER_YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes7.dex */
    public static abstract class b implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final b f56647a;

        /* renamed from: b  reason: collision with root package name */
        public static final b f56648b;

        /* renamed from: c  reason: collision with root package name */
        public static final b f56649c;

        /* renamed from: d  reason: collision with root package name */
        public static final b f56650d;

        /* renamed from: e  reason: collision with root package name */
        private static final int[] f56651e;

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ b[] f56652f;

        /* renamed from: org.threeten.bp.temporal.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        enum C0609a extends b {
            C0609a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // org.threeten.bp.temporal.g
            public <R extends org.threeten.bp.temporal.b> R adjustInto(R r10, long j10) {
                long from = getFrom(r10);
                range().checkValidValue(j10, this);
                ChronoField chronoField = ChronoField.DAY_OF_YEAR;
                return (R) r10.with(chronoField, r10.getLong(chronoField) + (j10 - from));
            }

            @Override // org.threeten.bp.temporal.g
            public long getFrom(org.threeten.bp.temporal.c cVar) {
                if (cVar.isSupported(this)) {
                    return cVar.get(ChronoField.DAY_OF_YEAR) - b.f56651e[((cVar.get(ChronoField.MONTH_OF_YEAR) - 1) / 3) + (IsoChronology.INSTANCE.isLeapYear(cVar.getLong(ChronoField.YEAR)) ? 4 : 0)];
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: DayOfQuarter");
            }

            @Override // org.threeten.bp.temporal.g
            public boolean isSupportedBy(org.threeten.bp.temporal.c cVar) {
                return cVar.isSupported(ChronoField.DAY_OF_YEAR) && cVar.isSupported(ChronoField.MONTH_OF_YEAR) && cVar.isSupported(ChronoField.YEAR) && b.k(cVar);
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange range() {
                return ValueRange.of(1L, 90L, 92L);
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange rangeRefinedBy(org.threeten.bp.temporal.c cVar) {
                if (cVar.isSupported(this)) {
                    long j10 = cVar.getLong(b.f56648b);
                    if (j10 == 1) {
                        return IsoChronology.INSTANCE.isLeapYear(cVar.getLong(ChronoField.YEAR)) ? ValueRange.of(1L, 91L) : ValueRange.of(1L, 90L);
                    } else if (j10 == 2) {
                        return ValueRange.of(1L, 91L);
                    } else {
                        if (j10 != 3 && j10 != 4) {
                            return range();
                        }
                        return ValueRange.of(1L, 92L);
                    }
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: DayOfQuarter");
            }

            /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
                if (r2 == 2) goto L19;
             */
            @Override // org.threeten.bp.temporal.a.b, org.threeten.bp.temporal.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.threeten.bp.temporal.c resolve(java.util.Map<org.threeten.bp.temporal.g, java.lang.Long> r13, org.threeten.bp.temporal.c r14, org.threeten.bp.format.ResolverStyle r15) {
                /*
                    r12 = this;
                    org.threeten.bp.temporal.ChronoField r14 = org.threeten.bp.temporal.ChronoField.YEAR
                    java.lang.Object r0 = r13.get(r14)
                    java.lang.Long r0 = (java.lang.Long) r0
                    org.threeten.bp.temporal.a$b r1 = org.threeten.bp.temporal.a.b.f56648b
                    java.lang.Object r2 = r13.get(r1)
                    java.lang.Long r2 = (java.lang.Long) r2
                    if (r0 == 0) goto L9e
                    if (r2 != 0) goto L16
                    goto L9e
                L16:
                    long r3 = r0.longValue()
                    int r0 = r14.checkValidIntValue(r3)
                    org.threeten.bp.temporal.a$b r3 = org.threeten.bp.temporal.a.b.f56647a
                    java.lang.Object r3 = r13.get(r3)
                    java.lang.Long r3 = (java.lang.Long) r3
                    long r3 = r3.longValue()
                    org.threeten.bp.format.ResolverStyle r5 = org.threeten.bp.format.ResolverStyle.LENIENT
                    r6 = 3
                    r7 = 1
                    r9 = 1
                    if (r15 != r5) goto L4f
                    long r10 = r2.longValue()
                    org.threeten.bp.LocalDate r15 = org.threeten.bp.LocalDate.of(r0, r9, r9)
                    long r9 = jl.d.p(r10, r7)
                    long r5 = jl.d.m(r9, r6)
                    org.threeten.bp.LocalDate r15 = r15.plusMonths(r5)
                    long r2 = jl.d.p(r3, r7)
                    org.threeten.bp.LocalDate r15 = r15.plusDays(r2)
                    goto L94
                L4f:
                    org.threeten.bp.temporal.ValueRange r5 = r1.range()
                    long r10 = r2.longValue()
                    int r2 = r5.checkValidIntValue(r10, r1)
                    org.threeten.bp.format.ResolverStyle r5 = org.threeten.bp.format.ResolverStyle.STRICT
                    if (r15 != r5) goto L80
                    r15 = 92
                    r5 = 91
                    if (r2 != r9) goto L72
                    org.threeten.bp.chrono.IsoChronology r15 = org.threeten.bp.chrono.IsoChronology.INSTANCE
                    long r10 = (long) r0
                    boolean r15 = r15.isLeapYear(r10)
                    if (r15 == 0) goto L6f
                    goto L75
                L6f:
                    r15 = 90
                    goto L77
                L72:
                    r10 = 2
                    if (r2 != r10) goto L77
                L75:
                    r15 = 91
                L77:
                    long r10 = (long) r15
                    org.threeten.bp.temporal.ValueRange r15 = org.threeten.bp.temporal.ValueRange.of(r7, r10)
                    r15.checkValidValue(r3, r12)
                    goto L87
                L80:
                    org.threeten.bp.temporal.ValueRange r15 = r12.range()
                    r15.checkValidValue(r3, r12)
                L87:
                    int r2 = r2 - r9
                    int r2 = r2 * 3
                    int r2 = r2 + r9
                    org.threeten.bp.LocalDate r15 = org.threeten.bp.LocalDate.of(r0, r2, r9)
                    long r3 = r3 - r7
                    org.threeten.bp.LocalDate r15 = r15.plusDays(r3)
                L94:
                    r13.remove(r12)
                    r13.remove(r14)
                    r13.remove(r1)
                    return r15
                L9e:
                    r13 = 0
                    return r13
                */
                throw new UnsupportedOperationException("Method not decompiled: org.threeten.bp.temporal.a.b.C0609a.resolve(java.util.Map, org.threeten.bp.temporal.c, org.threeten.bp.format.ResolverStyle):org.threeten.bp.temporal.c");
            }

            @Override // java.lang.Enum
            public String toString() {
                return "DayOfQuarter";
            }
        }

        /* renamed from: org.threeten.bp.temporal.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        enum C0610b extends b {
            C0610b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // org.threeten.bp.temporal.g
            public <R extends org.threeten.bp.temporal.b> R adjustInto(R r10, long j10) {
                long from = getFrom(r10);
                range().checkValidValue(j10, this);
                ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
                return (R) r10.with(chronoField, r10.getLong(chronoField) + ((j10 - from) * 3));
            }

            @Override // org.threeten.bp.temporal.g
            public long getFrom(org.threeten.bp.temporal.c cVar) {
                if (cVar.isSupported(this)) {
                    return (cVar.getLong(ChronoField.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: QuarterOfYear");
            }

            @Override // org.threeten.bp.temporal.g
            public boolean isSupportedBy(org.threeten.bp.temporal.c cVar) {
                return cVar.isSupported(ChronoField.MONTH_OF_YEAR) && b.k(cVar);
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange range() {
                return ValueRange.of(1L, 4L);
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange rangeRefinedBy(org.threeten.bp.temporal.c cVar) {
                return range();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "QuarterOfYear";
            }
        }

        /* loaded from: classes7.dex */
        enum c extends b {
            c(String str, int i9) {
                super(str, i9, null);
            }

            @Override // org.threeten.bp.temporal.g
            public <R extends org.threeten.bp.temporal.b> R adjustInto(R r10, long j10) {
                range().checkValidValue(j10, this);
                return (R) r10.plus(jl.d.p(j10, getFrom(r10)), ChronoUnit.WEEKS);
            }

            @Override // org.threeten.bp.temporal.g
            public long getFrom(org.threeten.bp.temporal.c cVar) {
                if (cVar.isSupported(this)) {
                    return b.g(LocalDate.from(cVar));
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // org.threeten.bp.temporal.g
            public boolean isSupportedBy(org.threeten.bp.temporal.c cVar) {
                return cVar.isSupported(ChronoField.EPOCH_DAY) && b.k(cVar);
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange range() {
                return ValueRange.of(1L, 52L, 53L);
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange rangeRefinedBy(org.threeten.bp.temporal.c cVar) {
                if (cVar.isSupported(this)) {
                    return b.j(LocalDate.from(cVar));
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // org.threeten.bp.temporal.a.b, org.threeten.bp.temporal.g
            public org.threeten.bp.temporal.c resolve(Map<g, Long> map, org.threeten.bp.temporal.c cVar, ResolverStyle resolverStyle) {
                g gVar;
                LocalDate with;
                g gVar2 = b.f56650d;
                Long l10 = map.get(gVar2);
                ChronoField chronoField = ChronoField.DAY_OF_WEEK;
                Long l11 = map.get(chronoField);
                if (l10 == null || l11 == null) {
                    return null;
                }
                int checkValidIntValue = gVar2.range().checkValidIntValue(l10.longValue(), gVar2);
                long longValue = map.get(b.f56649c).longValue();
                if (resolverStyle == ResolverStyle.LENIENT) {
                    long longValue2 = l11.longValue();
                    long j10 = 0;
                    if (longValue2 > 7) {
                        long j11 = longValue2 - 1;
                        j10 = j11 / 7;
                        longValue2 = (j11 % 7) + 1;
                    } else if (longValue2 < 1) {
                        j10 = (longValue2 / 7) - 1;
                        longValue2 = (longValue2 % 7) + 7;
                    }
                    gVar = gVar2;
                    with = LocalDate.of(checkValidIntValue, 1, 4).plusWeeks(longValue - 1).plusWeeks(j10).with((g) chronoField, longValue2);
                } else {
                    gVar = gVar2;
                    int checkValidIntValue2 = chronoField.checkValidIntValue(l11.longValue());
                    if (resolverStyle == ResolverStyle.STRICT) {
                        b.j(LocalDate.of(checkValidIntValue, 1, 4)).checkValidValue(longValue, this);
                    } else {
                        range().checkValidValue(longValue, this);
                    }
                    with = LocalDate.of(checkValidIntValue, 1, 4).plusWeeks(longValue - 1).with((g) chronoField, checkValidIntValue2);
                }
                map.remove(this);
                map.remove(gVar);
                map.remove(chronoField);
                return with;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekOfWeekBasedYear";
            }
        }

        /* loaded from: classes7.dex */
        enum d extends b {
            d(String str, int i9) {
                super(str, i9, null);
            }

            @Override // org.threeten.bp.temporal.g
            public <R extends org.threeten.bp.temporal.b> R adjustInto(R r10, long j10) {
                if (isSupportedBy(r10)) {
                    int checkValidIntValue = range().checkValidIntValue(j10, b.f56650d);
                    LocalDate from = LocalDate.from((org.threeten.bp.temporal.c) r10);
                    ChronoField chronoField = ChronoField.DAY_OF_WEEK;
                    int i9 = from.get(chronoField);
                    int g10 = b.g(from);
                    if (g10 == 53 && b.i(checkValidIntValue) == 52) {
                        g10 = 52;
                    }
                    LocalDate of2 = LocalDate.of(checkValidIntValue, 1, 4);
                    return (R) r10.with(of2.plusDays((i9 - of2.get(chronoField)) + ((g10 - 1) * 7)));
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: WeekBasedYear");
            }

            @Override // org.threeten.bp.temporal.g
            public long getFrom(org.threeten.bp.temporal.c cVar) {
                if (cVar.isSupported(this)) {
                    return b.h(LocalDate.from(cVar));
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: WeekBasedYear");
            }

            @Override // org.threeten.bp.temporal.g
            public boolean isSupportedBy(org.threeten.bp.temporal.c cVar) {
                return cVar.isSupported(ChronoField.EPOCH_DAY) && b.k(cVar);
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange range() {
                return ChronoField.YEAR.range();
            }

            @Override // org.threeten.bp.temporal.g
            public ValueRange rangeRefinedBy(org.threeten.bp.temporal.c cVar) {
                return ChronoField.YEAR.range();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekBasedYear";
            }
        }

        static {
            C0609a c0609a = new C0609a("DAY_OF_QUARTER", 0);
            f56647a = c0609a;
            C0610b c0610b = new C0610b("QUARTER_OF_YEAR", 1);
            f56648b = c0610b;
            c cVar = new c("WEEK_OF_WEEK_BASED_YEAR", 2);
            f56649c = cVar;
            d dVar = new d("WEEK_BASED_YEAR", 3);
            f56650d = dVar;
            f56652f = new b[]{c0609a, c0610b, cVar, dVar};
            f56651e = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
        }

        private b(String str, int i9) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int g(LocalDate localDate) {
            int ordinal = localDate.getDayOfWeek().ordinal();
            int dayOfYear = localDate.getDayOfYear() - 1;
            int i9 = (3 - ordinal) + dayOfYear;
            int i10 = (i9 - ((i9 / 7) * 7)) - 3;
            if (i10 < -3) {
                i10 += 7;
            }
            if (dayOfYear < i10) {
                return (int) j(localDate.withDayOfYear(180).minusYears(1L)).getMaximum();
            }
            int i11 = ((dayOfYear - i10) / 7) + 1;
            if (i11 == 53) {
                if (!(i10 == -3 || (i10 == -2 && localDate.isLeapYear()))) {
                    return 1;
                }
            }
            return i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int h(LocalDate localDate) {
            int year = localDate.getYear();
            int dayOfYear = localDate.getDayOfYear();
            if (dayOfYear <= 3) {
                return dayOfYear - localDate.getDayOfWeek().ordinal() < -2 ? year - 1 : year;
            } else if (dayOfYear >= 363) {
                return ((dayOfYear - 363) - (localDate.isLeapYear() ? 1 : 0)) - localDate.getDayOfWeek().ordinal() >= 0 ? year + 1 : year;
            } else {
                return year;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int i(int i9) {
            LocalDate of2 = LocalDate.of(i9, 1, 1);
            if (of2.getDayOfWeek() != DayOfWeek.THURSDAY) {
                return (of2.getDayOfWeek() == DayOfWeek.WEDNESDAY && of2.isLeapYear()) ? 53 : 52;
            }
            return 53;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ValueRange j(LocalDate localDate) {
            return ValueRange.of(1L, i(h(localDate)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean k(org.threeten.bp.temporal.c cVar) {
            return org.threeten.bp.chrono.i.from(cVar).equals(IsoChronology.INSTANCE);
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f56652f.clone();
        }

        @Override // org.threeten.bp.temporal.g
        public boolean isDateBased() {
            return true;
        }

        @Override // org.threeten.bp.temporal.g
        public boolean isTimeBased() {
            return false;
        }

        @Override // org.threeten.bp.temporal.g
        public org.threeten.bp.temporal.c resolve(Map<g, Long> map, org.threeten.bp.temporal.c cVar, ResolverStyle resolverStyle) {
            return null;
        }

        /* synthetic */ b(String str, int i9, C0608a c0608a) {
            this(str, i9);
        }
    }

    /* loaded from: classes7.dex */
    private enum c implements j {
        WEEK_BASED_YEARS("WeekBasedYears", Duration.ofSeconds(31556952)),
        QUARTER_YEARS("QuarterYears", Duration.ofSeconds(7889238));
        

        /* renamed from: a  reason: collision with root package name */
        private final String f56656a;

        /* renamed from: b  reason: collision with root package name */
        private final Duration f56657b;

        c(String str, Duration duration) {
            this.f56656a = str;
            this.f56657b = duration;
        }

        @Override // org.threeten.bp.temporal.j
        public <R extends org.threeten.bp.temporal.b> R addTo(R r10, long j10) {
            int i9 = C0608a.f56646a[ordinal()];
            if (i9 == 1) {
                g gVar = a.f56643d;
                return (R) r10.with(gVar, jl.d.k(r10.get(gVar), j10));
            } else if (i9 == 2) {
                return (R) r10.plus(j10 / 256, ChronoUnit.YEARS).plus((j10 % 256) * 3, ChronoUnit.MONTHS);
            } else {
                throw new IllegalStateException("Unreachable");
            }
        }

        @Override // org.threeten.bp.temporal.j
        public long between(org.threeten.bp.temporal.b bVar, org.threeten.bp.temporal.b bVar2) {
            int i9 = C0608a.f56646a[ordinal()];
            if (i9 == 1) {
                g gVar = a.f56643d;
                return jl.d.p(bVar2.getLong(gVar), bVar.getLong(gVar));
            } else if (i9 == 2) {
                return bVar.until(bVar2, ChronoUnit.MONTHS) / 3;
            } else {
                throw new IllegalStateException("Unreachable");
            }
        }

        @Override // org.threeten.bp.temporal.j
        public Duration getDuration() {
            return this.f56657b;
        }

        @Override // org.threeten.bp.temporal.j
        public boolean isDateBased() {
            return true;
        }

        @Override // org.threeten.bp.temporal.j
        public boolean isDurationEstimated() {
            return true;
        }

        @Override // org.threeten.bp.temporal.j
        public boolean isSupportedBy(org.threeten.bp.temporal.b bVar) {
            return bVar.isSupported(ChronoField.EPOCH_DAY);
        }

        @Override // org.threeten.bp.temporal.j
        public boolean isTimeBased() {
            return false;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f56656a;
        }
    }
}
