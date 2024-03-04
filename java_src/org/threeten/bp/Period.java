package org.threeten.bp;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import jl.d;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.chrono.e;
import org.threeten.bp.chrono.i;
import org.threeten.bp.format.DateTimeParseException;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.j;
/* loaded from: classes7.dex */
public final class Period extends e implements Serializable {
    private static final long serialVersionUID = -8290556941213247973L;
    private final int days;
    private final int months;
    private final int years;
    public static final Period ZERO = new Period(0, 0, 0);
    private static final Pattern PATTERN = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);

    private Period(int i9, int i10, int i11) {
        this.years = i9;
        this.months = i10;
        this.days = i11;
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        return localDate.until((org.threeten.bp.chrono.b) localDate2);
    }

    private static Period create(int i9, int i10, int i11) {
        if ((i9 | i10 | i11) == 0) {
            return ZERO;
        }
        return new Period(i9, i10, i11);
    }

    public static Period from(f fVar) {
        if (fVar instanceof Period) {
            return (Period) fVar;
        }
        if ((fVar instanceof e) && !IsoChronology.INSTANCE.equals(((e) fVar).getChronology())) {
            throw new DateTimeException("Period requires ISO chronology: " + fVar);
        }
        d.i(fVar, "amount");
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        for (j jVar : fVar.getUnits()) {
            long j10 = fVar.get(jVar);
            if (jVar == ChronoUnit.YEARS) {
                i9 = d.q(j10);
            } else if (jVar == ChronoUnit.MONTHS) {
                i10 = d.q(j10);
            } else if (jVar == ChronoUnit.DAYS) {
                i11 = d.q(j10);
            } else {
                throw new DateTimeException("Unit must be Years, Months or Days, but was " + jVar);
            }
        }
        return create(i9, i10, i11);
    }

    public static Period of(int i9, int i10, int i11) {
        return create(i9, i10, i11);
    }

    public static Period ofDays(int i9) {
        return create(0, 0, i9);
    }

    public static Period ofMonths(int i9) {
        return create(0, i9, 0);
    }

    public static Period ofWeeks(int i9) {
        return create(0, 0, d.l(i9, 7));
    }

    public static Period ofYears(int i9) {
        return create(i9, 0, 0);
    }

    public static Period parse(CharSequence charSequence) {
        d.i(charSequence, ViewHierarchyConstants.TEXT_KEY);
        Matcher matcher = PATTERN.matcher(charSequence);
        if (matcher.matches()) {
            int i9 = "-".equals(matcher.group(1)) ? -1 : 1;
            String group = matcher.group(2);
            String group2 = matcher.group(3);
            String group3 = matcher.group(4);
            String group4 = matcher.group(5);
            if (group != null || group2 != null || group3 != null || group4 != null) {
                try {
                    return create(parseNumber(charSequence, group, i9), parseNumber(charSequence, group2, i9), d.j(parseNumber(charSequence, group4, i9), d.l(parseNumber(charSequence, group3, i9), 7)));
                } catch (NumberFormatException e10) {
                    throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Period", charSequence, 0).initCause(e10));
                }
            }
        }
        throw new DateTimeParseException("Text cannot be parsed to a Period", charSequence, 0);
    }

    private static int parseNumber(CharSequence charSequence, String str, int i9) {
        if (str == null) {
            return 0;
        }
        try {
            return d.l(Integer.parseInt(str), i9);
        } catch (ArithmeticException e10) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Period", charSequence, 0).initCause(e10));
        }
    }

    private Object readResolve() {
        return ((this.years | this.months) | this.days) == 0 ? ZERO : this;
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.b addTo(org.threeten.bp.temporal.b bVar) {
        d.i(bVar, "temporal");
        int i9 = this.years;
        if (i9 != 0) {
            if (this.months != 0) {
                bVar = bVar.plus(toTotalMonths(), ChronoUnit.MONTHS);
            } else {
                bVar = bVar.plus(i9, ChronoUnit.YEARS);
            }
        } else {
            int i10 = this.months;
            if (i10 != 0) {
                bVar = bVar.plus(i10, ChronoUnit.MONTHS);
            }
        }
        int i11 = this.days;
        return i11 != 0 ? bVar.plus(i11, ChronoUnit.DAYS) : bVar;
    }

    @Override // org.threeten.bp.chrono.e
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            return this.years == period.years && this.months == period.months && this.days == period.days;
        }
        return false;
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public long get(j jVar) {
        int i9;
        if (jVar == ChronoUnit.YEARS) {
            i9 = this.years;
        } else if (jVar == ChronoUnit.MONTHS) {
            i9 = this.months;
        } else if (jVar == ChronoUnit.DAYS) {
            i9 = this.days;
        } else {
            throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
        }
        return i9;
    }

    @Override // org.threeten.bp.chrono.e
    public i getChronology() {
        return IsoChronology.INSTANCE;
    }

    public int getDays() {
        return this.days;
    }

    public int getMonths() {
        return this.months;
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public List<j> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS));
    }

    public int getYears() {
        return this.years;
    }

    @Override // org.threeten.bp.chrono.e
    public int hashCode() {
        return this.years + Integer.rotateLeft(this.months, 8) + Integer.rotateLeft(this.days, 16);
    }

    @Override // org.threeten.bp.chrono.e
    public boolean isNegative() {
        return this.years < 0 || this.months < 0 || this.days < 0;
    }

    @Override // org.threeten.bp.chrono.e
    public boolean isZero() {
        return this == ZERO;
    }

    public Period minusDays(long j10) {
        return j10 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j10);
    }

    public Period minusMonths(long j10) {
        return j10 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j10);
    }

    public Period minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    public Period plusDays(long j10) {
        return j10 == 0 ? this : create(this.years, this.months, d.q(d.k(this.days, j10)));
    }

    public Period plusMonths(long j10) {
        return j10 == 0 ? this : create(this.years, d.q(d.k(this.months, j10)), this.days);
    }

    public Period plusYears(long j10) {
        return j10 == 0 ? this : create(d.q(d.k(this.years, j10)), this.months, this.days);
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.b subtractFrom(org.threeten.bp.temporal.b bVar) {
        d.i(bVar, "temporal");
        int i9 = this.years;
        if (i9 != 0) {
            if (this.months != 0) {
                bVar = bVar.minus(toTotalMonths(), ChronoUnit.MONTHS);
            } else {
                bVar = bVar.minus(i9, ChronoUnit.YEARS);
            }
        } else {
            int i10 = this.months;
            if (i10 != 0) {
                bVar = bVar.minus(i10, ChronoUnit.MONTHS);
            }
        }
        int i11 = this.days;
        return i11 != 0 ? bVar.minus(i11, ChronoUnit.DAYS) : bVar;
    }

    @Override // org.threeten.bp.chrono.e
    public String toString() {
        if (this == ZERO) {
            return "P0D";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('P');
        int i9 = this.years;
        if (i9 != 0) {
            sb2.append(i9);
            sb2.append('Y');
        }
        int i10 = this.months;
        if (i10 != 0) {
            sb2.append(i10);
            sb2.append('M');
        }
        int i11 = this.days;
        if (i11 != 0) {
            sb2.append(i11);
            sb2.append('D');
        }
        return sb2.toString();
    }

    public long toTotalMonths() {
        return (this.years * 12) + this.months;
    }

    public Period withDays(int i9) {
        return i9 == this.days ? this : create(this.years, this.months, i9);
    }

    public Period withMonths(int i9) {
        return i9 == this.months ? this : create(this.years, i9, this.days);
    }

    public Period withYears(int i9) {
        return i9 == this.years ? this : create(i9, this.months, this.days);
    }

    @Override // org.threeten.bp.chrono.e
    public Period minus(f fVar) {
        Period from = from(fVar);
        return create(d.o(this.years, from.years), d.o(this.months, from.months), d.o(this.days, from.days));
    }

    @Override // org.threeten.bp.chrono.e
    public Period multipliedBy(int i9) {
        return (this == ZERO || i9 == 1) ? this : create(d.l(this.years, i9), d.l(this.months, i9), d.l(this.days, i9));
    }

    @Override // org.threeten.bp.chrono.e
    public Period negated() {
        return multipliedBy(-1);
    }

    @Override // org.threeten.bp.chrono.e
    public Period normalized() {
        long totalMonths = toTotalMonths();
        long j10 = totalMonths / 12;
        int i9 = (int) (totalMonths % 12);
        return (j10 == ((long) this.years) && i9 == this.months) ? this : create(d.q(j10), i9, this.days);
    }

    @Override // org.threeten.bp.chrono.e
    public Period plus(f fVar) {
        Period from = from(fVar);
        return create(d.j(this.years, from.years), d.j(this.months, from.months), d.j(this.days, from.days));
    }
}
