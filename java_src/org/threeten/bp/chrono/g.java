package org.threeten.bp.chrono;

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
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public abstract class g<D extends org.threeten.bp.chrono.b> extends jl.b implements Comparable<g<?>> {
    private static Comparator<g<?>> INSTANT_COMPARATOR = new a();

    /* loaded from: classes7.dex */
    class a implements Comparator<g<?>> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(g<?> gVar, g<?> gVar2) {
            int b10 = jl.d.b(gVar.toEpochSecond(), gVar2.toEpochSecond());
            return b10 == 0 ? jl.d.b(gVar.toLocalTime().toNanoOfDay(), gVar2.toLocalTime().toNanoOfDay()) : b10;
        }
    }

    /* loaded from: classes7.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56500a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56500a = iArr;
            try {
                iArr[ChronoField.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56500a[ChronoField.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static g<?> from(org.threeten.bp.temporal.c cVar) {
        jl.d.i(cVar, "temporal");
        if (cVar instanceof g) {
            return (g) cVar;
        }
        i iVar = (i) cVar.query(org.threeten.bp.temporal.h.a());
        if (iVar != null) {
            return iVar.zonedDateTime(cVar);
        }
        throw new DateTimeException("No Chronology found to create ChronoZonedDateTime: " + cVar.getClass());
    }

    public static Comparator<g<?>> timeLineOrder() {
        return INSTANT_COMPARATOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && compareTo((g) obj) == 0;
    }

    public String format(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return bVar.b(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = b.f56500a[((ChronoField) gVar).ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return toLocalDateTime().get(gVar);
                }
                return getOffset().getTotalSeconds();
            }
            throw new UnsupportedTemporalTypeException("Field too large for an int: " + gVar);
        }
        return super.get(gVar);
    }

    public i getChronology() {
        return toLocalDate().getChronology();
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = b.f56500a[((ChronoField) gVar).ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return toLocalDateTime().getLong(gVar);
                }
                return getOffset().getTotalSeconds();
            }
            return toEpochSecond();
        }
        return gVar.getFrom(this);
    }

    public abstract ZoneOffset getOffset();

    public abstract ZoneId getZone();

    public int hashCode() {
        return (toLocalDateTime().hashCode() ^ getOffset().hashCode()) ^ Integer.rotateLeft(getZone().hashCode(), 3);
    }

    public boolean isAfter(g<?> gVar) {
        int i9 = (toEpochSecond() > gVar.toEpochSecond() ? 1 : (toEpochSecond() == gVar.toEpochSecond() ? 0 : -1));
        return i9 > 0 || (i9 == 0 && toLocalTime().getNano() > gVar.toLocalTime().getNano());
    }

    public boolean isBefore(g<?> gVar) {
        int i9 = (toEpochSecond() > gVar.toEpochSecond() ? 1 : (toEpochSecond() == gVar.toEpochSecond() ? 0 : -1));
        return i9 < 0 || (i9 == 0 && toLocalTime().getNano() < gVar.toLocalTime().getNano());
    }

    public boolean isEqual(g<?> gVar) {
        return toEpochSecond() == gVar.toEpochSecond() && toLocalTime().getNano() == gVar.toLocalTime().getNano();
    }

    @Override // org.threeten.bp.temporal.b
    public abstract g<D> plus(long j10, org.threeten.bp.temporal.j jVar);

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
        if (iVar != org.threeten.bp.temporal.h.g() && iVar != org.threeten.bp.temporal.h.f()) {
            if (iVar == org.threeten.bp.temporal.h.a()) {
                return (R) toLocalDate().getChronology();
            }
            if (iVar == org.threeten.bp.temporal.h.e()) {
                return (R) ChronoUnit.NANOS;
            }
            if (iVar == org.threeten.bp.temporal.h.d()) {
                return (R) getOffset();
            }
            if (iVar == org.threeten.bp.temporal.h.b()) {
                return (R) LocalDate.ofEpochDay(toLocalDate().toEpochDay());
            }
            if (iVar == org.threeten.bp.temporal.h.c()) {
                return (R) toLocalTime();
            }
            return (R) super.query(iVar);
        }
        return (R) getZone();
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            if (gVar != ChronoField.INSTANT_SECONDS && gVar != ChronoField.OFFSET_SECONDS) {
                return toLocalDateTime().range(gVar);
            }
            return gVar.range();
        }
        return gVar.rangeRefinedBy(this);
    }

    public long toEpochSecond() {
        return ((toLocalDate().toEpochDay() * 86400) + toLocalTime().toSecondOfDay()) - getOffset().getTotalSeconds();
    }

    public Instant toInstant() {
        return Instant.ofEpochSecond(toEpochSecond(), toLocalTime().getNano());
    }

    public D toLocalDate() {
        return toLocalDateTime().toLocalDate();
    }

    public abstract c<D> toLocalDateTime();

    public LocalTime toLocalTime() {
        return toLocalDateTime().toLocalTime();
    }

    public String toString() {
        String str = toLocalDateTime().toString() + getOffset().toString();
        if (getOffset() != getZone()) {
            return str + '[' + getZone().toString() + ']';
        }
        return str;
    }

    @Override // org.threeten.bp.temporal.b
    public abstract g<D> with(org.threeten.bp.temporal.g gVar, long j10);

    public abstract g<D> withEarlierOffsetAtOverlap();

    public abstract g<D> withLaterOffsetAtOverlap();

    public abstract g<D> withZoneSameInstant(ZoneId zoneId);

    public abstract g<D> withZoneSameLocal(ZoneId zoneId);

    /* JADX WARN: Type inference failed for: r5v1, types: [org.threeten.bp.chrono.b] */
    @Override // java.lang.Comparable
    public int compareTo(g<?> gVar) {
        int b10 = jl.d.b(toEpochSecond(), gVar.toEpochSecond());
        if (b10 == 0) {
            int nano = toLocalTime().getNano() - gVar.toLocalTime().getNano();
            if (nano == 0) {
                int compareTo = toLocalDateTime().compareTo(gVar.toLocalDateTime());
                if (compareTo == 0) {
                    int compareTo2 = getZone().getId().compareTo(gVar.getZone().getId());
                    return compareTo2 == 0 ? toLocalDate().getChronology().compareTo(gVar.toLocalDate().getChronology()) : compareTo2;
                }
                return compareTo;
            }
            return nano;
        }
        return b10;
    }

    @Override // jl.b
    public g<D> minus(org.threeten.bp.temporal.f fVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.minus(fVar));
    }

    @Override // jl.b
    public g<D> plus(org.threeten.bp.temporal.f fVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.plus(fVar));
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public g<D> with(org.threeten.bp.temporal.d dVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.with(dVar));
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public g<D> minus(long j10, org.threeten.bp.temporal.j jVar) {
        return toLocalDate().getChronology().ensureChronoZonedDateTime(super.minus(j10, jVar));
    }
}
