package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Calendar;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.Period;
import org.threeten.bp.ZoneId;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public final class JapaneseDate extends org.threeten.bp.chrono.a<JapaneseDate> {
    static final LocalDate MIN_DATE = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    private transient JapaneseEra era;
    private final LocalDate isoDate;
    private transient int yearOfEra;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56487a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56487a = iArr;
            try {
                iArr[ChronoField.DAY_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56487a[ChronoField.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56487a[ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56487a[ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56487a[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56487a[ChronoField.ALIGNED_WEEK_OF_YEAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56487a[ChronoField.ERA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JapaneseDate(LocalDate localDate) {
        if (!localDate.isBefore(MIN_DATE)) {
            JapaneseEra from = JapaneseEra.from(localDate);
            this.era = from;
            this.yearOfEra = localDate.getYear() - (from.startDate().getYear() - 1);
            this.isoDate = localDate;
            return;
        }
        throw new DateTimeException("Minimum supported date is January 1st Meiji 6");
    }

    private ValueRange actualRange(int i9) {
        Calendar calendar = Calendar.getInstance(JapaneseChronology.LOCALE);
        calendar.set(0, this.era.getValue() + 2);
        calendar.set(this.yearOfEra, this.isoDate.getMonthValue() - 1, this.isoDate.getDayOfMonth());
        return ValueRange.of(calendar.getActualMinimum(i9), calendar.getActualMaximum(i9));
    }

    public static JapaneseDate from(org.threeten.bp.temporal.c cVar) {
        return JapaneseChronology.INSTANCE.date(cVar);
    }

    private long getDayOfYear() {
        int dayOfYear;
        if (this.yearOfEra == 1) {
            dayOfYear = (this.isoDate.getDayOfYear() - this.era.startDate().getDayOfYear()) + 1;
        } else {
            dayOfYear = this.isoDate.getDayOfYear();
        }
        return dayOfYear;
    }

    public static JapaneseDate now() {
        return now(org.threeten.bp.a.d());
    }

    public static JapaneseDate of(JapaneseEra japaneseEra, int i9, int i10, int i11) {
        jl.d.i(japaneseEra, "era");
        if (i9 >= 1) {
            LocalDate startDate = japaneseEra.startDate();
            LocalDate endDate = japaneseEra.endDate();
            LocalDate of2 = LocalDate.of((startDate.getYear() - 1) + i9, i10, i11);
            if (!of2.isBefore(startDate) && !of2.isAfter(endDate)) {
                return new JapaneseDate(japaneseEra, i9, of2);
            }
            throw new DateTimeException("Requested date is outside bounds of era " + japaneseEra);
        }
        throw new DateTimeException("Invalid YearOfEra: " + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JapaneseDate ofYearDay(JapaneseEra japaneseEra, int i9, int i10) {
        jl.d.i(japaneseEra, "era");
        if (i9 >= 1) {
            LocalDate startDate = japaneseEra.startDate();
            LocalDate endDate = japaneseEra.endDate();
            if (i9 == 1 && (i10 = i10 + (startDate.getDayOfYear() - 1)) > startDate.lengthOfYear()) {
                throw new DateTimeException("DayOfYear exceeds maximum allowed in the first year of era " + japaneseEra);
            }
            LocalDate ofYearDay = LocalDate.ofYearDay((startDate.getYear() - 1) + i9, i10);
            if (!ofYearDay.isBefore(startDate) && !ofYearDay.isAfter(endDate)) {
                return new JapaneseDate(japaneseEra, i9, ofYearDay);
            }
            throw new DateTimeException("Requested date is outside bounds of era " + japaneseEra);
        }
        throw new DateTimeException("Invalid YearOfEra: " + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b readExternal(DataInput dataInput) throws IOException {
        return JapaneseChronology.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        JapaneseEra from = JapaneseEra.from(this.isoDate);
        this.era = from;
        this.yearOfEra = this.isoDate.getYear() - (from.startDate().getYear() - 1);
    }

    private JapaneseDate withYear(JapaneseEra japaneseEra, int i9) {
        return with(this.isoDate.withYear(JapaneseChronology.INSTANCE.prolepticYear(japaneseEra, i9)));
    }

    private Object writeReplace() {
        return new k((byte) 1, this);
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public final c<JapaneseDate> atTime(LocalTime localTime) {
        return super.atTime(localTime);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JapaneseDate) {
            return this.isoDate.equals(((JapaneseDate) obj).isoDate);
        }
        return false;
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            switch (a.f56487a[((ChronoField) gVar).ordinal()]) {
                case 1:
                    return getDayOfYear();
                case 2:
                    return this.yearOfEra;
                case 3:
                case 4:
                case 5:
                case 6:
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
                case 7:
                    return this.era.getValue();
                default:
                    return this.isoDate.getLong(gVar);
            }
        }
        return gVar.getFrom(this);
    }

    @Override // org.threeten.bp.chrono.b
    public int hashCode() {
        return getChronology().getId().hashCode() ^ this.isoDate.hashCode();
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.c
    public boolean isSupported(org.threeten.bp.temporal.g gVar) {
        if (gVar == ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH || gVar == ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR || gVar == ChronoField.ALIGNED_WEEK_OF_MONTH || gVar == ChronoField.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return super.isSupported(gVar);
    }

    @Override // org.threeten.bp.chrono.b
    public int lengthOfMonth() {
        return this.isoDate.lengthOfMonth();
    }

    @Override // org.threeten.bp.chrono.b
    public int lengthOfYear() {
        Calendar calendar = Calendar.getInstance(JapaneseChronology.LOCALE);
        calendar.set(0, this.era.getValue() + 2);
        calendar.set(this.yearOfEra, this.isoDate.getMonthValue() - 1, this.isoDate.getDayOfMonth());
        return calendar.getActualMaximum(6);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            if (isSupported(gVar)) {
                ChronoField chronoField = (ChronoField) gVar;
                int i9 = a.f56487a[chronoField.ordinal()];
                if (i9 != 1) {
                    if (i9 != 2) {
                        return getChronology().range(chronoField);
                    }
                    return actualRange(1);
                }
                return actualRange(6);
            }
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }
        return gVar.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.b
    public long toEpochDay() {
        return this.isoDate.toEpochDay();
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.temporal.b
    public /* bridge */ /* synthetic */ long until(org.threeten.bp.temporal.b bVar, org.threeten.bp.temporal.j jVar) {
        return super.until(bVar, jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(get(ChronoField.YEAR));
        dataOutput.writeByte(get(ChronoField.MONTH_OF_YEAR));
        dataOutput.writeByte(get(ChronoField.DAY_OF_MONTH));
    }

    public static JapaneseDate now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    @Override // org.threeten.bp.chrono.b
    public JapaneseChronology getChronology() {
        return JapaneseChronology.INSTANCE;
    }

    @Override // org.threeten.bp.chrono.b
    public JapaneseEra getEra() {
        return this.era;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusDays */
    public org.threeten.bp.chrono.a<JapaneseDate> plusDays2(long j10) {
        return with(this.isoDate.plusDays(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusMonths */
    public org.threeten.bp.chrono.a<JapaneseDate> plusMonths2(long j10) {
        return with(this.isoDate.plusMonths(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusYears */
    public org.threeten.bp.chrono.a<JapaneseDate> plusYears2(long j10) {
        return with(this.isoDate.plusYears(j10));
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public e until(b bVar) {
        Period until = this.isoDate.until(bVar);
        return getChronology().period(until.getYears(), until.getMonths(), until.getDays());
    }

    public static JapaneseDate now(org.threeten.bp.a aVar) {
        return new JapaneseDate(LocalDate.now(aVar));
    }

    private JapaneseDate withYear(int i9) {
        return withYear(getEra(), i9);
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public JapaneseDate minus(org.threeten.bp.temporal.f fVar) {
        return (JapaneseDate) super.minus(fVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public JapaneseDate with(org.threeten.bp.temporal.d dVar) {
        return (JapaneseDate) super.with(dVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public JapaneseDate minus(long j10, org.threeten.bp.temporal.j jVar) {
        return (JapaneseDate) super.minus(j10, jVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public JapaneseDate plus(org.threeten.bp.temporal.f fVar) {
        return (JapaneseDate) super.plus(fVar);
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public JapaneseDate with(org.threeten.bp.temporal.g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            if (getLong(chronoField) == j10) {
                return this;
            }
            int[] iArr = a.f56487a;
            int i9 = iArr[chronoField.ordinal()];
            if (i9 == 1 || i9 == 2 || i9 == 7) {
                int checkValidIntValue = getChronology().range(chronoField).checkValidIntValue(j10, chronoField);
                int i10 = iArr[chronoField.ordinal()];
                if (i10 == 1) {
                    return with(this.isoDate.plusDays(checkValidIntValue - getDayOfYear()));
                }
                if (i10 == 2) {
                    return withYear(checkValidIntValue);
                }
                if (i10 == 7) {
                    return withYear(JapaneseEra.of(checkValidIntValue), this.yearOfEra);
                }
            }
            return with(this.isoDate.with(gVar, j10));
        }
        return (JapaneseDate) gVar.adjustInto(this, j10);
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public JapaneseDate plus(long j10, org.threeten.bp.temporal.j jVar) {
        return (JapaneseDate) super.plus(j10, jVar);
    }

    JapaneseDate(JapaneseEra japaneseEra, int i9, LocalDate localDate) {
        if (!localDate.isBefore(MIN_DATE)) {
            this.era = japaneseEra;
            this.yearOfEra = i9;
            this.isoDate = localDate;
            return;
        }
        throw new DateTimeException("Minimum supported date is January 1st Meiji 6");
    }

    public static JapaneseDate of(int i9, int i10, int i11) {
        return new JapaneseDate(LocalDate.of(i9, i10, i11));
    }

    private JapaneseDate with(LocalDate localDate) {
        return localDate.equals(this.isoDate) ? this : new JapaneseDate(localDate);
    }
}
