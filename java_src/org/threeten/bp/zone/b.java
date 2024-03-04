package org.threeten.bp.zone;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.zone.d;
/* loaded from: classes7.dex */
final class b extends d implements Serializable {
    private static final long serialVersionUID = 3044319355680032515L;

    /* renamed from: a  reason: collision with root package name */
    private final long[] f56670a;

    /* renamed from: b  reason: collision with root package name */
    private final ZoneOffset[] f56671b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f56672c;

    /* renamed from: d  reason: collision with root package name */
    private final LocalDateTime[] f56673d;

    /* renamed from: e  reason: collision with root package name */
    private final ZoneOffset[] f56674e;

    /* renamed from: f  reason: collision with root package name */
    private final ZoneOffsetTransitionRule[] f56675f;

    /* renamed from: g  reason: collision with root package name */
    private final ConcurrentMap<Integer, ZoneOffsetTransition[]> f56676g = new ConcurrentHashMap();

    private b(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, ZoneOffsetTransitionRule[] zoneOffsetTransitionRuleArr) {
        this.f56670a = jArr;
        this.f56671b = zoneOffsetArr;
        this.f56672c = jArr2;
        this.f56674e = zoneOffsetArr2;
        this.f56675f = zoneOffsetTransitionRuleArr;
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        while (i9 < jArr2.length) {
            int i10 = i9 + 1;
            ZoneOffsetTransition zoneOffsetTransition = new ZoneOffsetTransition(jArr2[i9], zoneOffsetArr2[i9], zoneOffsetArr2[i10]);
            if (zoneOffsetTransition.isGap()) {
                arrayList.add(zoneOffsetTransition.getDateTimeBefore());
                arrayList.add(zoneOffsetTransition.getDateTimeAfter());
            } else {
                arrayList.add(zoneOffsetTransition.getDateTimeAfter());
                arrayList.add(zoneOffsetTransition.getDateTimeBefore());
            }
            i9 = i10;
        }
        this.f56673d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
    }

    private Object h(LocalDateTime localDateTime, ZoneOffsetTransition zoneOffsetTransition) {
        LocalDateTime dateTimeBefore = zoneOffsetTransition.getDateTimeBefore();
        if (zoneOffsetTransition.isGap()) {
            if (localDateTime.isBefore(dateTimeBefore)) {
                return zoneOffsetTransition.getOffsetBefore();
            }
            return localDateTime.isBefore(zoneOffsetTransition.getDateTimeAfter()) ? zoneOffsetTransition : zoneOffsetTransition.getOffsetAfter();
        } else if (localDateTime.isBefore(dateTimeBefore)) {
            return localDateTime.isBefore(zoneOffsetTransition.getDateTimeAfter()) ? zoneOffsetTransition.getOffsetBefore() : zoneOffsetTransition;
        } else {
            return zoneOffsetTransition.getOffsetAfter();
        }
    }

    private ZoneOffsetTransition[] i(int i9) {
        Integer valueOf = Integer.valueOf(i9);
        ZoneOffsetTransition[] zoneOffsetTransitionArr = this.f56676g.get(valueOf);
        if (zoneOffsetTransitionArr != null) {
            return zoneOffsetTransitionArr;
        }
        ZoneOffsetTransitionRule[] zoneOffsetTransitionRuleArr = this.f56675f;
        ZoneOffsetTransition[] zoneOffsetTransitionArr2 = new ZoneOffsetTransition[zoneOffsetTransitionRuleArr.length];
        for (int i10 = 0; i10 < zoneOffsetTransitionRuleArr.length; i10++) {
            zoneOffsetTransitionArr2[i10] = zoneOffsetTransitionRuleArr[i10].createTransition(i9);
        }
        if (i9 < 2100) {
            this.f56676g.putIfAbsent(valueOf, zoneOffsetTransitionArr2);
        }
        return zoneOffsetTransitionArr2;
    }

