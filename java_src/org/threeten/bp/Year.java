package org.threeten.bp;

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
public final class Year extends jl.c implements org.threeten.bp.temporal.b, d, Comparable<Year>, Serializable {
    public static final int MAX_VALUE = 999999999;
    public static final int MIN_VALUE = -999999999;
    private static final long serialVersionUID = -23038383694477807L;
    private final int year;
    public static final i<Year> FROM = new a();
    private static final org.threeten.bp.format.b PARSER = new org.threeten.bp.format.c().n(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).v();

    /* loaded from: classes7.dex */
    class a implements i<Year> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public Year a(org.threeten.bp.temporal.c cVar) {
            return Year.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56472a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f56473b;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56473b = iArr;
            try {
                iArr[ChronoUnit.YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56473b[ChronoUnit.DECADES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56473b[ChronoUnit.CENTURIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56473b[ChronoUnit.MILLENNIA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56473b[ChronoUnit.ERAS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ChronoField.values().length];
            f56472a = iArr2;
            try {
                iArr2[ChronoField.YEAR_OF_ERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56472a[ChronoField.YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f56472a[ChronoField.ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private Year(int i9) {
        this.year = i9;
    }

    public static Year from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof Year) {
            return (Year) cVar;
        }
        try {
            if (!IsoChronology.INSTANCE.equals(org.threeten.bp.chrono.i.from(cVar))) {
                cVar = LocalDate.from(cVar);
            }
            return of(cVar.get(ChronoField.YEAR));
        } catch (DateTimeException unused) {
            throw new DateTimeException("Unable to obtain Year from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
        }
    }

    public static boolean isLeap(long j10) {
        return (3 & j10) == 0 && (j10 % 100 != 0 || j10 % 400 == 0);
    }

    public static Year now() {
        return now(org.threeten.bp.a.d());
    }

    public static Year of(int i9) {
        ChronoField.YEAR.checkValidValue(i9);
        return new Year(i9);
    }

    public static Year parse(CharSequence charSequence) {
        return parse(charSequence, PARSER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Year readExternal(DataInput dataInput) throws IOException {
        return of(dataInput.readInt());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 67, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        if (org.threeten.bp.chrono.i.from(bVar).equals(IsoChronology.INSTANCE)) {
            return bVar.with(ChronoField.YEAR, this.year);
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public LocalDate atDay(int i9) {
        return LocalDate.ofYearDay(this.year, i9);
    }

    public YearMonth atMonth(Month month) {
        return YearMonth.of(this.year, month);
    }

    public LocalDate atMonthDay(MonthDay monthDay) {
        return monthDay.atYear(this.year);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Year) && this.year == ((Year) obj).year;
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
        if (gVar instanceof ChronoField) {
            int i9 = b.f56472a[((ChronoField) gVar).ordinal()];
            if (i9 == 1) {
                int i10 = this.year;
                if (i10 < 1) {
                    i10 = 1 - i10;
                }
                return i10;
            } else if (i9 != 2) {
                if (i9 == 3) {
                    return this.year < 1 ? 0 : 1;
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            } else {
                return this.year;
            }
        }
        return gVar.getFrom(this);
    }

    public int getValue() {
        return this.year;
    }

    public int hashCode() {
        return this.year;
    }

    public boolean isAfter(Year year) {
        return this.year > year.year;
    }

    public boolean isBefore(Year year) {
        return this.year < year.year;
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.YEAR || gVar == ChronoField.YEAR_OF_ERA || gVar == ChronoField.ERA : gVar != null && gVar.isSupportedBy(this);
    }

    public boolean isValidMonthDay(MonthDay monthDay) {
        return monthDay != null && monthDay.isValidYear(this.year);
    }

    public int length() {
        return isLeap() ? 366 : 365;
    }

    public Year minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    public Year plusYears(long j10) {
        return j10 == 0 ? this : of(ChronoField.YEAR.checkValidIntValue(this.year + j10));
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.a()) {
            return (R) IsoChronology.INSTANCE;
        }
        if (iVar == h.e()) {
            return (R) ChronoUnit.YEARS;
        }
        if (iVar == h.b() || iVar == h.c() || iVar == h.f() || iVar == h.g() || iVar == h.d()) {
            return null;
        }
        return (R) super.query(iVar);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar == ChronoField.YEAR_OF_ERA) {
            return ValueRange.of(1L, this.year <= 0 ? 1000000000L : 999999999L);
        }
        return super.range(gVar);
    }

    public String toString() {
        return Integer.toString(this.year);
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        Year from = from(bVar);
        if (jVar instanceof ChronoUnit) {
            long j10 = from.year - this.year;
            int i9 = b.f56473b[((ChronoUnit) jVar).ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 == 5) {
                                ChronoField chronoField = ChronoField.ERA;
                                return from.getLong(chronoField) - getLong(chronoField);
                            }
                            throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
                        }
                        return j10 / 1000;
                    }
                    return j10 / 100;
                }
                return j10 / 10;
            }
            return j10;
        }
        return jVar.between(this, from);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
    }

    public static Year now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static Year parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return (Year) bVar.h(charSequence, FROM);
    }

    public YearMonth atMonth(int i9) {
        return YearMonth.of(this.year, i9);
    }

    @Override // java.lang.Comparable
    public int compareTo(Year year) {
        return this.year - year.year;
    }

    public boolean isLeap() {
        return isLeap(this.year);
    }

    public static Year now(org.threeten.bp.a aVar) {
        return of(LocalDate.now(aVar).getYear());
    }

    /* renamed from: minus */
    public Year m3383minus(f fVar) {
        return (Year) fVar.subtractFrom(this);
    }

    /* renamed from: plus */
    public Year m3384plus(f fVar) {
        return (Year) fVar.addTo(this);
    }

    @Override // org.threeten.bp.temporal.b
    public Year with(d dVar) {
        return (Year) dVar.adjustInto(this);
    }

    public boolean isSupported(j jVar) {
        return jVar instanceof ChronoUnit ? jVar == ChronoUnit.YEARS || jVar == ChronoUnit.DECADES || jVar == ChronoUnit.CENTURIES || jVar == ChronoUnit.MILLENNIA || jVar == ChronoUnit.ERAS : jVar != null && jVar.isSupportedBy(this);
    }

    @Override // org.threeten.bp.temporal.b
    public Year minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.temporal.b
    public Year plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            int i9 = b.f56473b[((ChronoUnit) jVar).ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 == 5) {
                                ChronoField chronoField = ChronoField.ERA;
                                return with((g) chronoField, jl.d.k(getLong(chronoField), j10));
                            }
                            throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
                        }
                        return plusYears(jl.d.m(j10, 1000));
                    }
                    return plusYears(jl.d.m(j10, 100));
                }
                return plusYears(jl.d.m(j10, 10));
            }
            return plusYears(j10);
        }
        return (Year) jVar.addTo(this, j10);
    }

    @Override // org.threeten.bp.temporal.b
    public Year with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            chronoField.checkValidValue(j10);
            int i9 = b.f56472a[chronoField.ordinal()];
            if (i9 == 1) {
                if (this.year < 1) {
                    j10 = 1 - j10;
                }
                return of((int) j10);
            } else if (i9 != 2) {
                if (i9 == 3) {
                    return getLong(ChronoField.ERA) == j10 ? this : of(1 - this.year);
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            } else {
                return of((int) j10);
            }
        }
        return (Year) gVar.adjustInto(this, j10);
    }
}
