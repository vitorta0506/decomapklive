package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import jl.d;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
import org.threeten.bp.temporal.j;
/* loaded from: classes7.dex */
public final class LocalDateTime extends org.threeten.bp.chrono.c<LocalDate> implements Serializable {
    private static final long serialVersionUID = 6207766400415563566L;
    private final LocalDate date;
    private final LocalTime time;
    public static final LocalDateTime MIN = of(LocalDate.MIN, LocalTime.MIN);
    public static final LocalDateTime MAX = of(LocalDate.MAX, LocalTime.MAX);
    public static final i<LocalDateTime> FROM = new a();

    /* loaded from: classes7.dex */
    class a implements i<LocalDateTime> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public LocalDateTime a(org.threeten.bp.temporal.c cVar) {
            return LocalDateTime.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56465a;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56465a = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56465a[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56465a[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56465a[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56465a[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56465a[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56465a[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private LocalDateTime(LocalDate localDate, LocalTime localTime) {
        this.date = localDate;
        this.time = localTime;
    }

    private int compareTo0(LocalDateTime localDateTime) {
        int compareTo0 = this.date.compareTo0(localDateTime.toLocalDate());
        return compareTo0 == 0 ? this.time.compareTo(localDateTime.toLocalTime()) : compareTo0;
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [org.threeten.bp.LocalDateTime] */
    public static LocalDateTime from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof LocalDateTime) {
            return (LocalDateTime) cVar;
        }
        if (cVar instanceof ZonedDateTime) {
            return ((ZonedDateTime) cVar).toLocalDateTime2();
        }
        try {
            return new LocalDateTime(LocalDate.from(cVar), LocalTime.from(cVar));
        } catch (DateTimeException unused) {
            throw new DateTimeException("Unable to obtain LocalDateTime from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
        }
    }

    public static LocalDateTime now() {
        return now(org.threeten.bp.a.d());
    }

    public static LocalDateTime of(int i9, Month month, int i10, int i11, int i12) {
        return new LocalDateTime(LocalDate.of(i9, month, i10), LocalTime.of(i11, i12));
    }

    public static LocalDateTime ofEpochSecond(long j10, int i9, ZoneOffset zoneOffset) {
        d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        long totalSeconds = j10 + zoneOffset.getTotalSeconds();
        return new LocalDateTime(LocalDate.ofEpochDay(d.e(totalSeconds, 86400L)), LocalTime.ofSecondOfDay(d.g(totalSeconds, 86400), i9));
    }

    public static LocalDateTime ofInstant(Instant instant, ZoneId zoneId) {
        d.i(instant, "instant");
        d.i(zoneId, "zone");
        return ofEpochSecond(instant.getEpochSecond(), instant.getNano(), zoneId.getRules().a(instant));
    }

    public static LocalDateTime parse(CharSequence charSequence) {
        return parse(charSequence, org.threeten.bp.format.b.f56521n);
    }

    private LocalDateTime plusWithOverflow(LocalDate localDate, long j10, long j11, long j12, long j13, int i9) {
        if ((j10 | j11 | j12 | j13) == 0) {
            return with(localDate, this.time);
        }
        long j14 = i9;
        long nanoOfDay = this.time.toNanoOfDay();
        long j15 = (((j13 % 86400000000000L) + ((j12 % 86400) * 1000000000) + ((j11 % 1440) * 60000000000L) + ((j10 % 24) * 3600000000000L)) * j14) + nanoOfDay;
        long e10 = (((j13 / 86400000000000L) + (j12 / 86400) + (j11 / 1440) + (j10 / 24)) * j14) + d.e(j15, 86400000000000L);
        long h10 = d.h(j15, 86400000000000L);
        return with(localDate.plusDays(e10), h10 == nanoOfDay ? this.time : LocalTime.ofNanoOfDay(h10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LocalDateTime readExternal(DataInput dataInput) throws IOException {
        return of(LocalDate.readExternal(dataInput), LocalTime.readExternal(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 4, this);
    }

    @Override // org.threeten.bp.chrono.c, org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return super.adjustInto(bVar);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.of(this, zoneOffset);
    }

    @Override // org.threeten.bp.chrono.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            return this.date.equals(localDateTime.date) && this.time.equals(localDateTime.time);
        }
        return false;
    }

    @Override // org.threeten.bp.chrono.c
    public String format(org.threeten.bp.format.b bVar) {
        return super.format(bVar);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isTimeBased() ? this.time.get(gVar) : this.date.get(gVar);
        }
        return super.get(gVar);
    }

    public int getDayOfMonth() {
        return this.date.getDayOfMonth();
    }

    public DayOfWeek getDayOfWeek() {
        return this.date.getDayOfWeek();
    }

    public int getDayOfYear() {
        return this.date.getDayOfYear();
    }

    public int getHour() {
        return this.time.getHour();
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isTimeBased() ? this.time.getLong(gVar) : this.date.getLong(gVar);
        }
        return gVar.getFrom(this);
    }

    public int getMinute() {
        return this.time.getMinute();
    }

    public Month getMonth() {
        return this.date.getMonth();
    }

    public int getMonthValue() {
        return this.date.getMonthValue();
    }

    public int getNano() {
        return this.time.getNano();
    }

    public int getSecond() {
        return this.time.getSecond();
    }

    public int getYear() {
        return this.date.getYear();
    }

    @Override // org.threeten.bp.chrono.c
    public int hashCode() {
        return this.date.hashCode() ^ this.time.hashCode();
    }

    @Override // org.threeten.bp.chrono.c
    public boolean isAfter(org.threeten.bp.chrono.c<?> cVar) {
        if (cVar instanceof LocalDateTime) {
            return compareTo0((LocalDateTime) cVar) > 0;
        }
        return super.isAfter(cVar);
    }

    @Override // org.threeten.bp.chrono.c
    public boolean isBefore(org.threeten.bp.chrono.c<?> cVar) {
        if (cVar instanceof LocalDateTime) {
            return compareTo0((LocalDateTime) cVar) < 0;
        }
        return super.isBefore(cVar);
    }

    @Override // org.threeten.bp.chrono.c
    public boolean isEqual(org.threeten.bp.chrono.c<?> cVar) {
        if (cVar instanceof LocalDateTime) {
            return compareTo0((LocalDateTime) cVar) == 0;
        }
        return super.isEqual(cVar);
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar.isDateBased() || gVar.isTimeBased() : gVar != null && gVar.isSupportedBy(this);
    }

    public LocalDateTime minusDays(long j10) {
        return j10 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j10);
    }

    public LocalDateTime minusHours(long j10) {
        return plusWithOverflow(this.date, j10, 0L, 0L, 0L, -1);
    }

    public LocalDateTime minusMinutes(long j10) {
        return plusWithOverflow(this.date, 0L, j10, 0L, 0L, -1);
    }

    public LocalDateTime minusMonths(long j10) {
        return j10 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j10);
    }

    public LocalDateTime minusNanos(long j10) {
        return plusWithOverflow(this.date, 0L, 0L, 0L, j10, -1);
    }

    public LocalDateTime minusSeconds(long j10) {
        return plusWithOverflow(this.date, 0L, 0L, j10, 0L, -1);
    }

    public LocalDateTime minusWeeks(long j10) {
        return j10 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j10);
    }

    public LocalDateTime minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    public LocalDateTime plusDays(long j10) {
        return with(this.date.plusDays(j10), this.time);
    }

    public LocalDateTime plusHours(long j10) {
        return plusWithOverflow(this.date, j10, 0L, 0L, 0L, 1);
    }

    public LocalDateTime plusMinutes(long j10) {
        return plusWithOverflow(this.date, 0L, j10, 0L, 0L, 1);
    }

    public LocalDateTime plusMonths(long j10) {
        return with(this.date.plusMonths(j10), this.time);
    }

    public LocalDateTime plusNanos(long j10) {
        return plusWithOverflow(this.date, 0L, 0L, 0L, j10, 1);
    }

    public LocalDateTime plusSeconds(long j10) {
        return plusWithOverflow(this.date, 0L, 0L, j10, 0L, 1);
    }

    public LocalDateTime plusWeeks(long j10) {
        return with(this.date.plusWeeks(j10), this.time);
    }

    public LocalDateTime plusYears(long j10) {
        return with(this.date.plusYears(j10), this.time);
    }

    @Override // org.threeten.bp.chrono.c, jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.b()) {
            return (R) toLocalDate();
        }
        return (R) super.query(iVar);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isTimeBased() ? this.time.range(gVar) : this.date.range(gVar);
        }
        return gVar.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.c
    public LocalTime toLocalTime() {
        return this.time;
    }