    private int j(long j10, ZoneOffset zoneOffset) {
        return LocalDate.ofEpochDay(jl.d.e(j10 + zoneOffset.getTotalSeconds(), 86400L)).getYear();
    }

    private Object k(LocalDateTime localDateTime) {
        int i9 = 0;
        if (this.f56675f.length > 0) {
            LocalDateTime[] localDateTimeArr = this.f56673d;
            if (localDateTimeArr.length == 0 || localDateTime.isAfter(localDateTimeArr[localDateTimeArr.length - 1])) {
                ZoneOffsetTransition[] i10 = i(localDateTime.getYear());
                Object obj = null;
                int length = i10.length;
                while (i9 < length) {
                    ZoneOffsetTransition zoneOffsetTransition = i10[i9];
                    Object h10 = h(localDateTime, zoneOffsetTransition);
                    if ((h10 instanceof ZoneOffsetTransition) || h10.equals(zoneOffsetTransition.getOffsetBefore())) {
                        return h10;
                    }
                    i9++;
                    obj = h10;
                }
                return obj;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f56673d, localDateTime);
        if (binarySearch == -1) {
            return this.f56674e[0];
        }
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        } else {
            LocalDateTime[] localDateTimeArr2 = this.f56673d;
            if (binarySearch < localDateTimeArr2.length - 1) {
                int i11 = binarySearch + 1;
                if (localDateTimeArr2[binarySearch].equals(localDateTimeArr2[i11])) {
                    binarySearch = i11;
                }
            }
        }
        if ((binarySearch & 1) == 0) {
            LocalDateTime[] localDateTimeArr3 = this.f56673d;
            LocalDateTime localDateTime2 = localDateTimeArr3[binarySearch];
            LocalDateTime localDateTime3 = localDateTimeArr3[binarySearch + 1];
            ZoneOffset[] zoneOffsetArr = this.f56674e;
            int i12 = binarySearch / 2;
            ZoneOffset zoneOffset = zoneOffsetArr[i12];
            ZoneOffset zoneOffset2 = zoneOffsetArr[i12 + 1];
            if (zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds()) {
                return new ZoneOffsetTransition(localDateTime2, zoneOffset, zoneOffset2);
            }
            return new ZoneOffsetTransition(localDateTime3, zoneOffset, zoneOffset2);
        }
        return this.f56674e[(binarySearch / 2) + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b m(DataInput dataInput) throws IOException, ClassNotFoundException {
        int readInt = dataInput.readInt();
        long[] jArr = new long[readInt];
        for (int i9 = 0; i9 < readInt; i9++) {
            jArr[i9] = a.b(dataInput);
        }
        int i10 = readInt + 1;
        ZoneOffset[] zoneOffsetArr = new ZoneOffset[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            zoneOffsetArr[i11] = a.d(dataInput);
        }
        int readInt2 = dataInput.readInt();
        long[] jArr2 = new long[readInt2];
        for (int i12 = 0; i12 < readInt2; i12++) {
            jArr2[i12] = a.b(dataInput);
        }
        int i13 = readInt2 + 1;
        ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i13];
        for (int i14 = 0; i14 < i13; i14++) {
            zoneOffsetArr2[i14] = a.d(dataInput);
        }
        int readByte = dataInput.readByte();
        ZoneOffsetTransitionRule[] zoneOffsetTransitionRuleArr = new ZoneOffsetTransitionRule[readByte];
        for (int i15 = 0; i15 < readByte; i15++) {
            zoneOffsetTransitionRuleArr[i15] = ZoneOffsetTransitionRule.readExternal(dataInput);
        }
        return new b(jArr, zoneOffsetArr, jArr2, zoneOffsetArr2, zoneOffsetTransitionRuleArr);
    }

    private Object writeReplace() {
        return new a((byte) 1, this);
    }

    @Override // org.threeten.bp.zone.d
    public ZoneOffset a(Instant instant) {
        ZoneOffset[] zoneOffsetArr;
        long epochSecond = instant.getEpochSecond();
        if (this.f56675f.length > 0) {
            long[] jArr = this.f56672c;
            if (jArr.length == 0 || epochSecond > jArr[jArr.length - 1]) {
                ZoneOffsetTransition[] i9 = i(j(epochSecond, this.f56674e[zoneOffsetArr.length - 1]));
                ZoneOffsetTransition zoneOffsetTransition = null;
                for (int i10 = 0; i10 < i9.length; i10++) {
                    zoneOffsetTransition = i9[i10];
                    if (epochSecond < zoneOffsetTransition.toEpochSecond()) {
                        return zoneOffsetTransition.getOffsetBefore();
                    }
                }
                return zoneOffsetTransition.getOffsetAfter();
            }
        }
        int binarySearch = Arrays.binarySearch(this.f56672c, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return this.f56674e[binarySearch + 1];
    }

    @Override // org.threeten.bp.zone.d
    public ZoneOffsetTransition b(LocalDateTime localDateTime) {
        Object k10 = k(localDateTime);
        if (k10 instanceof ZoneOffsetTransition) {
            return (ZoneOffsetTransition) k10;
        }
        return null;
    }

    @Override // org.threeten.bp.zone.d
    public List<ZoneOffset> c(LocalDateTime localDateTime) {
        Object k10 = k(localDateTime);
        if (k10 instanceof ZoneOffsetTransition) {
            return ((ZoneOffsetTransition) k10).getValidOffsets();
        }
        return Collections.singletonList((ZoneOffset) k10);
    }

    @Override // org.threeten.bp.zone.d
    public boolean d(Instant instant) {
        return !l(instant).equals(a(instant));
    }

    @Override // org.threeten.bp.zone.d
    public boolean e() {
        return this.f56672c.length == 0 && this.f56675f.length == 0 && this.f56674e[0].equals(this.f56671b[0]);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return Arrays.equals(this.f56670a, bVar.f56670a) && Arrays.equals(this.f56671b, bVar.f56671b) && Arrays.equals(this.f56672c, bVar.f56672c) && Arrays.equals(this.f56674e, bVar.f56674e) && Arrays.equals(this.f56675f, bVar.f56675f);
        }
        if ((obj instanceof d.a) && e()) {
            Instant instant = Instant.EPOCH;
            if (a(instant).equals(((d.a) obj).a(instant))) {
                return true;
            }
        }
        return false;
    }

    @Override // org.threeten.bp.zone.d
    public boolean f(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return c(localDateTime).contains(zoneOffset);
    }

    public int hashCode() {
        return (((Arrays.hashCode(this.f56670a) ^ Arrays.hashCode(this.f56671b)) ^ Arrays.hashCode(this.f56672c)) ^ Arrays.hashCode(this.f56674e)) ^ Arrays.hashCode(this.f56675f);
    }

    public ZoneOffset l(Instant instant) {
        int binarySearch = Arrays.binarySearch(this.f56670a, instant.getEpochSecond());
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return this.f56671b[binarySearch + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.f56670a.length);
        for (long j10 : this.f56670a) {
            a.e(j10, dataOutput);
        }
        for (ZoneOffset zoneOffset : this.f56671b) {
            a.g(zoneOffset, dataOutput);
        }
        dataOutput.writeInt(this.f56672c.length);
        for (long j11 : this.f56672c) {
            a.e(j11, dataOutput);
        }
        for (ZoneOffset zoneOffset2 : this.f56674e) {
            a.g(zoneOffset2, dataOutput);
        }
        dataOutput.writeByte(this.f56675f.length);
        for (ZoneOffsetTransitionRule zoneOffsetTransitionRule : this.f56675f) {
            zoneOffsetTransitionRule.writeExternal(dataOutput);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("StandardZoneRules[currentStandardOffset=");
        ZoneOffset[] zoneOffsetArr = this.f56671b;
        sb2.append(zoneOffsetArr[zoneOffsetArr.length - 1]);
        sb2.append("]");
        return sb2.toString();
    }
}
