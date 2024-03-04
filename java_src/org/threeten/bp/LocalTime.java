package org.threeten.bp;

import com.facebook.internal.security.CertificateUtil;
import io.jsonwebtoken.JwtParser;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;
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
public final class LocalTime extends jl.c implements org.threeten.bp.temporal.b, d, Comparable<LocalTime>, Serializable {
    public static final i<LocalTime> FROM = new a();
    private static final LocalTime[] HOURS = new LocalTime[24];
    static final int HOURS_PER_DAY = 24;
    public static final LocalTime MAX;
    static final long MICROS_PER_DAY = 86400000000L;
    public static final LocalTime MIDNIGHT;
    static final long MILLIS_PER_DAY = 86400000;
    public static final LocalTime MIN;
    static final int MINUTES_PER_DAY = 1440;
    static final int MINUTES_PER_HOUR = 60;
    static final long NANOS_PER_DAY = 86400000000000L;
    static final long NANOS_PER_HOUR = 3600000000000L;
    static final long NANOS_PER_MINUTE = 60000000000L;
    static final long NANOS_PER_SECOND = 1000000000;
    public static final LocalTime NOON;
    static final int SECONDS_PER_DAY = 86400;
    static final int SECONDS_PER_HOUR = 3600;
    static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 6414437269572265201L;
    private final byte hour;
    private final byte minute;
    private final int nano;
    private final byte second;

