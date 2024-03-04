package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.List;
import jl.d;
import org.threeten.bp.chrono.g;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
import org.threeten.bp.temporal.j;
import org.threeten.bp.zone.ZoneOffsetTransition;
/* loaded from: classes7.dex */
public final class ZonedDateTime extends g<LocalDate> implements Serializable {
    public static final i<ZonedDateTime> FROM = new a();
    private static final long serialVersionUID = -6260982410461394882L;
    private final LocalDateTime dateTime;
    private final ZoneOffset offset;
    private final ZoneId zone;

    /* loaded from: classes7.dex */
    class a implements i<ZonedDateTime> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public ZonedDateTime a(org.threeten.bp.temporal.c cVar) {
            return ZonedDateTime.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56478a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56478a = iArr;
            try {
                iArr[ChronoField.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56478a[ChronoField.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private ZonedDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        this.dateTime = localDateTime;
        this.offset = zoneOffset;
        this.zone = zoneId;
    }

    private static ZonedDateTime create(long j10, int i9, ZoneId zoneId) {
        ZoneOffset a10 = zoneId.getRules().a(Instant.ofEpochSecond(j10, i9));
        return new ZonedDateTime(LocalDateTime.ofEpochSecond(j10, i9, a10), a10, zoneId);
    }

    public static ZonedDateTime from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof ZonedDateTime) {
            return (ZonedDateTime) cVar;
        }
        try {
            ZoneId from = ZoneId.from(cVar);
            ChronoField chronoField = ChronoField.INSTANT_SECONDS;
            if (cVar.isSupported(chronoField)) {
                try {
                    return create(cVar.getLong(chronoField), cVar.get(ChronoField.NANO_OF_SECOND), from);
                } catch (DateTimeException unused) {
                }
            }
            return of(LocalDateTime.from(cVar), from);
        } catch (DateTimeException unused2) {
            throw new DateTimeException("Unable to obtain ZonedDateTime from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
        }
    }

    public static ZonedDateTime now() {
        return now(org.threeten.bp.a.d());
    }

    public static ZonedDateTime of(LocalDate localDate, LocalTime localTime, ZoneId zoneId) {
        return of(LocalDateTime.of(localDate, localTime), zoneId);
    }

    public static ZonedDateTime ofInstant(Instant instant, ZoneId zoneId) {
        d.i(instant, "instant");
        d.i(zoneId, "zone");
        return create(instant.getEpochSecond(), instant.getNano(), zoneId);
    }

    private static ZonedDateTime ofLenient(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        d.i(localDateTime, "localDateTime");
        d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        d.i(zoneId, "zone");
        if ((zoneId instanceof ZoneOffset) && !zoneOffset.equals(zoneId)) {
            throw new IllegalArgumentException("ZoneId must match ZoneOffset");
        }
        return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
    }

    public static ZonedDateTime ofLocal(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        d.i(localDateTime, "localDateTime");
        d.i(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, (ZoneOffset) zoneId, zoneId);
        }
        org.threeten.bp.zone.d rules = zoneId.getRules();
        List<ZoneOffset> c10 = rules.c(localDateTime);
        if (c10.size() == 1) {
            zoneOffset = c10.get(0);
        } else if (c10.size() == 0) {
            ZoneOffsetTransition b10 = rules.b(localDateTime);
            localDateTime = localDateTime.plusSeconds(b10.getDuration().getSeconds());
            zoneOffset = b10.getOffsetAfter();
        } else if (zoneOffset == null || !c10.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) d.i(c10.get(0), TypedValues.CycleType.S_WAVE_OFFSET);
        }
        return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
    }

    public static ZonedDateTime ofStrict(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        d.i(localDateTime, "localDateTime");
        d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        d.i(zoneId, "zone");
        org.threeten.bp.zone.d rules = zoneId.getRules();
        if (!rules.f(localDateTime, zoneOffset)) {
            ZoneOffsetTransition b10 = rules.b(localDateTime);
            if (b10 != null && b10.isGap()) {
                throw new DateTimeException("LocalDateTime '" + localDateTime + "' does not exist in zone '" + zoneId + "' due to a gap in the local time-line, typically caused by daylight savings");
            }
            throw new DateTimeException("ZoneOffset '" + zoneOffset + "' is not valid for LocalDateTime '" + localDateTime + "' in zone '" + zoneId + "'");
        }
        return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
    }

