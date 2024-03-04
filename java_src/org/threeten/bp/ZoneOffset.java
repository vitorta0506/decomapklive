package org.threeten.bp;

import com.facebook.internal.security.CertificateUtil;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.d;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
/* loaded from: classes7.dex */
public final class ZoneOffset extends ZoneId implements org.threeten.bp.temporal.c, d, Comparable<ZoneOffset> {
    private static final int MINUTES_PER_HOUR = 60;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 2357656521762053153L;

    /* renamed from: id  reason: collision with root package name */
    private final transient String f56477id;
    private final int totalSeconds;
    public static final i<ZoneOffset> FROM = new a();
    private static final ConcurrentMap<Integer, ZoneOffset> SECONDS_CACHE = new ConcurrentHashMap(16, 0.75f, 4);
    private static final ConcurrentMap<String, ZoneOffset> ID_CACHE = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = ofTotalSeconds(0);
    public static final ZoneOffset MIN = ofTotalSeconds(-64800);
    private static final int MAX_SECONDS = 64800;
    public static final ZoneOffset MAX = ofTotalSeconds(MAX_SECONDS);

    /* loaded from: classes7.dex */
    class a implements i<ZoneOffset> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public ZoneOffset a(org.threeten.bp.temporal.c cVar) {
            return ZoneOffset.from(cVar);
        }
    }

    private ZoneOffset(int i9) {
        this.totalSeconds = i9;
        this.f56477id = buildId(i9);
    }

    private static String buildId(int i9) {
        if (i9 == 0) {
            return "Z";
        }
        int abs = Math.abs(i9);
        StringBuilder sb2 = new StringBuilder();
        int i10 = abs / 3600;
        int i11 = (abs / 60) % 60;
        sb2.append(i9 < 0 ? "-" : "+");
        sb2.append(i10 < 10 ? "0" : "");
        sb2.append(i10);
        sb2.append(i11 < 10 ? ":0" : CertificateUtil.DELIMITER);
        sb2.append(i11);
        int i12 = abs % 60;
        if (i12 != 0) {
            sb2.append(i12 >= 10 ? CertificateUtil.DELIMITER : ":0");
            sb2.append(i12);
        }
        return sb2.toString();
    }

    public static ZoneOffset from(org.threeten.bp.temporal.c cVar) {
        ZoneOffset zoneOffset = (ZoneOffset) cVar.query(h.d());
        if (zoneOffset != null) {
            return zoneOffset;
        }
        throw new DateTimeException("Unable to obtain ZoneOffset from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0099 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.threeten.bp.ZoneOffset of(java.lang.String r7) {
        /*
            java.lang.String r0 = "offsetId"
            jl.d.i(r7, r0)
            java.util.concurrent.ConcurrentMap<java.lang.String, org.threeten.bp.ZoneOffset> r0 = org.threeten.bp.ZoneOffset.ID_CACHE
            java.lang.Object r0 = r0.get(r7)
            org.threeten.bp.ZoneOffset r0 = (org.threeten.bp.ZoneOffset) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            int r0 = r7.length()
            r1 = 2
            r2 = 1
            r3 = 0
            if (r0 == r1) goto L6d
            r1 = 3
            if (r0 == r1) goto L89
            r4 = 5
            if (r0 == r4) goto L64
            r5 = 6
            r6 = 4
            if (r0 == r5) goto L5b
            r5 = 7
            if (r0 == r5) goto L4e
            r1 = 9
            if (r0 != r1) goto L37
            int r0 = parseNumber(r7, r2, r3)
            int r1 = parseNumber(r7, r6, r2)
            int r2 = parseNumber(r7, r5, r2)
            goto L8f
        L37:
            org.threeten.bp.DateTimeException r0 = new org.threeten.bp.DateTimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid ID for ZoneOffset, invalid format: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        L4e:
            int r0 = parseNumber(r7, r2, r3)
            int r1 = parseNumber(r7, r1, r3)
            int r2 = parseNumber(r7, r4, r3)
            goto L8f
        L5b:
            int r0 = parseNumber(r7, r2, r3)
            int r1 = parseNumber(r7, r6, r2)
            goto L8e
        L64:
            int r0 = parseNumber(r7, r2, r3)
            int r1 = parseNumber(r7, r1, r3)
            goto L8e
        L6d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            char r1 = r7.charAt(r3)
            r0.append(r1)
            java.lang.String r1 = "0"
            r0.append(r1)
            char r7 = r7.charAt(r2)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
        L89:
            int r0 = parseNumber(r7, r2, r3)
            r1 = 0
        L8e:
            r2 = 0
        L8f:
            char r3 = r7.charAt(r3)
            r4 = 43
            r5 = 45
            if (r3 == r4) goto Lb3
            if (r3 != r5) goto L9c
            goto Lb3
        L9c:
            org.threeten.bp.DateTimeException r0 = new org.threeten.bp.DateTimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid ID for ZoneOffset, plus/minus not found when expected: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        Lb3:
            if (r3 != r5) goto Lbd
            int r7 = -r0
            int r0 = -r1
            int r1 = -r2
            org.threeten.bp.ZoneOffset r7 = ofHoursMinutesSeconds(r7, r0, r1)
            return r7
        Lbd:
            org.threeten.bp.ZoneOffset r7 = ofHoursMinutesSeconds(r0, r1, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.bp.ZoneOffset.of(java.lang.String):org.threeten.bp.ZoneOffset");
    }

    public static ZoneOffset ofHours(int i9) {
        return ofHoursMinutesSeconds(i9, 0, 0);
    }

    public static ZoneOffset ofHoursMinutes(int i9, int i10) {
        return ofHoursMinutesSeconds(i9, i10, 0);
    }

    public static ZoneOffset ofHoursMinutesSeconds(int i9, int i10, int i11) {
        validate(i9, i10, i11);
        return ofTotalSeconds(totalSeconds(i9, i10, i11));
    }

    public static ZoneOffset ofTotalSeconds(int i9) {
        if (Math.abs(i9) <= MAX_SECONDS) {
            if (i9 % 900 == 0) {
                Integer valueOf = Integer.valueOf(i9);
                ConcurrentMap<Integer, ZoneOffset> concurrentMap = SECONDS_CACHE;
                ZoneOffset zoneOffset = concurrentMap.get(valueOf);
                if (zoneOffset == null) {
                    concurrentMap.putIfAbsent(valueOf, new ZoneOffset(i9));
                    ZoneOffset zoneOffset2 = concurrentMap.get(valueOf);
                    ID_CACHE.putIfAbsent(zoneOffset2.getId(), zoneOffset2);
                    return zoneOffset2;
                }
                return zoneOffset;
            }
            return new ZoneOffset(i9);
        }
        throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
    }

    private static int parseNumber(CharSequence charSequence, int i9, boolean z10) {
        if (z10 && charSequence.charAt(i9 - 1) != ':') {
            throw new DateTimeException("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) charSequence));
        }
        char charAt = charSequence.charAt(i9);
        char charAt2 = charSequence.charAt(i9 + 1);
        if (charAt < '0' || charAt > '9' || charAt2 < '0' || charAt2 > '9') {
            throw new DateTimeException("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) charSequence));
        }
        return ((charAt - '0') * 10) + (charAt2 - '0');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneOffset readExternal(DataInput dataInput) throws IOException {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? ofTotalSeconds(dataInput.readInt()) : ofTotalSeconds(readByte * 900);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private static int totalSeconds(int i9, int i10, int i11) {
        return (i9 * 3600) + (i10 * 60) + i11;
    }

    private static void validate(int i9, int i10, int i11) {
        if (i9 >= -18 && i9 <= 18) {
            if (i9 > 0) {
                if (i10 < 0 || i11 < 0) {
                    throw new DateTimeException("Zone offset minutes and seconds must be positive because hours is positive");
                }
            } else if (i9 < 0) {
                if (i10 > 0 || i11 > 0) {
                    throw new DateTimeException("Zone offset minutes and seconds must be negative because hours is negative");
                }
            } else if ((i10 > 0 && i11 < 0) || (i10 < 0 && i11 > 0)) {
                throw new DateTimeException("Zone offset minutes and seconds must have the same sign");
            }
            if (Math.abs(i10) <= 59) {
                if (Math.abs(i11) <= 59) {
                    if (Math.abs(i9) == 18) {
                        if (Math.abs(i10) > 0 || Math.abs(i11) > 0) {
                            throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
                        }
                        return;
                    }
                    return;
                }
                throw new DateTimeException("Zone offset seconds not in valid range: abs(value) " + Math.abs(i11) + " is not in the range 0 to 59");
            }
            throw new DateTimeException("Zone offset minutes not in valid range: abs(value) " + Math.abs(i10) + " is not in the range 0 to 59");
        }
        throw new DateTimeException("Zone offset hours not in valid range: value " + i9 + " is not in the range -18 to 18");
    }

    private Object writeReplace() {
        return new b((byte) 8, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.OFFSET_SECONDS, this.totalSeconds);
    }

    @Override // org.threeten.bp.ZoneId
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.totalSeconds == ((ZoneOffset) obj).totalSeconds;
    }

    @Override // org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar == ChronoField.OFFSET_SECONDS) {
            return this.totalSeconds;
        }
        if (!(gVar instanceof ChronoField)) {
            return range(gVar).checkValidIntValue(getLong(gVar), gVar);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }

    @Override // org.threeten.bp.ZoneId
    public String getId() {
        return this.f56477id;
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar == ChronoField.OFFSET_SECONDS) {
            return this.totalSeconds;
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.getFrom(this);
        }
        throw new DateTimeException("Unsupported field: " + gVar);
    }

    @Override // org.threeten.bp.ZoneId
    public org.threeten.bp.zone.d getRules() {
        return org.threeten.bp.zone.d.g(this);
    }

    public int getTotalSeconds() {
        return this.totalSeconds;
    }

    @Override // org.threeten.bp.ZoneId
    public int hashCode() {
        return this.totalSeconds;
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.OFFSET_SECONDS : gVar != null && gVar.isSupportedBy(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.d() || iVar == h.f()) {
            return this;
        }
        if (iVar == h.b() || iVar == h.c() || iVar == h.e() || iVar == h.a() || iVar == h.g()) {
            return null;
        }
        return iVar.a(this);
    }

    @Override // org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar == ChronoField.OFFSET_SECONDS) {
            return gVar.range();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.rangeRefinedBy(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }

    @Override // org.threeten.bp.ZoneId
    public String toString() {
        return this.f56477id;
    }

    @Override // org.threeten.bp.ZoneId
    void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        writeExternal(dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        int i9 = this.totalSeconds;
        int i10 = i9 % 900 == 0 ? i9 / 900 : 127;
        dataOutput.writeByte(i10);
        if (i10 == 127) {
            dataOutput.writeInt(i9);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.totalSeconds - this.totalSeconds;
    }
}
