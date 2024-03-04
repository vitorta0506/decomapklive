package org.threeten.bp.zone;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.LocalTime;
import org.threeten.bp.Month;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.IsoChronology;
/* loaded from: classes7.dex */
public final class ZoneOffsetTransitionRule implements Serializable {
    private static final int SECS_PER_DAY = 86400;
    private static final long serialVersionUID = 6889046316657758795L;
    private final int adjustDays;
    private final byte dom;
    private final DayOfWeek dow;
    private final Month month;
    private final ZoneOffset offsetAfter;
    private final ZoneOffset offsetBefore;
    private final ZoneOffset standardOffset;
    private final LocalTime time;
    private final TimeDefinition timeDefinition;

    /* loaded from: classes7.dex */
    public enum TimeDefinition {
        UTC,
        WALL,
        STANDARD;

        public LocalDateTime createDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
            int i9 = a.f56667a[ordinal()];
            if (i9 != 1) {
                return i9 != 2 ? localDateTime : localDateTime.plusSeconds(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds());
            }
            return localDateTime.plusSeconds(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56667a;

        static {
            int[] iArr = new int[TimeDefinition.values().length];
            f56667a = iArr;
            try {
                iArr[TimeDefinition.UTC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56667a[TimeDefinition.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    ZoneOffsetTransitionRule(Month month, int i9, DayOfWeek dayOfWeek, LocalTime localTime, int i10, TimeDefinition timeDefinition, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.month = month;
        this.dom = (byte) i9;
        this.dow = dayOfWeek;
        this.time = localTime;
        this.adjustDays = i10;
        this.timeDefinition = timeDefinition;
        this.standardOffset = zoneOffset;
        this.offsetBefore = zoneOffset2;
        this.offsetAfter = zoneOffset3;
    }

    private void appendZeroPad(StringBuilder sb2, long j10) {
        if (j10 < 10) {
            sb2.append(0);
        }
        sb2.append(j10);
    }

    public static ZoneOffsetTransitionRule of(Month month, int i9, DayOfWeek dayOfWeek, LocalTime localTime, boolean z10, TimeDefinition timeDefinition, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        jl.d.i(month, "month");
        jl.d.i(localTime, CrashHianalyticsData.TIME);
        jl.d.i(timeDefinition, "timeDefnition");
        jl.d.i(zoneOffset, "standardOffset");
        jl.d.i(zoneOffset2, "offsetBefore");
        jl.d.i(zoneOffset3, "offsetAfter");
        if (i9 >= -28 && i9 <= 31 && i9 != 0) {
            if (z10 && !localTime.equals(LocalTime.MIDNIGHT)) {
                throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
            }
            return new ZoneOffsetTransitionRule(month, i9, dayOfWeek, localTime, z10 ? 1 : 0, timeDefinition, zoneOffset, zoneOffset2, zoneOffset3);
        }
        throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneOffsetTransitionRule readExternal(DataInput dataInput) throws IOException {
        int readInt = dataInput.readInt();
        Month of2 = Month.of(readInt >>> 28);
        int i9 = ((264241152 & readInt) >>> 22) - 32;
        int i10 = (3670016 & readInt) >>> 19;
        DayOfWeek of3 = i10 == 0 ? null : DayOfWeek.of(i10);
        int i11 = (507904 & readInt) >>> 14;
        TimeDefinition timeDefinition = TimeDefinition.values()[(readInt & 12288) >>> 12];
        int i12 = (readInt & 4080) >>> 4;
        int i13 = (readInt & 12) >>> 2;
        int i14 = readInt & 3;
        int readInt2 = i11 == 31 ? dataInput.readInt() : i11 * LocalCache.TIME_HOUR;
        ZoneOffset ofTotalSeconds = ZoneOffset.ofTotalSeconds(i12 == 255 ? dataInput.readInt() : (i12 - 128) * 900);
        ZoneOffset ofTotalSeconds2 = ZoneOffset.ofTotalSeconds(i13 == 3 ? dataInput.readInt() : ofTotalSeconds.getTotalSeconds() + (i13 * 1800));
        ZoneOffset ofTotalSeconds3 = ZoneOffset.ofTotalSeconds(i14 == 3 ? dataInput.readInt() : ofTotalSeconds.getTotalSeconds() + (i14 * 1800));
        if (i9 >= -28 && i9 <= 31 && i9 != 0) {
            return new ZoneOffsetTransitionRule(of2, i9, of3, LocalTime.ofSecondOfDay(jl.d.f(readInt2, 86400)), jl.d.d(readInt2, 86400), timeDefinition, ofTotalSeconds, ofTotalSeconds2, ofTotalSeconds3);
        }
        throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
    }

    private Object writeReplace() {
        return new org.threeten.bp.zone.a((byte) 3, this);
    }

    public ZoneOffsetTransition createTransition(int i9) {
        LocalDate of2;
        byte b10 = this.dom;
        if (b10 < 0) {
            Month month = this.month;
            of2 = LocalDate.of(i9, month, month.length(IsoChronology.INSTANCE.isLeapYear(i9)) + 1 + this.dom);
            DayOfWeek dayOfWeek = this.dow;
            if (dayOfWeek != null) {
                of2 = of2.with(org.threeten.bp.temporal.e.b(dayOfWeek));
            }
        } else {
            of2 = LocalDate.of(i9, this.month, b10);
            DayOfWeek dayOfWeek2 = this.dow;
            if (dayOfWeek2 != null) {
                of2 = of2.with(org.threeten.bp.temporal.e.a(dayOfWeek2));
            }
        }
        return new ZoneOffsetTransition(this.timeDefinition.createDateTime(LocalDateTime.of(of2.plusDays(this.adjustDays), this.time), this.standardOffset, this.offsetBefore), this.offsetBefore, this.offsetAfter);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ZoneOffsetTransitionRule) {
            ZoneOffsetTransitionRule zoneOffsetTransitionRule = (ZoneOffsetTransitionRule) obj;
            return this.month == zoneOffsetTransitionRule.month && this.dom == zoneOffsetTransitionRule.dom && this.dow == zoneOffsetTransitionRule.dow && this.timeDefinition == zoneOffsetTransitionRule.timeDefinition && this.adjustDays == zoneOffsetTransitionRule.adjustDays && this.time.equals(zoneOffsetTransitionRule.time) && this.standardOffset.equals(zoneOffsetTransitionRule.standardOffset) && this.offsetBefore.equals(zoneOffsetTransitionRule.offsetBefore) && this.offsetAfter.equals(zoneOffsetTransitionRule.offsetAfter);
        }
        return false;
    }

    public int getDayOfMonthIndicator() {
        return this.dom;
    }

    public DayOfWeek getDayOfWeek() {
        return this.dow;
    }

    public LocalTime getLocalTime() {
        return this.time;
    }

    public Month getMonth() {
        return this.month;
    }

    public ZoneOffset getOffsetAfter() {
        return this.offsetAfter;
    }

    public ZoneOffset getOffsetBefore() {
        return this.offsetBefore;
    }

    public ZoneOffset getStandardOffset() {
        return this.standardOffset;
    }

    public TimeDefinition getTimeDefinition() {
        return this.timeDefinition;
    }

    public int hashCode() {
        int secondOfDay = ((this.time.toSecondOfDay() + this.adjustDays) << 15) + (this.month.ordinal() << 11) + ((this.dom + 32) << 5);
        DayOfWeek dayOfWeek = this.dow;
        return ((((secondOfDay + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)) + this.timeDefinition.ordinal()) ^ this.standardOffset.hashCode()) ^ this.offsetBefore.hashCode()) ^ this.offsetAfter.hashCode();
    }

    public boolean isMidnightEndOfDay() {
        return this.adjustDays == 1 && this.time.equals(LocalTime.MIDNIGHT);
    }

    public String toString() {
        long j10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TransitionRule[");
        sb2.append(this.offsetBefore.compareTo(this.offsetAfter) > 0 ? "Gap " : "Overlap ");
        sb2.append(this.offsetBefore);
        sb2.append(" to ");
        sb2.append(this.offsetAfter);
        sb2.append(", ");
        DayOfWeek dayOfWeek = this.dow;
        if (dayOfWeek != null) {
            byte b10 = this.dom;
            if (b10 == -1) {
                sb2.append(dayOfWeek.name());
                sb2.append(" on or before last day of ");
                sb2.append(this.month.name());
            } else if (b10 < 0) {
                sb2.append(dayOfWeek.name());
                sb2.append(" on or before last day minus ");
                sb2.append((-this.dom) - 1);
                sb2.append(" of ");
                sb2.append(this.month.name());
            } else {
                sb2.append(dayOfWeek.name());
                sb2.append(" on or after ");
                sb2.append(this.month.name());
                sb2.append(' ');
                sb2.append((int) this.dom);
            }
        } else {
            sb2.append(this.month.name());
            sb2.append(' ');
            sb2.append((int) this.dom);
        }
        sb2.append(" at ");
        if (this.adjustDays == 0) {
            sb2.append(this.time);
        } else {
            appendZeroPad(sb2, jl.d.e((this.time.toSecondOfDay() / 60) + (this.adjustDays * 24 * 60), 60L));
            sb2.append(':');
            appendZeroPad(sb2, jl.d.g(j10, 60));
        }
        sb2.append(" ");
        sb2.append(this.timeDefinition);
        sb2.append(", standard offset ");
        sb2.append(this.standardOffset);
        sb2.append(']');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        int i9;
        int secondOfDay = this.time.toSecondOfDay() + (this.adjustDays * 86400);
        int totalSeconds = this.standardOffset.getTotalSeconds();
        int totalSeconds2 = this.offsetBefore.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.offsetAfter.getTotalSeconds() - totalSeconds;
        if (secondOfDay % LocalCache.TIME_HOUR != 0 || secondOfDay > 86400) {
            i9 = 31;
        } else {
            i9 = secondOfDay == 86400 ? 24 : this.time.getHour();
        }
        int i10 = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i11 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i12 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.dow;
        dataOutput.writeInt((this.month.getValue() << 28) + ((this.dom + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (i9 << 14) + (this.timeDefinition.ordinal() << 12) + (i10 << 4) + (i11 << 2) + i12);
        if (i9 == 31) {
            dataOutput.writeInt(secondOfDay);
        }
        if (i10 == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i11 == 3) {
            dataOutput.writeInt(this.offsetBefore.getTotalSeconds());
        }
        if (i12 == 3) {
            dataOutput.writeInt(this.offsetAfter.getTotalSeconds());
        }
    }
}