    public static ZonedDateTime parse(CharSequence charSequence) {
        return parse(charSequence, org.threeten.bp.format.b.f56523p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZonedDateTime readExternal(DataInput dataInput) throws IOException {
        return ofLenient(LocalDateTime.readExternal(dataInput), ZoneOffset.readExternal(dataInput), (ZoneId) org.threeten.bp.b.a(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private ZonedDateTime resolveInstant(LocalDateTime localDateTime) {
        return ofInstant(localDateTime, this.offset, this.zone);
    }

    private ZonedDateTime resolveLocal(LocalDateTime localDateTime) {
        return ofLocal(localDateTime, this.zone, this.offset);
    }

    private ZonedDateTime resolveOffset(ZoneOffset zoneOffset) {
        return (zoneOffset.equals(this.offset) || !this.zone.getRules().f(this.dateTime, zoneOffset)) ? this : new ZonedDateTime(this.dateTime, zoneOffset, this.zone);
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 6, this);
    }

    @Override // org.threeten.bp.chrono.g
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZonedDateTime) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            return this.dateTime.equals(zonedDateTime.dateTime) && this.offset.equals(zonedDateTime.offset) && this.zone.equals(zonedDateTime.zone);
        }
        return false;
    }

    @Override // org.threeten.bp.chrono.g
    public String format(org.threeten.bp.format.b bVar) {
        return super.format(bVar);
    }

    @Override // org.threeten.bp.chrono.g, jl.c, org.threeten.bp.temporal.c
    public int get(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = b.f56478a[((ChronoField) gVar).ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return this.dateTime.get(gVar);
                }
                return getOffset().getTotalSeconds();
            }
            throw new DateTimeException("Field too large for an int: " + gVar);
        }
        return super.get(gVar);
    }

    public int getDayOfMonth() {
        return this.dateTime.getDayOfMonth();
    }

    public DayOfWeek getDayOfWeek() {
        return this.dateTime.getDayOfWeek();
    }

    public int getDayOfYear() {
        return this.dateTime.getDayOfYear();
    }

    public int getHour() {
        return this.dateTime.getHour();
    }

    @Override // org.threeten.bp.chrono.g, org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = b.f56478a[((ChronoField) gVar).ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return this.dateTime.getLong(gVar);
                }
                return getOffset().getTotalSeconds();
            }
            return toEpochSecond();
        }
        return gVar.getFrom(this);
    }

    public int getMinute() {
        return this.dateTime.getMinute();
    }

    public Month getMonth() {
        return this.dateTime.getMonth();
    }

    public int getMonthValue() {
        return this.dateTime.getMonthValue();
    }

    public int getNano() {
        return this.dateTime.getNano();
    }

    @Override // org.threeten.bp.chrono.g
    public ZoneOffset getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.dateTime.getSecond();
    }

    public int getYear() {
        return this.dateTime.getYear();
    }

    @Override // org.threeten.bp.chrono.g
    public ZoneId getZone() {
        return this.zone;
    }

    @Override // org.threeten.bp.chrono.g
    public int hashCode() {
        return (this.dateTime.hashCode() ^ this.offset.hashCode()) ^ Integer.rotateLeft(this.zone.hashCode(), 3);
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(org.threeten.bp.temporal.g gVar) {
        return (gVar instanceof ChronoField) || (gVar != null && gVar.isSupportedBy(this));
    }

    public ZonedDateTime minusDays(long j10) {
        return j10 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j10);
    }

    public ZonedDateTime minusHours(long j10) {
        return j10 == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j10);
    }

    public ZonedDateTime minusMinutes(long j10) {
        return j10 == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j10);
    }

    public ZonedDateTime minusMonths(long j10) {
        return j10 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j10);
    }

    public ZonedDateTime minusNanos(long j10) {
        return j10 == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j10);
    }

    public ZonedDateTime minusSeconds(long j10) {
        return j10 == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j10);
    }

    public ZonedDateTime minusWeeks(long j10) {
        return j10 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j10);
    }

    public ZonedDateTime minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    public ZonedDateTime plusDays(long j10) {
        return resolveLocal(this.dateTime.plusDays(j10));
    }

    public ZonedDateTime plusHours(long j10) {
        return resolveInstant(this.dateTime.plusHours(j10));
    }

    public ZonedDateTime plusMinutes(long j10) {
        return resolveInstant(this.dateTime.plusMinutes(j10));
    }

    public ZonedDateTime plusMonths(long j10) {
        return resolveLocal(this.dateTime.plusMonths(j10));
    }

    public ZonedDateTime plusNanos(long j10) {
        return resolveInstant(this.dateTime.plusNanos(j10));
    }

    public ZonedDateTime plusSeconds(long j10) {
        return resolveInstant(this.dateTime.plusSeconds(j10));
    }

    public ZonedDateTime plusWeeks(long j10) {
        return resolveLocal(this.dateTime.plusWeeks(j10));
    }

    public ZonedDateTime plusYears(long j10) {
        return resolveLocal(this.dateTime.plusYears(j10));
    }

    @Override // org.threeten.bp.chrono.g, jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.b()) {
            return (R) toLocalDate();
        }
        return (R) super.query(iVar);
    }

    @Override // org.threeten.bp.chrono.g, jl.c, org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            if (gVar != ChronoField.INSTANT_SECONDS && gVar != ChronoField.OFFSET_SECONDS) {
                return this.dateTime.range(gVar);
            }
            return gVar.range();
        }
        return gVar.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.g
    public LocalTime toLocalTime() {
        return this.dateTime.toLocalTime();
    }

    public OffsetDateTime toOffsetDateTime() {
        return OffsetDateTime.of(this.dateTime, this.offset);
    }

    @Override // org.threeten.bp.chrono.g
    public String toString() {
        String str = this.dateTime.toString() + this.offset.toString();
        if (this.offset != this.zone) {
            return str + '[' + this.zone.toString() + ']';
        }
        return str;
    }

    public ZonedDateTime truncatedTo(j jVar) {
        return resolveLocal(this.dateTime.truncatedTo(jVar));
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [org.threeten.bp.ZonedDateTime] */
    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        ZonedDateTime from = from((org.threeten.bp.temporal.c) bVar);
        if (jVar instanceof ChronoUnit) {
            ?? withZoneSameInstant2 = from.withZoneSameInstant2(this.zone);
            if (jVar.isDateBased()) {
                return this.dateTime.until(withZoneSameInstant2.dateTime, jVar);
            }
            return toOffsetDateTime().until(withZoneSameInstant2.toOffsetDateTime(), jVar);
        }
        return jVar.between(this, from);
    }

    public ZonedDateTime withDayOfMonth(int i9) {
        return resolveLocal(this.dateTime.withDayOfMonth(i9));
    }

    public ZonedDateTime withDayOfYear(int i9) {
        return resolveLocal(this.dateTime.withDayOfYear(i9));
    }

    public ZonedDateTime withFixedOffsetZone() {
        if (this.zone.equals(this.offset)) {
            return this;
        }
        LocalDateTime localDateTime = this.dateTime;
        ZoneOffset zoneOffset = this.offset;
        return new ZonedDateTime(localDateTime, zoneOffset, zoneOffset);
    }

    public ZonedDateTime withHour(int i9) {
        return resolveLocal(this.dateTime.withHour(i9));
    }

    public ZonedDateTime withMinute(int i9) {
        return resolveLocal(this.dateTime.withMinute(i9));
    }

    public ZonedDateTime withMonth(int i9) {
        return resolveLocal(this.dateTime.withMonth(i9));
    }

    public ZonedDateTime withNano(int i9) {
        return resolveLocal(this.dateTime.withNano(i9));
    }

    public ZonedDateTime withSecond(int i9) {
        return resolveLocal(this.dateTime.withSecond(i9));
    }

    public ZonedDateTime withYear(int i9) {
        return resolveLocal(this.dateTime.withYear(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        this.dateTime.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
        this.zone.write(dataOutput);
    }

    public static ZonedDateTime now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static ZonedDateTime of(LocalDateTime localDateTime, ZoneId zoneId) {
        return ofLocal(localDateTime, zoneId, null);
    }

    public static ZonedDateTime parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        d.i(bVar, "formatter");
        return (ZonedDateTime) bVar.h(charSequence, FROM);
    }

    public boolean isSupported(j jVar) {
        return jVar instanceof ChronoUnit ? jVar.isDateBased() || jVar.isTimeBased() : jVar != null && jVar.isSupportedBy(this);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.threeten.bp.chrono.g
    public LocalDate toLocalDate() {
        return this.dateTime.toLocalDate();
    }

    @Override // org.threeten.bp.chrono.g
    /* renamed from: toLocalDateTime */
    public org.threeten.bp.chrono.c<LocalDate> toLocalDateTime2() {
        return this.dateTime;
    }

    @Override // org.threeten.bp.chrono.g
    /* renamed from: withEarlierOffsetAtOverlap */
    public g<LocalDate> withEarlierOffsetAtOverlap2() {
        ZoneOffsetTransition b10 = getZone().getRules().b(this.dateTime);
        if (b10 != null && b10.isOverlap()) {
            ZoneOffset offsetBefore = b10.getOffsetBefore();
            if (!offsetBefore.equals(this.offset)) {
                return new ZonedDateTime(this.dateTime, offsetBefore, this.zone);
            }
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.threeten.bp.LocalDateTime] */
    @Override // org.threeten.bp.chrono.g
    /* renamed from: withLaterOffsetAtOverlap */
    public g<LocalDate> withLaterOffsetAtOverlap2() {
        ZoneOffsetTransition b10 = getZone().getRules().b(toLocalDateTime2());
        if (b10 != null) {
            ZoneOffset offsetAfter = b10.getOffsetAfter();
            if (!offsetAfter.equals(this.offset)) {
                return new ZonedDateTime(this.dateTime, offsetAfter, this.zone);
            }
        }
        return this;
    }

    @Override // org.threeten.bp.chrono.g
    /* renamed from: withZoneSameInstant */
    public g<LocalDate> withZoneSameInstant2(ZoneId zoneId) {
        d.i(zoneId, "zone");
        return this.zone.equals(zoneId) ? this : create(this.dateTime.toEpochSecond(this.offset), this.dateTime.getNano(), zoneId);
    }

    @Override // org.threeten.bp.chrono.g
    /* renamed from: withZoneSameLocal */
    public g<LocalDate> withZoneSameLocal2(ZoneId zoneId) {
        d.i(zoneId, "zone");
        return this.zone.equals(zoneId) ? this : ofLocal(this.dateTime, zoneId, this.offset);
    }

    public static ZonedDateTime now(org.threeten.bp.a aVar) {
        d.i(aVar, "clock");
        return ofInstant(aVar.b(), aVar.a());
    }

    public static ZonedDateTime of(int i9, int i10, int i11, int i12, int i13, int i14, int i15, ZoneId zoneId) {
        return ofLocal(LocalDateTime.of(i9, i10, i11, i12, i13, i14, i15), zoneId, null);
    }

    public static ZonedDateTime ofInstant(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        d.i(localDateTime, "localDateTime");
        d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        d.i(zoneId, "zone");
        return create(localDateTime.toEpochSecond(zoneOffset), localDateTime.getNano(), zoneId);
    }

    @Override // org.threeten.bp.chrono.g, jl.b
    public ZonedDateTime minus(f fVar) {
        return (ZonedDateTime) fVar.subtractFrom(this);
    }

    @Override // org.threeten.bp.chrono.g, jl.b
    public ZonedDateTime plus(f fVar) {
        return (ZonedDateTime) fVar.addTo(this);
    }

    @Override // org.threeten.bp.chrono.g, jl.b, org.threeten.bp.temporal.b
    public ZonedDateTime with(org.threeten.bp.temporal.d dVar) {
        if (dVar instanceof LocalDate) {
            return resolveLocal(LocalDateTime.of((LocalDate) dVar, this.dateTime.toLocalTime()));
        }
        if (dVar instanceof LocalTime) {
            return resolveLocal(LocalDateTime.of(this.dateTime.toLocalDate(), (LocalTime) dVar));
        }
        if (dVar instanceof LocalDateTime) {
            return resolveLocal((LocalDateTime) dVar);
        }
        if (dVar instanceof Instant) {
            Instant instant = (Instant) dVar;
            return create(instant.getEpochSecond(), instant.getNano(), this.zone);
        } else if (dVar instanceof ZoneOffset) {
            return resolveOffset((ZoneOffset) dVar);
        } else {
            return (ZonedDateTime) dVar.adjustInto(this);
        }
    }

    @Override // org.threeten.bp.chrono.g, jl.b, org.threeten.bp.temporal.b
    public ZonedDateTime minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.chrono.g, org.threeten.bp.temporal.b
    public ZonedDateTime plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            if (jVar.isDateBased()) {
                return resolveLocal(this.dateTime.plus(j10, jVar));
            }
            return resolveInstant(this.dateTime.plus(j10, jVar));
        }
        return (ZonedDateTime) jVar.addTo(this, j10);
    }

    @Override // org.threeten.bp.chrono.g, org.threeten.bp.temporal.b
    public ZonedDateTime with(org.threeten.bp.temporal.g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            int i9 = b.f56478a[chronoField.ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return resolveLocal(this.dateTime.with(gVar, j10));
                }
                return resolveOffset(ZoneOffset.ofTotalSeconds(chronoField.checkValidIntValue(j10)));
            }
            return create(j10, getNano(), this.zone);
        }
        return (ZonedDateTime) gVar.adjustInto(this, j10);
    }
}
