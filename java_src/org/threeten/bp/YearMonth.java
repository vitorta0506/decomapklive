package org.threeten.bp;

import com.tencent.imsdk.BaseConstants;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.format.SignStyle;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.d;
import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
import org.threeten.bp.temporal.j;
/* loaded from: classes7.dex */
public final class YearMonth extends jl.c implements org.threeten.bp.temporal.b, d, Comparable<YearMonth>, Serializable {
    public static final i<YearMonth> FROM = new a();
    private static final org.threeten.bp.format.b PARSER = new org.threeten.bp.format.c().n(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).f('-').m(ChronoField.MONTH_OF_YEAR, 2).v();
    private static final long serialVersionUID = 4183400860270640070L;
    private final int month;
    private final int year;

    /* loaded from: classes7.dex */
    class a implements i<YearMonth> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public YearMonth a(org.threeten.bp.temporal.c cVar) {
            return YearMonth.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56474a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f56475b;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56475b = iArr;
            try {
                iArr[ChronoUnit.MONTHS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56475b[ChronoUnit.YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56475b[ChronoUnit.DECADES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56475b[ChronoUnit.CENTURIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56475b[ChronoUnit.MILLENNIA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56475b[ChronoUnit.ERAS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[ChronoField.values().length];
            f56474a = iArr2;
            try {
                iArr2[ChronoField.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f56474a[ChronoField.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f56474a[ChronoField.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f56474a[ChronoField.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f56474a[ChronoField.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private YearMonth(int i9, int i10) {
        this.year = i9;
        this.month = i10;
    }

    public static YearMonth from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof YearMonth) {
            return (YearMonth) cVar;
        }
        try {
            if (!IsoChronology.INSTANCE.equals(org.threeten.bp.chrono.i.from(cVar))) {
                cVar = LocalDate.from(cVar);
            }
            return of(cVar.get(ChronoField.YEAR), cVar.get(ChronoField.MONTH_OF_YEAR));
        } catch (DateTimeException unused) {
            throw new DateTimeException("Unable to obtain YearMonth from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
        }
    }

    private long getProlepticMonth() {
        return (this.year * 12) + (this.month - 1);
    }

    public static YearMonth now() {
        return now(org.threeten.bp.a.d());
    }

    public static YearMonth of(int i9, Month month) {
        jl.d.i(month, "month");
        return of(i9, month.getValue());
    }

    public static YearMonth parse(CharSequence charSequence) {
        return parse(charSequence, PARSER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static YearMonth readExternal(DataInput dataInput) throws IOException {
        return of(dataInput.readInt(), dataInput.readByte());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 68, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        if (org.threeten.bp.chrono.i.from(bVar).equals(IsoChronology.INSTANCE)) {
            return bVar.with(ChronoField.PROLEPTIC_MONTH, getProlepticMonth());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public LocalDate atDay(int i9) {
        return LocalDate.of(this.year, this.month, i9);
    }

    public LocalDate atEndOfMonth() {
        return LocalDate.of(this.year, this.month, lengthOfMonth());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.year == yearMonth.year && this.month == yearMonth.month;
        }
        return false;
    }

    public String format(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return bVar.b(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        int i9;
        if (gVar instanceof ChronoField) {
            int i10 = b.f56474a[((ChronoField) gVar).ordinal()];
            if (i10 == 1) {
                i9 = this.month;
            } else if (i10 == 2) {
                return getProlepticMonth();
            } else {
                if (i10 == 3) {
                    int i11 = this.year;
                    if (i11 < 1) {
                        i11 = 1 - i11;
                    }
                    return i11;
                } else if (i10 != 4) {
                    if (i10 == 5) {
                        return this.year < 1 ? 0 : 1;
                    }
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
                } else {
                    i9 = this.year;
                }
            }
            return i9;
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

    public int hashCode() {
        return this.year ^ (this.month << 27);
    }

    public boolean isAfter(YearMonth yearMonth) {
        return compareTo(yearMonth) > 0;
    }

    public boolean isBefore(YearMonth yearMonth) {
        return compareTo(yearMonth) < 0;
    }

    public boolean isLeapYear() {
        return IsoChronology.INSTANCE.isLeapYear(this.year);
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.YEAR || gVar == ChronoField.MONTH_OF_YEAR || gVar == ChronoField.PROLEPTIC_MONTH || gVar == ChronoField.YEAR_OF_ERA || gVar == ChronoField.ERA : gVar != null && gVar.isSupportedBy(this);
    }

    public boolean isValidDay(int i9) {
        return i9 >= 1 && i9 <= lengthOfMonth();
    }

    public int lengthOfMonth() {
        return getMonth().length(isLeapYear());
    }

    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    public YearMonth minusMonths(long j10) {
        return j10 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j10);
    }

    public YearMonth minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    public YearMonth plusMonths(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = (this.year * 12) + (this.month - 1) + j10;
        return with(ChronoField.YEAR.checkValidIntValue(jl.d.e(j11, 12L)), jl.d.g(j11, 12) + 1);
    }

    public YearMonth plusYears(long j10) {
        return j10 == 0 ? this : with(ChronoField.YEAR.checkValidIntValue(this.year + j10), this.month);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.a()) {
            return (R) IsoChronology.INSTANCE;
        }
        if (iVar == h.e()) {
            return (R) ChronoUnit.MONTHS;
        }
        if (iVar == h.b() || iVar == h.c() || iVar == h.f() || iVar == h.g() || iVar == h.d()) {
            return null;
        }
        return (R) super.query(iVar);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar == ChronoField.YEAR_OF_ERA) {
            return ValueRange.of(1L, getYear() <= 0 ? 1000000000L : 999999999L);
        }
        return super.range(gVar);
    }

    public String toString() {
        int abs = Math.abs(this.year);
        StringBuilder sb2 = new StringBuilder(9);
        if (abs < 1000) {
            int i9 = this.year;
            if (i9 < 0) {
                sb2.append(i9 + BaseConstants.ERR_SVR_SSO_VCODE);
                sb2.deleteCharAt(1);
            } else {
                sb2.append(i9 + 10000);
                sb2.deleteCharAt(0);
            }
        } else {
            sb2.append(this.year);
        }
        sb2.append(this.month < 10 ? "-0" : "-");
        sb2.append(this.month);
        return sb2.toString();
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        YearMonth from = from(bVar);
        if (jVar instanceof ChronoUnit) {
            long prolepticMonth = from.getProlepticMonth() - getProlepticMonth();
            switch (b.f56475b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return prolepticMonth;
                case 2:
                    return prolepticMonth / 12;
                case 3:
                    return prolepticMonth / 120;
                case 4:
                    return prolepticMonth / 1200;
                case 5:
                    return prolepticMonth / 12000;
                case 6:
                    ChronoField chronoField = ChronoField.ERA;
                    return from.getLong(chronoField) - getLong(chronoField);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return jVar.between(this, from);
    }

    public YearMonth withMonth(int i9) {
        ChronoField.MONTH_OF_YEAR.checkValidValue(i9);
        return with(this.year, i9);
    }

    public YearMonth withYear(int i9) {
        ChronoField.YEAR.checkValidValue(i9);
        return with(i9, this.month);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
        dataOutput.writeByte(this.month);
    }

    public static YearMonth now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static YearMonth parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return (YearMonth) bVar.h(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        int i9 = this.year - yearMonth.year;
        return i9 == 0 ? this.month - yearMonth.month : i9;
    }

    public static YearMonth now(org.threeten.bp.a aVar) {
        LocalDate now = LocalDate.now(aVar);
        return of(now.getYear(), now.getMonth());
    }

    public static YearMonth of(int i9, int i10) {
        ChronoField.YEAR.checkValidValue(i9);
        ChronoField.MONTH_OF_YEAR.checkValidValue(i10);
        return new YearMonth(i9, i10);
    }

    private YearMonth with(int i9, int i10) {
        return (this.year == i9 && this.month == i10) ? this : new YearMonth(i9, i10);
    }

    /* renamed from: minus */
    public YearMonth m3385minus(f fVar) {
        return (YearMonth) fVar.subtractFrom(this);
    }

    /* renamed from: plus */
    public YearMonth m3386plus(f fVar) {
        return (YearMonth) fVar.addTo(this);
    }

    public boolean isSupported(j jVar) {
        return jVar instanceof ChronoUnit ? jVar == ChronoUnit.MONTHS || jVar == ChronoUnit.YEARS || jVar == ChronoUnit.DECADES || jVar == ChronoUnit.CENTURIES || jVar == ChronoUnit.MILLENNIA || jVar == ChronoUnit.ERAS : jVar != null && jVar.isSupportedBy(this);
    }

    @Override // org.threeten.bp.temporal.b
    public YearMonth minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.temporal.b
    public YearMonth plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            switch (b.f56475b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return plusMonths(j10);
                case 2:
                    return plusYears(j10);
                case 3:
                    return plusYears(jl.d.m(j10, 10));
                case 4:
                    return plusYears(jl.d.m(j10, 100));
                case 5:
                    return plusYears(jl.d.m(j10, 1000));
                case 6:
                    ChronoField chronoField = ChronoField.ERA;
                    return with((g) chronoField, jl.d.k(getLong(chronoField), j10));
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return (YearMonth) jVar.addTo(this, j10);
    }

    @Override // org.threeten.bp.temporal.b
    public YearMonth with(d dVar) {
        return (YearMonth) dVar.adjustInto(this);
    }

    @Override // org.threeten.bp.temporal.b
    public YearMonth with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            chronoField.checkValidValue(j10);
            int i9 = b.f56474a[chronoField.ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3) {
                        if (this.year < 1) {
                            j10 = 1 - j10;
                        }
                        return withYear((int) j10);
                    } else if (i9 != 4) {
                        if (i9 == 5) {
                            return getLong(ChronoField.ERA) == j10 ? this : withYear(1 - this.year);
                        }
                        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
                    } else {
                        return withYear((int) j10);
                    }
                }
                return plusMonths(j10 - getLong(ChronoField.PROLEPTIC_MONTH));
            }
            return withMonth((int) j10);
        }
        return (YearMonth) gVar.adjustInto(this, j10);
    }
}
