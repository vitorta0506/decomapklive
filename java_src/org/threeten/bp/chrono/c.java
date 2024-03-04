package org.threeten.bp.chrono;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Comparator;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.b;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
/* loaded from: classes7.dex */
public abstract class c<D extends b> extends jl.b implements org.threeten.bp.temporal.d, Comparable<c<?>> {
    private static final Comparator<c<?>> DATE_TIME_COMPARATOR = new a();

    /* loaded from: classes7.dex */
    class a implements Comparator<c<?>> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [org.threeten.bp.chrono.b] */
        /* JADX WARN: Type inference failed for: r2v0, types: [org.threeten.bp.chrono.b] */
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(c<?> cVar, c<?> cVar2) {
            int b10 = jl.d.b(cVar.toLocalDate().toEpochDay(), cVar2.toLocalDate().toEpochDay());
            return b10 == 0 ? jl.d.b(cVar.toLocalTime().toNanoOfDay(), cVar2.toLocalTime().toNanoOfDay()) : b10;
        }
    }

    public static c<?> from(org.threeten.bp.temporal.c cVar) {
        jl.d.i(cVar, "temporal");
        if (cVar instanceof c) {
            return (c) cVar;
        }
        i iVar = (i) cVar.query(org.threeten.bp.temporal.h.a());
        if (iVar != null) {
            return iVar.localDateTime(cVar);
        }
        throw new DateTimeException("No Chronology found to create ChronoLocalDateTime: " + cVar.getClass());
    }

    public static Comparator<c<?>> timeLineOrder() {
        return DATE_TIME_COMPARATOR;
    }

    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.EPOCH_DAY, toLocalDate().toEpochDay()).with(ChronoField.NANO_OF_DAY, toLocalTime().toNanoOfDay());
    }

    public abstract g<D> atZone(ZoneId zoneId);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && compareTo((c) obj) == 0;
    }

    public String format(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return bVar.b(this);
    }

    public i getChronology() {
        return toLocalDate().getChronology();
    }

    public int hashCode() {
        return toLocalDate().hashCode() ^ toLocalTime().hashCode();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [org.threeten.bp.chrono.b] */
    public boolean isAfter(c<?> cVar) {
        int i9 = (toLocalDate().toEpochDay() > cVar.toLocalDate().toEpochDay() ? 1 : (toLocalDate().toEpochDay() == cVar.toLocalDate().toEpochDay() ? 0 : -1));
        return i9 > 0 || (i9 == 0 && toLocalTime().toNanoOfDay() > cVar.toLocalTime().toNanoOfDay());
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [org.threeten.bp.chrono.b] */
    public boolean isBefore(c<?> cVar) {
        int i9 = (toLocalDate().toEpochDay() > cVar.toLocalDate().toEpochDay() ? 1 : (toLocalDate().toEpochDay() == cVar.toLocalDate().toEpochDay() ? 0 : -1));
        return i9 < 0 || (i9 == 0 && toLocalTime().toNanoOfDay() < cVar.toLocalTime().toNanoOfDay());
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [org.threeten.bp.chrono.b] */
    public boolean isEqual(c<?> cVar) {
        return toLocalTime().toNanoOfDay() == cVar.toLocalTime().toNanoOfDay() && toLocalDate().toEpochDay() == cVar.toLocalDate().toEpochDay();
    }

    @Override // org.threeten.bp.temporal.b
    public abstract c<D> plus(long j10, org.threeten.bp.temporal.j jVar);

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
        if (iVar == org.threeten.bp.temporal.h.a()) {
            return (R) getChronology();
        }
        if (iVar == org.threeten.bp.temporal.h.e()) {
            return (R) ChronoUnit.NANOS;
        }
        if (iVar == org.threeten.bp.temporal.h.b()) {
            return (R) LocalDate.ofEpochDay(toLocalDate().toEpochDay());
        }
        if (iVar == org.threeten.bp.temporal.h.c()) {
            return (R) toLocalTime();
        }
        if (iVar == org.threeten.bp.temporal.h.f() || iVar == org.threeten.bp.temporal.h.g() || iVar == org.threeten.bp.temporal.h.d()) {
            return null;
        }
        return (R) super.query(iVar);
    }

    public long toEpochSecond(ZoneOffset zoneOffset) {
        jl.d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        return ((toLocalDate().toEpochDay() * 86400) + toLocalTime().toSecondOfDay()) - zoneOffset.getTotalSeconds();
    }

    public Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.ofEpochSecond(toEpochSecond(zoneOffset), toLocalTime().getNano());
    }

    public abstract D toLocalDate();

    public abstract LocalTime toLocalTime();

    public String toString() {
        return toLocalDate().toString() + 'T' + toLocalTime().toString();
    }

    @Override // org.threeten.bp.temporal.b
    public abstract c<D> with(org.threeten.bp.temporal.g gVar, long j10);

    @Override // java.lang.Comparable
    public int compareTo(c<?> cVar) {
        int compareTo = toLocalDate().compareTo(cVar.toLocalDate());
        if (compareTo == 0) {
            int compareTo2 = toLocalTime().compareTo(cVar.toLocalTime());
            return compareTo2 == 0 ? getChronology().compareTo(cVar.getChronology()) : compareTo2;
        }
        return compareTo;
    }

    @Override // jl.b
    public c<D> minus(org.threeten.bp.temporal.f fVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.minus(fVar));
    }

    @Override // jl.b
    public c<D> plus(org.threeten.bp.temporal.f fVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.plus(fVar));
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public c<D> with(org.threeten.bp.temporal.d dVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.with(dVar));
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public c<D> minus(long j10, org.threeten.bp.temporal.j jVar) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.minus(j10, jVar));
    }
}
