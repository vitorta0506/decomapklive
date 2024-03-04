package org.threeten.bp;

import com.tencent.thumbplayer.core.thirdparties.LocalCache;
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
public final class Instant extends jl.c implements org.threeten.bp.temporal.b, d, Comparable<Instant>, Serializable {
    private static final long MILLIS_PER_SEC = 1000;
    private static final int NANOS_PER_MILLI = 1000000;
    private static final int NANOS_PER_SECOND = 1000000000;
    private static final long serialVersionUID = -665713676816604388L;
    private final int nanos;
    private final long seconds;
    public static final Instant EPOCH = new Instant(0, 0);
    private static final long MIN_SECOND = -31557014167219200L;
    public static final Instant MIN = ofEpochSecond(MIN_SECOND, 0);
    private static final long MAX_SECOND = 31556889864403199L;
    public static final Instant MAX = ofEpochSecond(MAX_SECOND, 999999999);
    public static final i<Instant> FROM = new a();

    /* loaded from: classes7.dex */
    class a implements i<Instant> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public Instant a(org.threeten.bp.temporal.c cVar) {
            return Instant.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56461a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f56462b;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56462b = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56462b[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56462b[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56462b[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56462b[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56462b[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56462b[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f56462b[ChronoUnit.DAYS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[ChronoField.values().length];
            f56461a = iArr2;
            try {
                iArr2[ChronoField.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f56461a[ChronoField.MICRO_OF_SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f56461a[ChronoField.MILLI_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f56461a[ChronoField.INSTANT_SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private Instant(long j10, int i9) {
        this.seconds = j10;
        this.nanos = i9;
    }

    private static Instant create(long j10, int i9) {
        if ((i9 | j10) == 0) {
            return EPOCH;
        }
        if (j10 >= MIN_SECOND && j10 <= MAX_SECOND) {
            return new Instant(j10, i9);
        }
        throw new DateTimeException("Instant exceeds minimum or maximum instant");
    }

    public static Instant from(org.threeten.bp.temporal.c cVar) {
        try {
            return ofEpochSecond(cVar.getLong(ChronoField.INSTANT_SECONDS), cVar.get(ChronoField.NANO_OF_SECOND));
        } catch (DateTimeException e10) {
            throw new DateTimeException("Unable to obtain Instant from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName(), e10);
        }
    }

    private long nanosUntil(Instant instant) {
        return jl.d.k(jl.d.m(jl.d.p(instant.seconds, this.seconds), 1000000000), instant.nanos - this.nanos);
    }

    public static Instant now() {
        return org.threeten.bp.a.e().b();
    }

    public static Instant ofEpochMilli(long j10) {
        return create(jl.d.e(j10, 1000L), jl.d.g(j10, 1000) * 1000000);
    }

    public static Instant ofEpochSecond(long j10) {
        return create(j10, 0);
    }

    public static Instant parse(CharSequence charSequence) {
        return (Instant) org.threeten.bp.format.b.f56527t.h(charSequence, FROM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Instant readExternal(DataInput dataInput) throws IOException {
        return ofEpochSecond(dataInput.readLong(), dataInput.readInt());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private long secondsUntil(Instant instant) {
        long p10 = jl.d.p(instant.seconds, this.seconds);
        long j10 = instant.nanos - this.nanos;
        int i9 = (p10 > 0L ? 1 : (p10 == 0L ? 0 : -1));
        return (i9 <= 0 || j10 >= 0) ? (i9 >= 0 || j10 <= 0) ? p10 : p10 + 1 : p10 - 1;
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 2, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.INSTANT_SECONDS, this.seconds).with(ChronoField.NANO_OF_SECOND, this.nanos);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.ofInstant(this, zoneOffset);
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        return ZonedDateTime.ofInstant(this, zoneId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            return this.seconds == instant.seconds && this.nanos == instant.nanos;
        }
        return false;
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = b.f56461a[((ChronoField) gVar).ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3) {
                        return this.nanos / 1000000;
                    }
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
                }
                return this.nanos / 1000;
            }
            return this.nanos;
        }
        return range(gVar).checkValidIntValue(gVar.getFrom(this), gVar);
    }

    public long getEpochSecond() {
        return this.seconds;
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        int i9;
        if (gVar instanceof ChronoField) {
            int i10 = b.f56461a[((ChronoField) gVar).ordinal()];
            if (i10 == 1) {
                i9 = this.nanos;
            } else if (i10 == 2) {
                i9 = this.nanos / 1000;
            } else if (i10 != 3) {
                if (i10 == 4) {
                    return this.seconds;
                }
                throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            } else {
                i9 = this.nanos / 1000000;
            }
            return i9;
        }
        return gVar.getFrom(this);
    }

    public int getNano() {
        return this.nanos;
    }

    public int hashCode() {
        long j10 = this.seconds;
        return ((int) (j10 ^ (j10 >>> 32))) + (this.nanos * 51);
    }

    public boolean isAfter(Instant instant) {
        return compareTo(instant) > 0;
    }

    public boolean isBefore(Instant instant) {
        return compareTo(instant) < 0;
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.INSTANT_SECONDS || gVar == ChronoField.NANO_OF_SECOND || gVar == ChronoField.MICRO_OF_SECOND || gVar == ChronoField.MILLI_OF_SECOND : gVar != null && gVar.isSupportedBy(this);
    }

    public Instant minusMillis(long j10) {
        if (j10 == Long.MIN_VALUE) {
            return plusMillis(Long.MAX_VALUE).plusMillis(1L);
        }
        return plusMillis(-j10);
    }

    public Instant minusNanos(long j10) {
        if (j10 == Long.MIN_VALUE) {
            return plusNanos(Long.MAX_VALUE).plusNanos(1L);
        }
        return plusNanos(-j10);
    }

    public Instant minusSeconds(long j10) {
        if (j10 == Long.MIN_VALUE) {
            return plusSeconds(Long.MAX_VALUE).plusSeconds(1L);
        }
        return plusSeconds(-j10);
    }

    public Instant plusMillis(long j10) {
        return plus(j10 / 1000, (j10 % 1000) * 1000000);
    }

    public Instant plusNanos(long j10) {
        return plus(0L, j10);
    }

    public Instant plusSeconds(long j10) {
        return plus(j10, 0L);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.e()) {
            return (R) ChronoUnit.NANOS;
        }
        if (iVar == h.b() || iVar == h.c() || iVar == h.a() || iVar == h.g() || iVar == h.f() || iVar == h.d()) {
            return null;
        }
        return iVar.a(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        return super.range(gVar);
    }

    public long toEpochMilli() {
        long j10 = this.seconds;
        if (j10 >= 0) {
            return jl.d.k(jl.d.n(j10, 1000L), this.nanos / 1000000);
        }
        return jl.d.p(jl.d.n(j10 + 1, 1000L), 1000 - (this.nanos / 1000000));
    }

    public String toString() {
        return org.threeten.bp.format.b.f56527t.b(this);
    }

    public Instant truncatedTo(j jVar) {
        if (jVar == ChronoUnit.NANOS) {
            return this;
        }
        Duration duration = jVar.getDuration();
        if (duration.getSeconds() <= 86400) {
            long nanos = duration.toNanos();
            if (86400000000000L % nanos == 0) {
                long j10 = ((this.seconds % 86400) * 1000000000) + this.nanos;
                return plusNanos((jl.d.e(j10, nanos) * nanos) - j10);
            }
            throw new DateTimeException("Unit must divide into a standard day without remainder");
        }
        throw new DateTimeException("Unit is too large to be used for truncation");
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        Instant from = from(bVar);
        if (jVar instanceof ChronoUnit) {
            switch (b.f56462b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return nanosUntil(from);
                case 2:
                    return nanosUntil(from) / 1000;
                case 3:
                    return jl.d.p(from.toEpochMilli(), toEpochMilli());
                case 4:
                    return secondsUntil(from);
                case 5:
                    return secondsUntil(from) / 60;
                case 6:
                    return secondsUntil(from) / 3600;
                case 7:
                    return secondsUntil(from) / 43200;
                case 8:
                    return secondsUntil(from) / 86400;
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return jVar.between(this, from);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }

    public static Instant now(org.threeten.bp.a aVar) {
        jl.d.i(aVar, "clock");
        return aVar.b();
    }

    public static Instant ofEpochSecond(long j10, long j11) {
        return create(jl.d.k(j10, jl.d.e(j11, 1000000000L)), jl.d.g(j11, 1000000000));
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant instant) {
        int b10 = jl.d.b(this.seconds, instant.seconds);
        return b10 != 0 ? b10 : this.nanos - instant.nanos;
    }

    /* renamed from: minus */
    public Instant m3377minus(f fVar) {
        return (Instant) fVar.subtractFrom(this);
    }

    /* renamed from: plus */
    public Instant m3378plus(f fVar) {
        return (Instant) fVar.addTo(this);
    }

    @Override // org.threeten.bp.temporal.b
    public Instant with(d dVar) {
        return (Instant) dVar.adjustInto(this);
    }

    public boolean isSupported(j jVar) {
        return jVar instanceof ChronoUnit ? jVar.isTimeBased() || jVar == ChronoUnit.DAYS : jVar != null && jVar.isSupportedBy(this);
    }

    @Override // org.threeten.bp.temporal.b
    public Instant minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.temporal.b
    public Instant plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            switch (b.f56462b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return plusNanos(j10);
                case 2:
                    return plus(j10 / 1000000, (j10 % 1000000) * 1000);
                case 3:
                    return plusMillis(j10);
                case 4:
                    return plusSeconds(j10);
                case 5:
                    return plusSeconds(jl.d.m(j10, 60));
                case 6:
                    return plusSeconds(jl.d.m(j10, LocalCache.TIME_HOUR));
                case 7:
                    return plusSeconds(jl.d.m(j10, 43200));
                case 8:
                    return plusSeconds(jl.d.m(j10, 86400));
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return (Instant) jVar.addTo(this, j10);
    }

    @Override // org.threeten.bp.temporal.b
    public Instant with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            chronoField.checkValidValue(j10);
            int i9 = b.f56461a[chronoField.ordinal()];
            if (i9 == 1) {
                return j10 != ((long) this.nanos) ? create(this.seconds, (int) j10) : this;
            } else if (i9 == 2) {
                int i10 = ((int) j10) * 1000;
                return i10 != this.nanos ? create(this.seconds, i10) : this;
            } else if (i9 == 3) {
                int i11 = ((int) j10) * 1000000;
                return i11 != this.nanos ? create(this.seconds, i11) : this;
            } else if (i9 == 4) {
                return j10 != this.seconds ? create(j10, this.nanos) : this;
            } else {
                throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            }
        }
        return (Instant) gVar.adjustInto(this, j10);
    }

    private Instant plus(long j10, long j11) {
        if ((j10 | j11) == 0) {
            return this;
        }
        return ofEpochSecond(jl.d.k(jl.d.k(this.seconds, j10), j11 / 1000000000), this.nanos + (j11 % 1000000000));
    }
}
