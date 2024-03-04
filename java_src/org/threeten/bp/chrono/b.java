package org.threeten.bp.chrono;

import java.util.Comparator;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
/* loaded from: classes7.dex */
public abstract class b extends jl.b implements org.threeten.bp.temporal.d, Comparable<b> {
    private static final Comparator<b> DATE_COMPARATOR = new a();

    /* loaded from: classes7.dex */
    class a implements Comparator<b> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            return jl.d.b(bVar.toEpochDay(), bVar2.toEpochDay());
        }
    }

    public static b from(org.threeten.bp.temporal.c cVar) {
        jl.d.i(cVar, "temporal");
        if (cVar instanceof b) {
            return (b) cVar;
        }
        i iVar = (i) cVar.query(org.threeten.bp.temporal.h.a());
        if (iVar != null) {
            return iVar.date(cVar);
        }
        throw new DateTimeException("No Chronology found to create ChronoLocalDate: " + cVar.getClass());
    }

    public static Comparator<b> timeLineOrder() {
        return DATE_COMPARATOR;
    }

    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.EPOCH_DAY, toEpochDay());
    }

    public c<?> atTime(LocalTime localTime) {
        return d.a(this, localTime);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && compareTo((b) obj) == 0;
    }

    public String format(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return bVar.b(this);
    }

    public abstract i getChronology();

    public j getEra() {
        return getChronology().eraOf(get(ChronoField.ERA));
    }

    public int hashCode() {
        long epochDay = toEpochDay();
        return getChronology().hashCode() ^ ((int) (epochDay ^ (epochDay >>> 32)));
    }

    public boolean isAfter(b bVar) {
        return toEpochDay() > bVar.toEpochDay();
    }

    public boolean isBefore(b bVar) {
        return toEpochDay() < bVar.toEpochDay();
    }

    public boolean isEqual(b bVar) {
        return toEpochDay() == bVar.toEpochDay();
    }

    public boolean isLeapYear() {
        return getChronology().isLeapYear(getLong(ChronoField.YEAR));
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isDateBased();
        }
        return gVar != null && gVar.isSupportedBy(this);
    }

    public abstract int lengthOfMonth();

    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    @Override // org.threeten.bp.temporal.b
    public abstract b plus(long j10, org.threeten.bp.temporal.j jVar);

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
        if (iVar == org.threeten.bp.temporal.h.a()) {
            return (R) getChronology();
        }
        if (iVar == org.threeten.bp.temporal.h.e()) {
            return (R) ChronoUnit.DAYS;
        }
        if (iVar == org.threeten.bp.temporal.h.b()) {
            return (R) LocalDate.ofEpochDay(toEpochDay());
        }
        if (iVar == org.threeten.bp.temporal.h.c() || iVar == org.threeten.bp.temporal.h.f() || iVar == org.threeten.bp.temporal.h.g() || iVar == org.threeten.bp.temporal.h.d()) {
            return null;
        }
        return (R) super.query(iVar);
    }

    public long toEpochDay() {
        return getLong(ChronoField.EPOCH_DAY);
    }

    public String toString() {
        long j10 = getLong(ChronoField.YEAR_OF_ERA);
        long j11 = getLong(ChronoField.MONTH_OF_YEAR);
        long j12 = getLong(ChronoField.DAY_OF_MONTH);
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(getChronology().toString());
        sb2.append(" ");
        sb2.append(getEra());
        sb2.append(" ");
        sb2.append(j10);
        sb2.append(j11 < 10 ? "-0" : "-");
        sb2.append(j11);
        sb2.append(j12 >= 10 ? "-" : "-0");
        sb2.append(j12);
        return sb2.toString();
    }

    public abstract e until(b bVar);

    @Override // org.threeten.bp.temporal.b
    public abstract b with(org.threeten.bp.temporal.g gVar, long j10);

    @Override // java.lang.Comparable
    public int compareTo(b bVar) {
        int b10 = jl.d.b(toEpochDay(), bVar.toEpochDay());
        return b10 == 0 ? getChronology().compareTo(bVar.getChronology()) : b10;
    }

    @Override // jl.b
    public b minus(org.threeten.bp.temporal.f fVar) {
        return getChronology().ensureChronoLocalDate(super.minus(fVar));
    }

    @Override // jl.b
    public b plus(org.threeten.bp.temporal.f fVar) {
        return getChronology().ensureChronoLocalDate(super.plus(fVar));
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public b with(org.threeten.bp.temporal.d dVar) {
        return getChronology().ensureChronoLocalDate(super.with(dVar));
    }

    public boolean isSupported(org.threeten.bp.temporal.j jVar) {
        if (jVar instanceof ChronoUnit) {
            return jVar.isDateBased();
        }
        return jVar != null && jVar.isSupportedBy(this);
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public b minus(long j10, org.threeten.bp.temporal.j jVar) {
        return getChronology().ensureChronoLocalDate(super.minus(j10, jVar));
    }
}