    /* loaded from: classes7.dex */
    class a implements i<LocalTime> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public LocalTime a(org.threeten.bp.temporal.c cVar) {
            return LocalTime.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56466a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f56467b;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56467b = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56467b[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56467b[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56467b[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56467b[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56467b[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56467b[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[ChronoField.values().length];
            f56466a = iArr2;
            try {
                iArr2[ChronoField.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f56466a[ChronoField.NANO_OF_DAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f56466a[ChronoField.MICRO_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f56466a[ChronoField.MICRO_OF_DAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f56466a[ChronoField.MILLI_OF_SECOND.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f56466a[ChronoField.MILLI_OF_DAY.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f56466a[ChronoField.SECOND_OF_MINUTE.ordinal()] = 7;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f56466a[ChronoField.SECOND_OF_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f56466a[ChronoField.MINUTE_OF_HOUR.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f56466a[ChronoField.MINUTE_OF_DAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f56466a[ChronoField.HOUR_OF_AMPM.ordinal()] = 11;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f56466a[ChronoField.CLOCK_HOUR_OF_AMPM.ordinal()] = 12;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f56466a[ChronoField.HOUR_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f56466a[ChronoField.CLOCK_HOUR_OF_DAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f56466a[ChronoField.AMPM_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    static {
        int i9 = 0;
        while (true) {
            LocalTime[] localTimeArr = HOURS;
            if (i9 < localTimeArr.length) {
                localTimeArr[i9] = new LocalTime(i9, 0, 0, 0);
                i9++;
            } else {
                MIDNIGHT = localTimeArr[0];
                NOON = localTimeArr[12];
                MIN = localTimeArr[0];
                MAX = new LocalTime(23, 59, 59, Year.MAX_VALUE);
                return;
            }
        }
    }

    private LocalTime(int i9, int i10, int i11, int i12) {
        this.hour = (byte) i9;
        this.minute = (byte) i10;
        this.second = (byte) i11;
        this.nano = i12;
    }

    private static LocalTime create(int i9, int i10, int i11, int i12) {
        if ((i10 | i11 | i12) == 0) {
            return HOURS[i9];
        }
        return new LocalTime(i9, i10, i11, i12);
    }

    public static LocalTime from(org.threeten.bp.temporal.c cVar) {
        LocalTime localTime = (LocalTime) cVar.query(h.c());
        if (localTime != null) {
            return localTime;
        }
        throw new DateTimeException("Unable to obtain LocalTime from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
    }

    private int get0(g gVar) {
        switch (b.f56466a[((ChronoField) gVar).ordinal()]) {
            case 1:
                return this.nano;
            case 2:
                throw new DateTimeException("Field too large for an int: " + gVar);
            case 3:
                return this.nano / 1000;
            case 4:
                throw new DateTimeException("Field too large for an int: " + gVar);
            case 5:
                return this.nano / 1000000;
            case 6:
                return (int) (toNanoOfDay() / 1000000);
            case 7:
                return this.second;
            case 8:
                return toSecondOfDay();
            case 9:
                return this.minute;
            case 10:
                return (this.hour * 60) + this.minute;
            case 11:
                return this.hour % 12;
            case 12:
                int i9 = this.hour % 12;
                if (i9 % 12 == 0) {
                    return 12;
                }
                return i9;
            case 13:
                return this.hour;
            case 14:
                byte b10 = this.hour;
                if (b10 == 0) {
                    return 24;
                }
                return b10;
            case 15:
                return this.hour / 12;
            default:
                throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }
    }

    public static LocalTime now() {
        return now(org.threeten.bp.a.d());
    }

    public static LocalTime of(int i9, int i10) {
        ChronoField.HOUR_OF_DAY.checkValidValue(i9);
        if (i10 == 0) {
            return HOURS[i9];
        }
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i10);
        return new LocalTime(i9, i10, 0, 0);
    }

    public static LocalTime ofNanoOfDay(long j10) {
        ChronoField.NANO_OF_DAY.checkValidValue(j10);
        int i9 = (int) (j10 / NANOS_PER_HOUR);
        long j11 = j10 - (i9 * NANOS_PER_HOUR);
        int i10 = (int) (j11 / NANOS_PER_MINUTE);
        long j12 = j11 - (i10 * NANOS_PER_MINUTE);
        int i11 = (int) (j12 / NANOS_PER_SECOND);
        return create(i9, i10, i11, (int) (j12 - (i11 * NANOS_PER_SECOND)));
    }

    public static LocalTime ofSecondOfDay(long j10) {
        ChronoField.SECOND_OF_DAY.checkValidValue(j10);
        int i9 = (int) (j10 / 3600);
        long j11 = j10 - (i9 * 3600);
        int i10 = (int) (j11 / 60);
        return create(i9, i10, (int) (j11 - (i10 * 60)), 0);
    }

    public static LocalTime parse(CharSequence charSequence) {
        return parse(charSequence, org.threeten.bp.format.b.f56518k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    public static LocalTime readExternal(DataInput dataInput) throws IOException {
        byte b10;
        int i9;
        byte b11;
        int readByte = dataInput.readByte();
        byte b12 = 0;
        if (readByte >= 0) {
            byte readByte2 = dataInput.readByte();
            if (readByte2 < 0) {
                ?? r52 = ~readByte2;
                i9 = 0;
                b12 = r52;
                b10 = 0;
            } else {
                byte readByte3 = dataInput.readByte();
                if (readByte3 < 0) {
                    b12 = readByte2;
                    b11 = ~readByte3;
                } else {
                    int readInt = dataInput.readInt();
                    b10 = readByte3;
                    i9 = readInt;
                    b12 = readByte2;
                }
            }
            return of(readByte, b12, b10, i9);
        }
        readByte = ~readByte;
        b11 = 0;
        i9 = 0;
        b10 = b11;
        return of(readByte, b12, b10, i9);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 5, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.NANO_OF_DAY, toNanoOfDay());
    }

    public LocalDateTime atDate(LocalDate localDate) {
        return LocalDateTime.of(localDate, this);
    }

    public OffsetTime atOffset(ZoneOffset zoneOffset) {
        return OffsetTime.of(this, zoneOffset);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            LocalTime localTime = (LocalTime) obj;
            return this.hour == localTime.hour && this.minute == localTime.minute && this.second == localTime.second && this.nano == localTime.nano;
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
            return get0(gVar);
        }
        return super.get(gVar);
    }

    public int getHour() {
        return this.hour;
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar instanceof ChronoField) {
            if (gVar == ChronoField.NANO_OF_DAY) {
                return toNanoOfDay();
            }
            if (gVar == ChronoField.MICRO_OF_DAY) {
                return toNanoOfDay() / 1000;
            }
            return get0(gVar);
        }
        return gVar.getFrom(this);
    }

    public int getMinute() {
        return this.minute;
    }

    public int getNano() {
        return this.nano;
    }

    public int getSecond() {
        return this.second;
    }

    public int hashCode() {
        long nanoOfDay = toNanoOfDay();
        return (int) (nanoOfDay ^ (nanoOfDay >>> 32));
    }

    public boolean isAfter(LocalTime localTime) {
        return compareTo(localTime) > 0;
    }

    public boolean isBefore(LocalTime localTime) {
        return compareTo(localTime) < 0;
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isTimeBased();
        }
        return gVar != null && gVar.isSupportedBy(this);
    }

    public LocalTime minusHours(long j10) {
        return plusHours(-(j10 % 24));
    }

    public LocalTime minusMinutes(long j10) {
        return plusMinutes(-(j10 % 1440));
    }

    public LocalTime minusNanos(long j10) {
        return plusNanos(-(j10 % NANOS_PER_DAY));
    }

    public LocalTime minusSeconds(long j10) {
        return plusSeconds(-(j10 % 86400));
    }

    public LocalTime plusHours(long j10) {
        return j10 == 0 ? this : create(((((int) (j10 % 24)) + this.hour) + 24) % 24, this.minute, this.second, this.nano);
    }

    public LocalTime plusMinutes(long j10) {
        if (j10 == 0) {
            return this;
        }
        int i9 = (this.hour * 60) + this.minute;
        int i10 = ((((int) (j10 % 1440)) + i9) + MINUTES_PER_DAY) % MINUTES_PER_DAY;
        return i9 == i10 ? this : create(i10 / 60, i10 % 60, this.second, this.nano);
    }

    public LocalTime plusNanos(long j10) {
        if (j10 == 0) {
            return this;
        }
        long nanoOfDay = toNanoOfDay();
        long j11 = (((j10 % NANOS_PER_DAY) + nanoOfDay) + NANOS_PER_DAY) % NANOS_PER_DAY;
        return nanoOfDay == j11 ? this : create((int) (j11 / NANOS_PER_HOUR), (int) ((j11 / NANOS_PER_MINUTE) % 60), (int) ((j11 / NANOS_PER_SECOND) % 60), (int) (j11 % NANOS_PER_SECOND));
    }

    public LocalTime plusSeconds(long j10) {
        if (j10 == 0) {
            return this;
        }
        int i9 = (this.hour * 3600) + (this.minute * 60) + this.second;
        int i10 = ((((int) (j10 % 86400)) + i9) + 86400) % 86400;
        return i9 == i10 ? this : create(i10 / 3600, (i10 / 60) % 60, i10 % 60, this.nano);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.e()) {
            return (R) ChronoUnit.NANOS;
        }
        if (iVar == h.c()) {
            return this;
        }
        if (iVar == h.a() || iVar == h.g() || iVar == h.f() || iVar == h.d() || iVar == h.b()) {
            return null;
        }
        return iVar.a(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        return super.range(gVar);
    }

    public long toNanoOfDay() {
        return (this.hour * NANOS_PER_HOUR) + (this.minute * NANOS_PER_MINUTE) + (this.second * NANOS_PER_SECOND) + this.nano;
    }

    public int toSecondOfDay() {
        return (this.hour * 3600) + (this.minute * 60) + this.second;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(18);
        byte b10 = this.hour;
        byte b11 = this.minute;
        byte b12 = this.second;
        int i9 = this.nano;
        sb2.append(b10 < 10 ? "0" : "");
        sb2.append((int) b10);
        sb2.append(b11 < 10 ? ":0" : CertificateUtil.DELIMITER);
        sb2.append((int) b11);
        if (b12 > 0 || i9 > 0) {
            sb2.append(b12 >= 10 ? CertificateUtil.DELIMITER : ":0");
            sb2.append((int) b12);
            if (i9 > 0) {
                sb2.append(JwtParser.SEPARATOR_CHAR);
                if (i9 % 1000000 == 0) {
                    sb2.append(Integer.toString((i9 / 1000000) + 1000).substring(1));
                } else if (i9 % 1000 == 0) {
                    sb2.append(Integer.toString((i9 / 1000) + 1000000).substring(1));
                } else {
                    sb2.append(Integer.toString(i9 + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                }
            }
        }
        return sb2.toString();
    }

    public LocalTime truncatedTo(j jVar) {
        if (jVar == ChronoUnit.NANOS) {
            return this;
        }
        Duration duration = jVar.getDuration();
        if (duration.getSeconds() <= 86400) {
            long nanos = duration.toNanos();
            if (NANOS_PER_DAY % nanos == 0) {
                return ofNanoOfDay((toNanoOfDay() / nanos) * nanos);
            }
            throw new DateTimeException("Unit must divide into a standard day without remainder");
        }
        throw new DateTimeException("Unit is too large to be used for truncation");
    }

    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, j jVar) {
        LocalTime from = from(bVar);
        if (jVar instanceof ChronoUnit) {
            long nanoOfDay = from.toNanoOfDay() - toNanoOfDay();
            switch (b.f56467b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return nanoOfDay;
                case 2:
                    return nanoOfDay / 1000;
                case 3:
                    return nanoOfDay / 1000000;
                case 4:
                    return nanoOfDay / NANOS_PER_SECOND;
                case 5:
                    return nanoOfDay / NANOS_PER_MINUTE;
                case 6:
                    return nanoOfDay / NANOS_PER_HOUR;
                case 7:
                    return nanoOfDay / 43200000000000L;
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return jVar.between(this, from);
    }

    public LocalTime withHour(int i9) {
        if (this.hour == i9) {
            return this;
        }
        ChronoField.HOUR_OF_DAY.checkValidValue(i9);
        return create(i9, this.minute, this.second, this.nano);
    }

    public LocalTime withMinute(int i9) {
        if (this.minute == i9) {
            return this;
        }
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i9);
        return create(this.hour, i9, this.second, this.nano);
    }

    public LocalTime withNano(int i9) {
        if (this.nano == i9) {
            return this;
        }
        ChronoField.NANO_OF_SECOND.checkValidValue(i9);
        return create(this.hour, this.minute, this.second, i9);
    }

    public LocalTime withSecond(int i9) {
        if (this.second == i9) {
            return this;
        }
        ChronoField.SECOND_OF_MINUTE.checkValidValue(i9);
        return create(this.hour, this.minute, i9, this.nano);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        if (this.nano == 0) {
            if (this.second == 0) {
                if (this.minute == 0) {
                    dataOutput.writeByte(~this.hour);
                    return;
                }
                dataOutput.writeByte(this.hour);
                dataOutput.writeByte(~this.minute);
                return;
            }
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(this.minute);
            dataOutput.writeByte(~this.second);
            return;
        }
        dataOutput.writeByte(this.hour);
        dataOutput.writeByte(this.minute);
        dataOutput.writeByte(this.second);
        dataOutput.writeInt(this.nano);
    }

    public static LocalTime now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static LocalTime parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return (LocalTime) bVar.h(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalTime localTime) {
        int a10 = jl.d.a(this.hour, localTime.hour);
        if (a10 == 0) {
            int a11 = jl.d.a(this.minute, localTime.minute);
            if (a11 == 0) {
                int a12 = jl.d.a(this.second, localTime.second);
                return a12 == 0 ? jl.d.a(this.nano, localTime.nano) : a12;
            }
            return a11;
        }
        return a10;
    }

    public static LocalTime now(org.threeten.bp.a aVar) {
        jl.d.i(aVar, "clock");
        Instant b10 = aVar.b();
        long epochSecond = ((b10.getEpochSecond() % 86400) + aVar.a().getRules().a(b10).getTotalSeconds()) % 86400;
        if (epochSecond < 0) {
            epochSecond += 86400;
        }
        return ofSecondOfDay(epochSecond, b10.getNano());
    }

    /* renamed from: minus */
    public LocalTime m3379minus(f fVar) {
        return (LocalTime) fVar.subtractFrom(this);
    }

    /* renamed from: plus */
    public LocalTime m3380plus(f fVar) {
        return (LocalTime) fVar.addTo(this);
    }

    @Override // org.threeten.bp.temporal.b
    public LocalTime with(d dVar) {
        if (dVar instanceof LocalTime) {
            return (LocalTime) dVar;
        }
        return (LocalTime) dVar.adjustInto(this);
    }

    public boolean isSupported(j jVar) {
        if (jVar instanceof ChronoUnit) {
            return jVar.isTimeBased();
        }
        return jVar != null && jVar.isSupportedBy(this);
    }

    @Override // org.threeten.bp.temporal.b
    public LocalTime minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }

    @Override // org.threeten.bp.temporal.b
    public LocalTime plus(long j10, j jVar) {
        if (jVar instanceof ChronoUnit) {
            switch (b.f56467b[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return plusNanos(j10);
                case 2:
                    return plusNanos((j10 % MICROS_PER_DAY) * 1000);
                case 3:
                    return plusNanos((j10 % 86400000) * 1000000);
                case 4:
                    return plusSeconds(j10);
                case 5:
                    return plusMinutes(j10);
                case 6:
                    return plusHours(j10);
                case 7:
                    return plusHours((j10 % 2) * 12);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
            }
        }
        return (LocalTime) jVar.addTo(this, j10);
    }

    public static LocalTime of(int i9, int i10, int i11) {
        ChronoField.HOUR_OF_DAY.checkValidValue(i9);
        if ((i10 | i11) == 0) {
            return HOURS[i9];
        }
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i10);
        ChronoField.SECOND_OF_MINUTE.checkValidValue(i11);
        return new LocalTime(i9, i10, i11, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LocalTime ofSecondOfDay(long j10, int i9) {
        ChronoField.SECOND_OF_DAY.checkValidValue(j10);
        ChronoField.NANO_OF_SECOND.checkValidValue(i9);
        int i10 = (int) (j10 / 3600);
        long j11 = j10 - (i10 * 3600);
        int i11 = (int) (j11 / 60);
        return create(i10, i11, (int) (j11 - (i11 * 60)), i9);
    }

    @Override // org.threeten.bp.temporal.b
    public LocalTime with(g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            chronoField.checkValidValue(j10);
            switch (b.f56466a[chronoField.ordinal()]) {
                case 1:
                    return withNano((int) j10);
                case 2:
                    return ofNanoOfDay(j10);
                case 3:
                    return withNano(((int) j10) * 1000);
                case 4:
                    return ofNanoOfDay(j10 * 1000);
                case 5:
                    return withNano(((int) j10) * 1000000);
                case 6:
                    return ofNanoOfDay(j10 * 1000000);
                case 7:
                    return withSecond((int) j10);
                case 8:
                    return plusSeconds(j10 - toSecondOfDay());
                case 9:
                    return withMinute((int) j10);
                case 10:
                    return plusMinutes(j10 - ((this.hour * 60) + this.minute));
                case 11:
                    return plusHours(j10 - (this.hour % 12));
                case 12:
                    if (j10 == 12) {
                        j10 = 0;
                    }
                    return plusHours(j10 - (this.hour % 12));
                case 13:
                    return withHour((int) j10);
                case 14:
                    if (j10 == 24) {
                        j10 = 0;
                    }
                    return withHour((int) j10);
                case 15:
                    return plusHours((j10 - (this.hour / 12)) * 12);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            }
        }
        return (LocalTime) gVar.adjustInto(this, j10);
    }

    public static LocalTime of(int i9, int i10, int i11, int i12) {
        ChronoField.HOUR_OF_DAY.checkValidValue(i9);
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i10);
        ChronoField.SECOND_OF_MINUTE.checkValidValue(i11);
        ChronoField.NANO_OF_SECOND.checkValidValue(i12);
        return create(i9, i10, i11, i12);
    }
}