    @Override // org.threeten.bp.chrono.c
    public String toString() {
        return this.date.toString() + 'T' + this.time.toString();
    }

    public LocalDateTime truncatedTo(j jVar) {
        return with(this.date, this.time.truncatedTo(jVar));
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        LocalDateTime from = from((org.threeten.bp.temporal.c) bVar);
        if (jVar instanceof ChronoUnit) {
            ChronoUnit chronoUnit = (ChronoUnit) jVar;
            if (chronoUnit.isTimeBased()) {
                long daysUntil = this.date.daysUntil(from.date);
                long nanoOfDay = from.time.toNanoOfDay() - this.time.toNanoOfDay();
                int i9 = (daysUntil > 0L ? 1 : (daysUntil == 0L ? 0 : -1));
                if (i9 > 0 && nanoOfDay < 0) {
                    daysUntil--;
                    nanoOfDay += 86400000000000L;
                } else if (i9 < 0 && nanoOfDay > 0) {
                    daysUntil++;
                    nanoOfDay -= 86400000000000L;
                }
                switch (b.f56465a[chronoUnit.ordinal()]) {
                    case 1:
                        return d.k(d.n(daysUntil, 86400000000000L), nanoOfDay);
                    case 2:
                        return d.k(d.n(daysUntil, 86400000000L), nanoOfDay / 1000);
                    case 3:
                        return d.k(d.n(daysUntil, 86400000L), nanoOfDay / 1000000);
                    case 4:
                        return d.k(d.m(daysUntil, 86400), nanoOfDay / 1000000000);
                    case 5:
                        return d.k(d.m(daysUntil, 1440), nanoOfDay / 60000000000L);
                    case 6:
                        return d.k(d.m(daysUntil, 24), nanoOfDay / 3600000000000L);
                    case 7:
                        return d.k(d.m(daysUntil, 2), nanoOfDay / 43200000000000L);
                    default:
                        throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
                }
            }
            LocalDate localDate = from.date;
            if (localDate.isAfter(this.date) && from.time.isBefore(this.time)) {
                localDate = localDate.minusDays(1L);
            } else if (localDate.isBefore(this.date) && from.time.isAfter(this.time)) {
                localDate = localDate.plusDays(1L);
            }
            return this.date.until(localDate, jVar);
        }
        return jVar.between(this, from);
    }

