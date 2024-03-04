package org.threeten.bp;

import com.tencent.imsdk.BaseConstants;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import jl.d;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.chrono.j;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
import org.threeten.bp.zone.ZoneOffsetTransition;
/* loaded from: classes7.dex */
public final class LocalDate extends org.threeten.bp.chrono.b implements Serializable {
    static final long DAYS_0000_TO_1970 = 719528;
    private static final int DAYS_PER_CYCLE = 146097;
    private static final long serialVersionUID = 2942565459149668126L;
    private final short day;
    private final short month;
    private final int year;
    public static final LocalDate MIN = of((int) Year.MIN_VALUE, 1, 1);
    public static final LocalDate MAX = of((int) Year.MAX_VALUE, 12, 31);
    public static final i<LocalDate> FROM = new a();

    /* loaded from: classes7.dex */
    class a implements i<LocalDate> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public LocalDate a(org.threeten.bp.temporal.c cVar) {
            return LocalDate.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56463a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f56464b;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56464b = iArr;
            try {
                iArr[ChronoUnit.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56464b[ChronoUnit.WEEKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56464b[ChronoUnit.MONTHS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56464b[ChronoUnit.YEARS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56464b[ChronoUnit.DECADES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56464b[ChronoUnit.CENTURIES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56464b[ChronoUnit.MILLENNIA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f56464b[ChronoUnit.ERAS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[ChronoField.values().length];
            f56463a = iArr2;
            try {
                iArr2[ChronoField.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f56463a[ChronoField.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f56463a[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f56463a[ChronoField.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f56463a[ChronoField.DAY_OF_WEEK.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f56463a[ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f56463a[ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f56463a[ChronoField.EPOCH_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f56463a[ChronoField.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f56463a[ChronoField.MONTH_OF_YEAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f56463a[ChronoField.PROLEPTIC_MONTH.ordinal()] = 11;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f56463a[ChronoField.YEAR.ordinal()] = 12;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f56463a[ChronoField.ERA.ordinal()] = 13;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    private LocalDate(int i9, int i10, int i11) {
        this.year = i9;
        this.month = (short) i10;
        this.day = (short) i11;
    }

    private static LocalDate create(int i9, Month month, int i10) {
        if (i10 <= 28 || i10 <= month.length(IsoChronology.INSTANCE.isLeapYear(i9))) {
            return new LocalDate(i9, month.getValue(), i10);
        }
        if (i10 == 29) {
            throw new DateTimeException("Invalid date 'February 29' as '" + i9 + "' is not a leap year");
        }
        throw new DateTimeException("Invalid date '" + month.name() + " " + i10 + "'");
    }

    public static LocalDate from(org.threeten.bp.temporal.c cVar) {
        LocalDate localDate = (LocalDate) cVar.query(h.b());
        if (localDate != null) {
            return localDate;
        }
        throw new DateTimeException("Unable to obtain LocalDate from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
    }

    private int get0(g gVar) {
        switch (b.f56463a[((ChronoField) gVar).ordinal()]) {
            case 1:
                return this.day;
            case 2:
                return getDayOfYear();
            case 3:
                return ((this.day - 1) / 7) + 1;
            case 4:
                int i9 = this.year;
                return i9 >= 1 ? i9 : 1 - i9;
            case 5:
                return getDayOfWeek().getValue();
            case 6:
                return ((this.day - 1) % 7) + 1;
            case 7:
                return ((getDayOfYear() - 1) % 7) + 1;
            case 8:
                throw new DateTimeException("Field too large for an int: " + gVar);
            case 9:
                return ((getDayOfYear() - 1) / 7) + 1;
            case 10:
                return this.month;
            case 11:
                throw new DateTimeException("Field too large for an int: " + gVar);
            case 12:
                return this.year;
            case 13:
                return this.year >= 1 ? 1 : 0;
            default:
                throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }
    }

    private long getProlepticMonth() {
        return (this.year * 12) + (this.month - 1);
    }

    private long monthsUntil(LocalDate localDate) {
        return (((localDate.getProlepticMonth() * 32) + localDate.getDayOfMonth()) - ((getProlepticMonth() * 32) + getDayOfMonth())) / 32;
    }

    public static LocalDate now() {
        return now(org.threeten.bp.a.d());
    }

    public static LocalDate of(int i9, Month month, int i10) {
        ChronoField.YEAR.checkValidValue(i9);
        d.i(month, "month");
        ChronoField.DAY_OF_MONTH.checkValidValue(i10);
        return create(i9, month, i10);
    }

    public static LocalDate ofEpochDay(long j10) {
        long j11;
        ChronoField.EPOCH_DAY.checkValidValue(j10);
        long j12 = (j10 + DAYS_0000_TO_1970) - 60;
        if (j12 < 0) {
            long j13 = ((j12 + 1) / 146097) - 1;
            j11 = j13 * 400;
            j12 += (-j13) * 146097;
        } else {
            j11 = 0;
        }
        long j14 = ((j12 * 400) + 591) / 146097;
        long j15 = j12 - ((((j14 * 365) + (j14 / 4)) - (j14 / 100)) + (j14 / 400));
        if (j15 < 0) {
            j14--;
            j15 = j12 - ((((365 * j14) + (j14 / 4)) - (j14 / 100)) + (j14 / 400));
        }
        int i9 = (int) j15;
        int i10 = ((i9 * 5) + 2) / ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS;
        return new LocalDate(ChronoField.YEAR.checkValidIntValue(j14 + j11 + (i10 / 10)), ((i10 + 2) % 12) + 1, (i9 - (((i10 * 306) + 5) / 10)) + 1);
    }

    public static LocalDate ofYearDay(int i9, int i10) {
        long j10 = i9;
        ChronoField.YEAR.checkValidValue(j10);
        ChronoField.DAY_OF_YEAR.checkValidValue(i10);
        boolean isLeapYear = IsoChronology.INSTANCE.isLeapYear(j10);
        if (i10 == 366 && !isLeapYear) {
            throw new DateTimeException("Invalid date 'DayOfYear 366' as '" + i9 + "' is not a leap year");
        }
        Month of2 = Month.of(((i10 - 1) / 31) + 1);
        if (i10 > (of2.firstDayOfYear(isLeapYear) + of2.length(isLeapYear)) - 1) {
            of2 = of2.plus(1L);
        }
        return create(i9, of2, (i10 - of2.firstDayOfYear(isLeapYear)) + 1);
    }

    public static LocalDate parse(CharSequence charSequence) {
        return parse(charSequence, org.threeten.bp.format.b.f56515h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LocalDate readExternal(DataInput dataInput) throws IOException {
        return of(dataInput.readInt(), dataInput.readByte(), dataInput.readByte());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private static LocalDate resolvePreviousValid(int i9, int i10, int i11) {
        if (i10 == 2) {
            i11 = Math.min(i11, IsoChronology.INSTANCE.isLeapYear((long) i9) ? 29 : 28);
        } else if (i10 == 4 || i10 == 6 || i10 == 9 || i10 == 11) {
            i11 = Math.min(i11, 30);
        }
        return of(i9, i10, i11);
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 3, this);
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return super.adjustInto(bVar);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.of(this, LocalTime.MIDNIGHT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int compareTo0(LocalDate localDate) {
        int i9 = this.year - localDate.year;
        if (i9 == 0) {
            int i10 = this.month - localDate.month;
            return i10 == 0 ? this.day - localDate.day : i10;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long daysUntil(LocalDate localDate) {
        return localDate.toEpochDay() - toEpochDay();
    }

    @Override // org.threeten.bp.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && compareTo0((LocalDate) obj) == 0;
    }

    @Override // org.threeten.bp.chrono.b
    public String format(org.threeten.bp.format.b bVar) {
        return super.format(bVar);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar instanceof ChronoField) {
            return get0(gVar);
        }
        return super.get(gVar);
    }

    public int getDayOfMonth() {
        return this.day;
    }

    public DayOfWeek getDayOfWeek() {
        return DayOfWeek.of(d.g(toEpochDay() + 3, 7) + 1);
    }

    public int getDayOfYear() {
        return (getMonth().firstDayOfYear(isLeapYear()) + this.day) - 1;
    }

    @Override // org.threeten.bp.chrono.b
    public j getEra() {
        return super.getEra();
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar instanceof ChronoField) {
            if (gVar == ChronoField.EPOCH_DAY) {
                return toEpochDay();
            }
            if (gVar == ChronoField.PROLEPTIC_MONTH) {
                return getProlepticMonth();
            }
            return get0(gVar);
        }
        return gVar.getFrom(this);
    }

    public Month getMonth() {
        return Month.of(this.month);
    }

    public int getMonthValue() {
        return this.month;
    }

    public int getYear() {
        return this.year;
    }

    @Override // org.threeten.bp.chrono.b
    public int hashCode() {
        int i9 = this.year;
        return (((i9 << 11) + (this.month << 6)) + this.day) ^ (i9 & (-2048));
    }

    @Override // org.threeten.bp.chrono.b
    public boolean isAfter(org.threeten.bp.chrono.b bVar) {
        if (bVar instanceof LocalDate) {
            return compareTo0((LocalDate) bVar) > 0;
        }
        return super.isAfter(bVar);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean isBefore(org.threeten.bp.chrono.b bVar) {
        if (bVar instanceof LocalDate) {
            return compareTo0((LocalDate) bVar) < 0;
        }
        return super.isBefore(bVar);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean isEqual(org.threeten.bp.chrono.b bVar) {
        if (bVar instanceof LocalDate) {
            return compareTo0((LocalDate) bVar) == 0;
        }
        return super.isEqual(bVar);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean isLeapYear() {
        return IsoChronology.INSTANCE.isLeapYear(this.year);
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return super.isSupported(gVar);
    }

    @Override // org.threeten.bp.chrono.b
    public int lengthOfMonth() {
        short s10 = this.month;
        return s10 != 2 ? (s10 == 4 || s10 == 6 || s10 == 9 || s10 == 11) ? 30 : 31 : isLeapYear() ? 29 : 28;
    }

    @Override // org.threeten.bp.chrono.b
    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    public LocalDate minusDays(long j10) {
        return j10 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j10);
    }

    public LocalDate minusMonths(long j10) {
        return j10 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j10);
    }

    public LocalDate minusWeeks(long j10) {
        return j10 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j10);
    }

    public LocalDate minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    public LocalDate plusDays(long j10) {
        return j10 == 0 ? this : ofEpochDay(d.k(toEpochDay(), j10));
    }

    public LocalDate plusMonths(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = (this.year * 12) + (this.month - 1) + j10;
        return resolvePreviousValid(ChronoField.YEAR.checkValidIntValue(d.e(j11, 12L)), d.g(j11, 12) + 1, this.day);
    }

    public LocalDate plusWeeks(long j10) {
        return plusDays(d.m(j10, 7));
    }

    public LocalDate plusYears(long j10) {
        return j10 == 0 ? this : resolvePreviousValid(ChronoField.YEAR.checkValidIntValue(this.year + j10), this.month, this.day);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.threeten.bp.chrono.b, jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        return iVar == h.b() ? this : (R) super.query(iVar);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            if (chronoField.isDateBased()) {
                int i9 = b.f56463a[chronoField.ordinal()];
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 == 3) {
                            return ValueRange.of(1L, (getMonth() != Month.FEBRUARY || isLeapYear()) ? 5L : 4L);
                        } else if (i9 != 4) {
                            return gVar.range();
                        } else {
                            return ValueRange.of(1L, getYear() <= 0 ? 1000000000L : 999999999L);
                        }
                    }
                    return ValueRange.of(1L, lengthOfYear());
                }
                return ValueRange.of(1L, lengthOfMonth());
            }
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }
        return gVar.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.b
    public long toEpochDay() {
        long j10;
        long j11 = this.year;
        long j12 = this.month;
        long j13 = (365 * j11) + 0;
        if (j11 >= 0) {
            j10 = j13 + (((3 + j11) / 4) - ((99 + j11) / 100)) + ((j11 + 399) / 400);
        } else {
            j10 = j13 - (((j11 / (-4)) - (j11 / (-100))) + (j11 / (-400)));
        }
        long j14 = j10 + (((367 * j12) - 362) / 12) + (this.day - 1);
        if (j12 > 2) {
            j14--;
            if (!isLeapYear()) {
                j14--;
            }
        }
        return j14 - DAYS_0000_TO_1970;
    }

    @Override // org.threeten.bp.chrono.b
    public String toString() {
        int i9 = this.year;
        short s10 = this.month;
        short s11 = this.day;
        int abs = Math.abs(i9);
        StringBuilder sb2 = new StringBuilder(10);
        if (abs >= 1000) {
            if (i9 > 9999) {
                sb2.append('+');
            }
            sb2.append(i9);
        } else if (i9 < 0) {
            sb2.append(i9 + BaseConstants.ERR_SVR_SSO_VCODE);
            sb2.deleteCharAt(1);
        } else {
            sb2.append(i9 + 10000);
            sb2.deleteCharAt(0);
        }
        sb2.append(s10 < 10 ? "-0" : "-");
        sb2.append((int) s10);
        sb2.append(s11 >= 10 ? "-" : "-0");
        sb2.append((int) s11);
        return sb2.toString();
    }

    public LocalDate withDayOfMonth(int i9) {
        return this.day == i9 ? this : of(this.year, this.month, i9);
    }

    public LocalDate withDayOfYear(int i9) {
        return getDayOfYear() == i9 ? this : ofYearDay(this.year, i9);
    }

    public LocalDate withMonth(int i9) {
        if (this.month == i9) {
            return this;
        }
        ChronoField.MONTH_OF_YEAR.checkValidValue(i9);
        return resolvePreviousValid(this.year, i9, this.day);
    }

    public LocalDate withYear(int i9) {
        if (this.year == i9) {
            return this;
        }
        ChronoField.YEAR.checkValidValue(i9);
        return resolvePreviousValid(i9, this.month, this.day);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
        dataOutput.writeByte(this.month);
        dataOutput.writeByte(this.day);
    }

    public static LocalDate now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static LocalDate parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        d.i(bVar, "formatter");
        return (LocalDate) bVar.h(charSequence, FROM);
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        ZoneOffsetTransition b10;
        d.i(zoneId, "zone");
        LocalDateTime atTime = atTime(LocalTime.MIDNIGHT);
        if (!(zoneId instanceof ZoneOffset) && (b10 = zoneId.getRules().b(atTime)) != null && b10.isGap()) {
            atTime = b10.getDateTimeAfter();
        }
        return ZonedDateTime.of(atTime, zoneId);
    }

    @Override // org.threeten.bp.chrono.b
    public LocalDateTime atTime(LocalTime localTime) {
        return LocalDateTime.of(this, localTime);
    }

    @Override // org.threeten.bp.chrono.b, java.lang.Comparable
    public int compareTo(org.threeten.bp.chrono.b bVar) {
        if (bVar instanceof LocalDate) {
            return compareTo0((LocalDate) bVar);
        }
        return super.compareTo(bVar);
    }

    @Override // org.threeten.bp.chrono.b
    public IsoChronology getChronology() {
        return IsoChronology.INSTANCE;
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, org.threeten.bp.temporal.j jVar) {
        LocalDate from = from((org.threeten.bp.temporal.c) bVar);
        if (jVar instanceof ChronoUnit) {
            switch (b.f56464b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return daysUntil(from);
                case 2:
                    return daysUntil(from) / 7;
                case 3:
                    return monthsUntil(from);
                case 4:
                    return monthsUntil(from) / 12;
                case 5:
                    return monthsUntil(from) / 120;
                case 6:
                    return monthsUntil(from) / 1200;
                case 7:
                    return monthsUntil(from) / 12000;
                case 8:
                    ChronoField chronoField = ChronoField.ERA;
                    return from.getLong(chronoField) - getLong(chronoField);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return jVar.between(this, from);
    }

    public static LocalDate now(org.threeten.bp.a aVar) {
        d.i(aVar, "clock");
        Instant b10 = aVar.b();
        return ofEpochDay(d.e(b10.getEpochSecond() + aVar.a().getRules().a(b10).getTotalSeconds(), 86400L));
    }

    public LocalDateTime atTime(int i9, int i10) {
        return atTime(LocalTime.of(i9, i10));
    }

    public LocalDateTime atTime(int i9, int i10, int i11) {
        return atTime(LocalTime.of(i9, i10, i11));
    }

    public static LocalDate of(int i9, int i10, int i11) {
        ChronoField.YEAR.checkValidValue(i9);
        ChronoField.MONTH_OF_YEAR.checkValidValue(i10);
        ChronoField.DAY_OF_MONTH.checkValidValue(i11);
        return create(i9, Month.of(i10), i11);
    }

    public LocalDateTime atTime(int i9, int i10, int i11, int i12) {
        return atTime(LocalTime.of(i9, i10, i11, i12));
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public LocalDate minus(f fVar) {
        return (LocalDate) fVar.subtractFrom(this);
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public LocalDate plus(f fVar) {
        return (LocalDate) fVar.addTo(this);
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public LocalDate with(org.threeten.bp.temporal.d dVar) {
        if (dVar instanceof LocalDate) {
            return (LocalDate) dVar;
        }
        return (LocalDate) dVar.adjustInto(this);
    }

    public OffsetDateTime atTime(OffsetTime offsetTime) {
        return OffsetDateTime.of(LocalDateTime.of(this, offsetTime.toLocalTime()), offsetTime.getOffset());
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public LocalDate minus(long j10, org.threeten.bp.temporal.j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public LocalDate plus(long j10, org.threeten.bp.temporal.j jVar) {
        if (jVar instanceof ChronoUnit) {
            switch (b.f56464b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return plusDays(j10);
                case 2:
                    return plusWeeks(j10);
                case 3:
                    return plusMonths(j10);
                case 4:
                    return plusYears(j10);
                case 5:
                    return plusYears(d.m(j10, 10));
                case 6:
                    return plusYears(d.m(j10, 100));
                case 7:
                    return plusYears(d.m(j10, 1000));
                case 8:
                    ChronoField chronoField = ChronoField.ERA;
                    return with((g) chronoField, d.k(getLong(chronoField), j10));
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return (LocalDate) jVar.addTo(this, j10);
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public LocalDate with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            chronoField.checkValidValue(j10);
            switch (b.f56463a[chronoField.ordinal()]) {
                case 1:
                    return withDayOfMonth((int) j10);
                case 2:
                    return withDayOfYear((int) j10);
                case 3:
                    return plusWeeks(j10 - getLong(ChronoField.ALIGNED_WEEK_OF_MONTH));
                case 4:
                    if (this.year < 1) {
                        j10 = 1 - j10;
                    }
                    return withYear((int) j10);
                case 5:
                    return plusDays(j10 - getDayOfWeek().getValue());
                case 6:
                    return plusDays(j10 - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return plusDays(j10 - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return ofEpochDay(j10);
                case 9:
                    return plusWeeks(j10 - getLong(ChronoField.ALIGNED_WEEK_OF_YEAR));
                case 10:
                    return withMonth((int) j10);
                case 11:
                    return plusMonths(j10 - getLong(ChronoField.PROLEPTIC_MONTH));
                case 12:
                    return withYear((int) j10);
                case 13:
                    return getLong(ChronoField.ERA) == j10 ? this : withYear(1 - this.year);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            }
        }
        return (LocalDate) gVar.adjustInto(this, j10);
    }

    @Override // org.threeten.bp.chrono.b
    public Period until(org.threeten.bp.chrono.b bVar) {
        LocalDate from = from((org.threeten.bp.temporal.c) bVar);
        long prolepticMonth = from.getProlepticMonth() - getProlepticMonth();
        int i9 = from.day - this.day;
        int i10 = (prolepticMonth > 0L ? 1 : (prolepticMonth == 0L ? 0 : -1));
        if (i10 > 0 && i9 < 0) {
            prolepticMonth--;
            i9 = (int) (from.toEpochDay() - plusMonths(prolepticMonth).toEpochDay());
        } else if (i10 < 0 && i9 > 0) {
            prolepticMonth++;
            i9 -= from.lengthOfMonth();
        }
        return Period.of(d.q(prolepticMonth / 12), (int) (prolepticMonth % 12), i9);
    }
}
