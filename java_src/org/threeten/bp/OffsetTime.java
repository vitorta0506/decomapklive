package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
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
public final class OffsetTime extends jl.c implements org.threeten.bp.temporal.b, d, Comparable<OffsetTime>, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;
    private final ZoneOffset offset;
    private final LocalTime time;
    public static final OffsetTime MIN = LocalTime.MIN.atOffset(ZoneOffset.MAX);
    public static final OffsetTime MAX = LocalTime.MAX.atOffset(ZoneOffset.MIN);
    public static final i<OffsetTime> FROM = new a();

    /* loaded from: classes7.dex */
    class a implements i<OffsetTime> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public OffsetTime a(org.threeten.bp.temporal.c cVar) {
            return OffsetTime.from(cVar);
        }
    }

    /* loaded from: classes7.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56471a;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56471a = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56471a[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56471a[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56471a[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56471a[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56471a[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56471a[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private OffsetTime(LocalTime localTime, ZoneOffset zoneOffset) {
        this.time = (LocalTime) jl.d.i(localTime, CrashHianalyticsData.TIME);
        this.offset = (ZoneOffset) jl.d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    public static OffsetTime from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof OffsetTime) {
            return (OffsetTime) cVar;
        }
        try {
            return new OffsetTime(LocalTime.from(cVar), ZoneOffset.from(cVar));
        } catch (DateTimeException unused) {
            throw new DateTimeException("Unable to obtain OffsetTime from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
        }
    }

    public static OffsetTime now() {
        return now(org.threeten.bp.a.d());
    }

    public static OffsetTime of(LocalTime localTime, ZoneOffset zoneOffset) {
        return new OffsetTime(localTime, zoneOffset);
    }

    public static OffsetTime ofInstant(Instant instant, ZoneId zoneId) {
        jl.d.i(instant, "instant");
        jl.d.i(zoneId, "zone");
        ZoneOffset a10 = zoneId.getRules().a(instant);
        long epochSecond = ((instant.getEpochSecond() % 86400) + a10.getTotalSeconds()) % 86400;
        if (epochSecond < 0) {
            epochSecond += 86400;
        }
        return new OffsetTime(LocalTime.ofSecondOfDay(epochSecond, instant.getNano()), a10);
    }

    public static OffsetTime parse(CharSequence charSequence) {
        return parse(charSequence, org.threeten.bp.format.b.f56519l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OffsetTime readExternal(DataInput dataInput) throws IOException {
        return of(LocalTime.readExternal(dataInput), ZoneOffset.readExternal(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private long toEpochNano() {
        return this.time.toNanoOfDay() - (this.offset.getTotalSeconds() * 1000000000);
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 66, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.NANO_OF_DAY, this.time.toNanoOfDay()).with(ChronoField.OFFSET_SECONDS, getOffset().getTotalSeconds());
    }

    public OffsetDateTime atDate(LocalDate localDate) {
        return OffsetDateTime.of(localDate, this.time, this.offset);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetTime) {
            OffsetTime offsetTime = (OffsetTime) obj;
            return this.time.equals(offsetTime.time) && this.offset.equals(offsetTime.offset);
        }
        return false;
    }

    public String format(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return bVar.b(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        return super.get(gVar);
    }

    public int getHour() {
        return this.time.getHour();
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar instanceof ChronoField) {
            if (gVar == ChronoField.OFFSET_SECONDS) {
                return getOffset().getTotalSeconds();
            }
            return this.time.getLong(gVar);
        }
        return gVar.getFrom(this);
    }

    public int getMinute() {
        return this.time.getMinute();
    }

    public int getNano() {
        return this.time.getNano();
    }

    public ZoneOffset getOffset() {
        return this.offset;
    }

    public int getSecond() {
        return this.time.getSecond();
    }

    public int hashCode() {
        return this.time.hashCode() ^ this.offset.hashCode();
    }

    public boolean isAfter(OffsetTime offsetTime) {
        return toEpochNano() > offsetTime.toEpochNano();
    }

    public boolean isBefore(OffsetTime offsetTime) {
        return toEpochNano() < offsetTime.toEpochNano();
    }

    public boolean isEqual(OffsetTime offsetTime) {
        return toEpochNano() == offsetTime.toEpochNano();
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar.isTimeBased() || gVar == ChronoField.OFFSET_SECONDS : gVar != null && gVar.isSupportedBy(this);
    }

    public OffsetTime minusHours(long j10) {
        return with(this.time.minusHours(j10), this.offset);
    }

    public OffsetTime minusMinutes(long j10) {
        return with(this.time.minusMinutes(j10), this.offset);
    }

    public OffsetTime minusNanos(long j10) {
        return with(this.time.minusNanos(j10), this.offset);
    }

    public OffsetTime minusSeconds(long j10) {
        return with(this.time.minusSeconds(j10), this.offset);
    }

    public OffsetTime plusHours(long j10) {
        return with(this.time.plusHours(j10), this.offset);
    }

    public OffsetTime plusMinutes(long j10) {
        return with(this.time.plusMinutes(j10), this.offset);
    }

    public OffsetTime plusNanos(long j10) {
        return with(this.time.plusNanos(j10), this.offset);
    }

    public OffsetTime plusSeconds(long j10) {
        return with(this.time.plusSeconds(j10), this.offset);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.e()) {
            return (R) ChronoUnit.NANOS;
        }
        if (iVar != h.d() && iVar != h.f()) {
            if (iVar == h.c()) {
                return (R) this.time;
            }
            if (iVar == h.a() || iVar == h.b() || iVar == h.g()) {
                return null;
            }
            return (R) super.query(iVar);
        }
        return (R) getOffset();
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar instanceof ChronoField) {
            if (gVar == ChronoField.OFFSET_SECONDS) {
                return gVar.range();
            }
            return this.time.range(gVar);
        }
        return gVar.rangeRefinedBy(this);
    }

    public LocalTime toLocalTime() {
        return this.time;
    }

    public String toString() {
        return this.time.toString() + this.offset.toString();
    }

    public OffsetTime truncatedTo(j jVar) {
        return with(this.time.truncatedTo(jVar), this.offset);
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        OffsetTime from = from(bVar);
        if (jVar instanceof ChronoUnit) {
            long epochNano = from.toEpochNano() - toEpochNano();
            switch (b.f56471a[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return epochNano;
                case 2:
                    return epochNano / 1000;
                case 3:
                    return epochNano / 1000000;
                case 4:
                    return epochNano / 1000000000;
                case 5:
                    return epochNano / 60000000000L;
                case 6:
                    return epochNano / 3600000000000L;
                case 7:
                    return epochNano / 43200000000000L;
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return jVar.between(this, from);
    }

    public OffsetTime withHour(int i9) {
        return with(this.time.withHour(i9), this.offset);
    }

    public OffsetTime withMinute(int i9) {
        return with(this.time.withMinute(i9), this.offset);
    }

    public OffsetTime withNano(int i9) {
        return with(this.time.withNano(i9), this.offset);
    }

    public OffsetTime withOffsetSameInstant(ZoneOffset zoneOffset) {
        if (zoneOffset.equals(this.offset)) {
            return this;
        }
        return new OffsetTime(this.time.plusSeconds(zoneOffset.getTotalSeconds() - this.offset.getTotalSeconds()), zoneOffset);
    }

    public OffsetTime withOffsetSameLocal(ZoneOffset zoneOffset) {
        return (zoneOffset == null || !zoneOffset.equals(this.offset)) ? new OffsetTime(this.time, zoneOffset) : this;
    }

    public OffsetTime withSecond(int i9) {
        return with(this.time.withSecond(i9), this.offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        this.time.writeExternal(dataOutput);
        this.offset.writeExternal(dataOutput);
    }

    public static OffsetTime now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static OffsetTime of(int i9, int i10, int i11, int i12, ZoneOffset zoneOffset) {
        return new OffsetTime(LocalTime.of(i9, i10, i11, i12), zoneOffset);
    }

    public static OffsetTime parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return (OffsetTime) bVar.h(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(OffsetTime offsetTime) {
        if (this.offset.equals(offsetTime.offset)) {
            return this.time.compareTo(offsetTime.time);
        }
        int b10 = jl.d.b(toEpochNano(), offsetTime.toEpochNano());
        return b10 == 0 ? this.time.compareTo(offsetTime.time) : b10;
    }

    public static OffsetTime now(org.threeten.bp.a aVar) {
        jl.d.i(aVar, "clock");
        Instant b10 = aVar.b();
        return ofInstant(b10, aVar.a().getRules().a(b10));
    }

    private OffsetTime with(LocalTime localTime, ZoneOffset zoneOffset) {
        return (this.time == localTime && this.offset.equals(zoneOffset)) ? this : new OffsetTime(localTime, zoneOffset);
    }

    /* renamed from: minus */
    public OffsetTime m3381minus(f fVar) {
        return (OffsetTime) fVar.subtractFrom(this);
    }

    /* renamed from: plus */
    public OffsetTime m3382plus(f fVar) {
        return (OffsetTime) fVar.addTo(this);
    }

    public boolean isSupported(j jVar) {
        if (jVar instanceof ChronoUnit) {
            return jVar.isTimeBased();
        }
        return jVar != null && jVar.isSupportedBy(this);
    }

    @Override // org.threeten.bp.temporal.b
    public OffsetTime minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.temporal.b
    public OffsetTime plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            return with(this.time.plus(j10, jVar), this.offset);
        }
        return (OffsetTime) jVar.addTo(this, j10);
    }

    @Override // org.threeten.bp.temporal.b
    public OffsetTime with(d dVar) {
        if (dVar instanceof LocalTime) {
            return with((LocalTime) dVar, this.offset);
        }
        if (dVar instanceof ZoneOffset) {
            return with(this.time, (ZoneOffset) dVar);
        }
        if (dVar instanceof OffsetTime) {
            return (OffsetTime) dVar;
        }
        return (OffsetTime) dVar.adjustInto(this);
    }

    @Override // org.threeten.bp.temporal.b
    public OffsetTime with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            if (gVar == ChronoField.OFFSET_SECONDS) {
                return with(this.time, ZoneOffset.ofTotalSeconds(((ChronoField) gVar).checkValidIntValue(j10)));
            }
            return with(this.time.with(gVar, j10), this.offset);
        }
        return (OffsetTime) gVar.adjustInto(this, j10);
    }
}