    public LocalDateTime withDayOfMonth(int i9) {
        return with(this.date.withDayOfMonth(i9), this.time);
    }

    public LocalDateTime withDayOfYear(int i9) {
        return with(this.date.withDayOfYear(i9), this.time);
    }

    public LocalDateTime withHour(int i9) {
        return with(this.date, this.time.withHour(i9));
    }

    public LocalDateTime withMinute(int i9) {
        return with(this.date, this.time.withMinute(i9));
    }

    public LocalDateTime withMonth(int i9) {
        return with(this.date.withMonth(i9), this.time);
    }

    public LocalDateTime withNano(int i9) {
        return with(this.date, this.time.withNano(i9));
    }

    public LocalDateTime withSecond(int i9) {
        return with(this.date, this.time.withSecond(i9));
    }

    public LocalDateTime withYear(int i9) {
        return with(this.date.withYear(i9), this.time);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        this.date.writeExternal(dataOutput);
        this.time.writeExternal(dataOutput);
    }

    public static LocalDateTime now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static LocalDateTime parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        d.i(bVar, "formatter");
        return (LocalDateTime) bVar.h(charSequence, FROM);
    }

    @Override // org.threeten.bp.chrono.c
    /* renamed from: atZone */
    public org.threeten.bp.chrono.g<LocalDate> atZone2(ZoneId zoneId) {
        return ZonedDateTime.of(this, zoneId);
    }

