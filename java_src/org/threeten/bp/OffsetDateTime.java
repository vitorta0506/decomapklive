package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Comparator;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.d;
import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
import org.threeten.bp.temporal.j;
/* loaded from: classes7.dex */
public final class OffsetDateTime extends jl.b implements d, Comparable<OffsetDateTime>, Serializable {
    private static final long serialVersionUID = 2287754244819255394L;
    private final LocalDateTime dateTime;
    private final ZoneOffset offset;
    public static final OffsetDateTime MIN = LocalDateTime.MIN.atOffset(ZoneOffset.MAX);
    public static final OffsetDateTime MAX = LocalDateTime.MAX.atOffset(ZoneOffset.MIN);
    public static final i<OffsetDateTime> FROM = new a();
    private static final Comparator<OffsetDateTime> INSTANT_COMPARATOR = new b();

    /* loaded from: classes7.dex */
    class a implements i<OffsetDateTime> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public OffsetDateTime a(org.threeten.bp.temporal.c cVar) {
            return OffsetDateTime.from(cVar);
        }
    }

    /* loaded from: classes7.dex */
    class b implements Comparator<OffsetDateTime> {
        b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(OffsetDateTime offsetDateTime, OffsetDateTime offsetDateTime2) {
            int b10 = jl.d.b(offsetDateTime.toEpochSecond(), offsetDateTime2.toEpochSecond());
            return b10 == 0 ? jl.d.b(offsetDateTime.getNano(), offsetDateTime2.getNano()) : b10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56470a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56470a = iArr;
            try {
                iArr[ChronoField.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56470a[ChronoField.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.dateTime = (LocalDateTime) jl.d.i(localDateTime, "dateTime");
        this.offset = (ZoneOffset) jl.d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    public static OffsetDateTime from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof OffsetDateTime) {
            return (OffsetDateTime) cVar;
        }
        try {
            ZoneOffset from = ZoneOffset.from(cVar);
            try {
                return of(LocalDateTime.from(cVar), from);
            } catch (DateTimeException unused) {
                return ofInstant(Instant.from(cVar), from);
            }
        } catch (DateTimeException unused2) {
            throw new DateTimeException("Unable to obtain OffsetDateTime from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
        }
    }

    public static OffsetDateTime now() {
        return now(org.threeten.bp.a.d());
    }

    public static OffsetDateTime of(LocalDate localDate, LocalTime localTime, ZoneOffset zoneOffset) {
        return new OffsetDateTime(LocalDateTime.of(localDate, localTime), zoneOffset);
    }

    public static OffsetDateTime ofInstant(Instant instant, ZoneId zoneId) {
        jl.d.i(instant, "instant");
        jl.d.i(zoneId, "zone");
        ZoneOffset a10 = zoneId.getRules().a(instant);
        return new OffsetDateTime(LocalDateTime.ofEpochSecond(instant.getEpochSecond(), instant.getNano(), a10), a10);
    }

    public static OffsetDateTime parse(CharSequence charSequence) {
        return parse(charSequence, org.threeten.bp.format.b.f56522o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OffsetDateTime readExternal(DataInput dataInput) throws IOException {
        return of(LocalDateTime.readExternal(dataInput), ZoneOffset.readExternal(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static Comparator<OffsetDateTime> timeLineOrder() {
        return INSTANT_COMPARATOR;
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 69, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.EPOCH_DAY, toLocalDate().toEpochDay()).with(ChronoField.NANO_OF_DAY, toLocalTime().toNanoOfDay()).with(ChronoField.OFFSET_SECONDS, getOffset().getTotalSeconds());
    }

    public ZonedDateTime atZoneSameInstant(ZoneId zoneId) {
        return ZonedDateTime.ofInstant(this.dateTime, this.offset, zoneId);
    }

    public ZonedDateTime atZoneSimilarLocal(ZoneId zoneId) {
        return ZonedDateTime.ofLocal(this.dateTime, zoneId, this.offset);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            return this.dateTime.equals(offsetDateTime.dateTime) && this.offset.equals(offsetDateTime.offset);
        }
        return false;
    }

    public String format(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return bVar.b(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = c.f56470a[((ChronoField) gVar).ordinal()];
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

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = c.f56470a[((ChronoField) gVar).ordinal()];
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

    public ZoneOffset getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.dateTime.getSecond();
    }

    public int getYear() {
        return this.dateTime.getYear();
    }

    public int hashCode() {
        return this.dateTime.hashCode() ^ this.offset.hashCode();
    }

    public boolean isAfter(OffsetDateTime offsetDateTime) {
        int i9 = (toEpochSecond() > offsetDateTime.toEpochSecond() ? 1 : (toEpochSecond() == offsetDateTime.toEpochSecond() ? 0 : -1));
        return i9 > 0 || (i9 == 0 && toLocalTime().getNano() > offsetDateTime.toLocalTime().getNano());
    }

    public boolean isBefore(OffsetDateTime offsetDateTime) {
        int i9 = (toEpochSecond() > offsetDateTime.toEpochSecond() ? 1 : (toEpochSecond() == offsetDateTime.toEpochSecond() ? 0 : -1));
        return i9 < 0 || (i9 == 0 && toLocalTime().getNano() < offsetDateTime.toLocalTime().getNano());
    }

    public boolean isEqual(OffsetDateTime offsetDateTime) {
        return toEpochSecond() == offsetDateTime.toEpochSecond() && toLocalTime().getNano() == offsetDateTime.toLocalTime().getNano();
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return (gVar instanceof ChronoField) || (gVar != null && gVar.isSupportedBy(this));
    }

    public OffsetDateTime minusDays(long j10) {
        return j10 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j10);
    }

    public OffsetDateTime minusHours(long j10) {
        return j10 == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j10);
    }

    public OffsetDateTime minusMinutes(long j10) {
        return j10 == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j10);
    }

    public OffsetDateTime minusMonths(long j10) {
        return j10 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j10);
    }

    public OffsetDateTime minusNanos(long j10) {
        return j10 == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j10);
    }

    public OffsetDateTime minusSeconds(long j10) {
        return j10 == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j10);
    }

    public OffsetDateTime minusWeeks(long j10) {
        return j10 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j10);
    }

    public OffsetDateTime minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    public OffsetDateTime plusDays(long j10) {
        return with(this.dateTime.plusDays(j10), this.offset);
    }

    public OffsetDateTime plusHours(long j10) {
        return with(this.dateTime.plusHours(j10), this.offset);
    }

    public OffsetDateTime plusMinutes(long j10) {
        return with(this.dateTime.plusMinutes(j10), this.offset);
    }

    public OffsetDateTime plusMonths(long j10) {
        return with(this.dateTime.plusMonths(j10), this.offset);
    }

    public OffsetDateTime plusNanos(long j10) {
        return with(this.dateTime.plusNanos(j10), this.offset);
    }

    public OffsetDateTime plusSeconds(long j10) {
        return with(this.dateTime.plusSeconds(j10), this.offset);
    }

    public OffsetDateTime plusWeeks(long j10) {
        return with(this.dateTime.plusWeeks(j10), this.offset);
    }

    public OffsetDateTime plusYears(long j10) {
        return with(this.dateTime.plusYears(j10), this.offset);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.a()) {
            return (R) IsoChronology.INSTANCE;
        }
        if (iVar == h.e()) {
            return (R) ChronoUnit.NANOS;
        }
        if (iVar != h.d() && iVar != h.f()) {
            if (iVar == h.b()) {
                return (R) toLocalDate();
            }
            if (iVar == h.c()) {
                return (R) toLocalTime();
            }
            if (iVar == h.g()) {
                return null;
            }
            return (R) super.query(iVar);
        }
        return (R) getOffset();
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar instanceof ChronoField) {
            if (gVar != ChronoField.INSTANT_SECONDS && gVar != ChronoField.OFFSET_SECONDS) {
                return this.dateTime.range(gVar);
            }
            return gVar.range();
        }
        return gVar.rangeRefinedBy(this);
    }

    public long toEpochSecond() {
        return this.dateTime.toEpochSecond(this.offset);
    }

    public Instant toInstant() {
        return this.dateTime.toInstant(this.offset);
    }

    public LocalDate toLocalDate() {
        return this.dateTime.toLocalDate();
    }

    public LocalDateTime toLocalDateTime() {
        return this.dateTime;
    }

    public LocalTime toLocalTime() {
        return this.dateTime.toLocalTime();
    }

    public OffsetTime toOffsetTime() {
        return OffsetTime.of(this.dateTime.toLocalTime(), this.offset);
    }

    public String toString() {
        return this.dateTime.toString() + this.offset.toString();
    }

    public ZonedDateTime toZonedDateTime() {
        return ZonedDateTime.of(this.dateTime, this.offset);
    }

    public OffsetDateTime truncatedTo(j jVar) {
        return with(this.dateTime.truncatedTo(jVar), this.offset);
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        OffsetDateTime from = from(bVar);
        if (jVar instanceof ChronoUnit) {
            return this.dateTime.until(from.withOffsetSameInstant(this.offset).dateTime, jVar);
        }
        return jVar.between(this, from);
    }

    public OffsetDateTime withDayOfMonth(int i9) {
        return with(this.dateTime.withDayOfMonth(i9), this.offset);
    }

    public OffsetDateTime withDayOfYear(int i9) {
        return with(this.dateTime.withDayOfYear(i9), this.offset);
    }

    public OffsetDateTime withHour(int i9) {
        return with(this.dateTime.withHour(i9), this.offset);
    }

    public OffsetDateTime withMinute(int i9) {
        return with(this.dateTime.withMinute(i9), this.offset);
    }

    public OffsetDateTime withMonth(int i9) {
        return with(this.dateTime.withMonth(i9), this.offset);
    }

    public OffsetDateTime withNano(int i9) {
        return with(this.dateTime.withNano(i9), this.offset);
    }

    public OffsetDateTime withOffsetSameInstant(ZoneOffset zoneOffset) {
        if (zoneOffset.equals(this.offset)) {
            return this;
        }
        return new OffsetDateTime(this.dateTime.plusSeconds(zoneOffset.getTotalSeconds() - this.offset.getTotalSeconds()), zoneOffset);
    }

    public OffsetDateTime withOffsetSameLocal(ZoneOffset zoneOffset) {
        return with(this.dateTime, zoneOffset);
    }

    public OffsetDateTime withSecond(int i9) {
        return with(this.dateTime.withSecond(i9), this.offset);
    }

    public OffsetDateTime withYear(int i9) {
        return with(this.dateTime.withYear(i9), this.offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        this.dateTime.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
    }

    public static OffsetDateTime now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static OffsetDateTime parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return (OffsetDateTime) bVar.h(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(OffsetDateTime offsetDateTime) {
        if (getOffset().equals(offsetDateTime.getOffset())) {
            return toLocalDateTime().compareTo((org.threeten.bp.chrono.c<?>) offsetDateTime.toLocalDateTime());
        }
        int b10 = jl.d.b(toEpochSecond(), offsetDateTime.toEpochSecond());
        if (b10 == 0) {
            int nano = toLocalTime().getNano() - offsetDateTime.toLocalTime().getNano();
            return nano == 0 ? toLocalDateTime().compareTo((org.threeten.bp.chrono.c<?>) offsetDateTime.toLocalDateTime()) : nano;
        }
        return b10;
    }

    public boolean isSupported(j jVar) {
        return jVar instanceof ChronoUnit ? jVar.isDateBased() || jVar.isTimeBased() : jVar != null && jVar.isSupportedBy(this);
    }

    public static OffsetDateTime now(org.threeten.bp.a aVar) {
        jl.d.i(aVar, "clock");
        Instant b10 = aVar.b();
        return ofInstant(b10, aVar.a().getRules().a(b10));
    }

    public static OffsetDateTime of(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return new OffsetDateTime(localDateTime, zoneOffset);
    }

    private OffsetDateTime with(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.dateTime == localDateTime && this.offset.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // jl.b
    public OffsetDateTime minus(f fVar) {
        return (OffsetDateTime) fVar.subtractFrom(this);
    }

    @Override // jl.b
    public OffsetDateTime plus(f fVar) {
        return (OffsetDateTime) fVar.addTo(this);
    }

    public static OffsetDateTime of(int i9, int i10, int i11, int i12, int i13, int i14, int i15, ZoneOffset zoneOffset) {
        return new OffsetDateTime(LocalDateTime.of(i9, i10, i11, i12, i13, i14, i15), zoneOffset);
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public OffsetDateTime minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.temporal.b
    public OffsetDateTime plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            return with(this.dateTime.plus(j10, jVar), this.offset);
        }
        return (OffsetDateTime) jVar.addTo(this, j10);
    }

    @Override // jl.b, org.threeten.bp.temporal.b
    public OffsetDateTime with(d dVar) {
        if (!(dVar instanceof LocalDate) && !(dVar instanceof LocalTime) && !(dVar instanceof LocalDateTime)) {
            if (dVar instanceof Instant) {
                return ofInstant((Instant) dVar, this.offset);
            }
            if (dVar instanceof ZoneOffset) {
                return with(this.dateTime, (ZoneOffset) dVar);
            }
            if (dVar instanceof OffsetDateTime) {
                return (OffsetDateTime) dVar;
            }
            return (OffsetDateTime) dVar.adjustInto(this);
        }
        return with(this.dateTime.with(dVar), this.offset);
    }

    @Override // org.threeten.bp.temporal.b
    public OffsetDateTime with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            int i9 = c.f56470a[chronoField.ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return with(this.dateTime.with(gVar, j10), this.offset);
                }
                return with(this.dateTime, ZoneOffset.ofTotalSeconds(chronoField.checkValidIntValue(j10)));
            }
            return ofInstant(Instant.ofEpochSecond(j10, getNano()), this.offset);
        }
        return (OffsetDateTime) gVar.adjustInto(this, j10);
    }
}