    @Override // org.threeten.bp.chrono.c, java.lang.Comparable
    public int compareTo(org.threeten.bp.chrono.c<?> cVar) {
        if (cVar instanceof LocalDateTime) {
            return compareTo0((LocalDateTime) cVar);
        }
        return super.compareTo(cVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.threeten.bp.chrono.c
    public LocalDate toLocalDate() {
        return this.date;
    }

    public static LocalDateTime now(org.threeten.bp.a aVar) {
        d.i(aVar, "clock");
        Instant b10 = aVar.b();
        return ofEpochSecond(b10.getEpochSecond(), b10.getNano(), aVar.a().getRules().a(b10));
    }

    public static LocalDateTime of(int i9, Month month, int i10, int i11, int i12, int i13) {
        return new LocalDateTime(LocalDate.of(i9, month, i10), LocalTime.of(i11, i12, i13));
    }

    public boolean isSupported(j jVar) {
        return jVar instanceof ChronoUnit ? jVar.isDateBased() || jVar.isTimeBased() : jVar != null && jVar.isSupportedBy(this);
    }

    private LocalDateTime with(LocalDate localDate, LocalTime localTime) {
        return (this.date == localDate && this.time == localTime) ? this : new LocalDateTime(localDate, localTime);
    }

    @Override // org.threeten.bp.chrono.c, jl.b
    public LocalDateTime minus(f fVar) {
        return (LocalDateTime) fVar.subtractFrom(this);
    }

    @Override // org.threeten.bp.chrono.c, jl.b
    public LocalDateTime plus(f fVar) {
        return (LocalDateTime) fVar.addTo(this);
    }

    @Override // org.threeten.bp.chrono.c, jl.b, org.threeten.bp.temporal.b
    public LocalDateTime minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.chrono.c, org.threeten.bp.temporal.b
    public LocalDateTime plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            switch (b.f56465a[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return plusNanos(j10);
                case 2:
                    return plusDays(j10 / 86400000000L).plusNanos((j10 % 86400000000L) * 1000);
                case 3:
                    return plusDays(j10 / 86400000).plusNanos((j10 % 86400000) * 1000000);
                case 4:
                    return plusSeconds(j10);
                case 5:
                    return plusMinutes(j10);
                case 6:
                    return plusHours(j10);
                case 7:
                    return plusDays(j10 / 256).plusHours((j10 % 256) * 12);
                default:
                    return with(this.date.plus(j10, jVar), this.time);
            }
        }
        return (LocalDateTime) jVar.addTo(this, j10);
    }

    public static LocalDateTime of(int i9, Month month, int i10, int i11, int i12, int i13, int i14) {
        return new LocalDateTime(LocalDate.of(i9, month, i10), LocalTime.of(i11, i12, i13, i14));
    }

    @Override // org.threeten.bp.chrono.c, jl.b, org.threeten.bp.temporal.b
    public LocalDateTime with(org.threeten.bp.temporal.d dVar) {
        if (dVar instanceof LocalDate) {
            return with((LocalDate) dVar, this.time);
        }
        if (dVar instanceof LocalTime) {
            return with(this.date, (LocalTime) dVar);
        }
        if (dVar instanceof LocalDateTime) {
            return (LocalDateTime) dVar;
        }
        return (LocalDateTime) dVar.adjustInto(this);
    }

    public static LocalDateTime of(int i9, int i10, int i11, int i12, int i13) {
        return new LocalDateTime(LocalDate.of(i9, i10, i11), LocalTime.of(i12, i13));
    }

    public static LocalDateTime of(int i9, int i10, int i11, int i12, int i13, int i14) {
        return new LocalDateTime(LocalDate.of(i9, i10, i11), LocalTime.of(i12, i13, i14));
    }

    @Override // org.threeten.bp.chrono.c, org.threeten.bp.temporal.b
    public LocalDateTime with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            if (gVar.isTimeBased()) {
                return with(this.date, this.time.with(gVar, j10));
            }
            return with(this.date.with(gVar, j10), this.time);
        }
        return (LocalDateTime) gVar.adjustInto(this, j10);
    }

    public static LocalDateTime of(int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        return new LocalDateTime(LocalDate.of(i9, i10, i11), LocalTime.of(i12, i13, i14, i15));
    }

    public static LocalDateTime of(LocalDate localDate, LocalTime localTime) {
        d.i(localDate, "date");
        d.i(localTime, CrashHianalyticsData.TIME);
        return new LocalDateTime(localDate, localTime);
    }
}
