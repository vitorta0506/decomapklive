package com.google.api.client.util;

import io.jsonwebtoken.JwtParser;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class DateTime implements Serializable {
    private static final long serialVersionUID = 1;
    private final boolean dateOnly;
    private final int tzShift;
    private final long value;
    private static final TimeZone GMT = TimeZone.getTimeZone("GMT");
    private static final String RFC3339_REGEX = "(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?";
    private static final Pattern RFC3339_PATTERN = Pattern.compile(RFC3339_REGEX);

    /* loaded from: classes2.dex */
    public static final class SecondsAndNanos implements Serializable {
        private final int nanos;
        private final long seconds;

        public static SecondsAndNanos ofSecondsAndNanos(long j10, int i9) {
            return new SecondsAndNanos(j10, i9);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SecondsAndNanos.class != obj.getClass()) {
                return false;
            }
            SecondsAndNanos secondsAndNanos = (SecondsAndNanos) obj;
            return this.seconds == secondsAndNanos.seconds && this.nanos == secondsAndNanos.nanos;
        }

        public int getNanos() {
            return this.nanos;
        }

        public long getSeconds() {
            return this.seconds;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.seconds), Integer.valueOf(this.nanos));
        }

        public String toString() {
            return String.format("Seconds: %d, Nanos: %d", Long.valueOf(this.seconds), Integer.valueOf(this.nanos));
        }

        private SecondsAndNanos(long j10, int i9) {
            this.seconds = j10;
            this.nanos = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final long f11081a;

        /* renamed from: b  reason: collision with root package name */
        private final int f11082b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f11083c;

        /* renamed from: d  reason: collision with root package name */
        private final Integer f11084d;

        /* JADX INFO: Access modifiers changed from: private */
        public DateTime c() {
            return new DateTime(!this.f11083c, TimeUnit.SECONDS.toMillis(this.f11081a) + TimeUnit.NANOSECONDS.toMillis(this.f11082b), this.f11084d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SecondsAndNanos d() {
            return new SecondsAndNanos(this.f11081a, this.f11082b);
        }

        private b(long j10, int i9, boolean z10, Integer num) {
            this.f11081a = j10;
            this.f11082b = i9;
            this.f11083c = z10;
            this.f11084d = num;
        }
    }

    public DateTime(Date date, TimeZone timeZone) {
        this(false, date.getTime(), timeZone == null ? null : Integer.valueOf(timeZone.getOffset(date.getTime()) / 60000));
    }

    private static void appendInt(StringBuilder sb2, int i9, int i10) {
        if (i9 < 0) {
            sb2.append('-');
            i9 = -i9;
        }
        int i11 = i9;
        while (i11 > 0) {
            i11 /= 10;
            i10--;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            sb2.append('0');
        }
        if (i9 != 0) {
            sb2.append(i9);
        }
    }

    public static DateTime parseRfc3339(String str) {
        return parseRfc3339WithNanoSeconds(str).c();
    }

    public static SecondsAndNanos parseRfc3339ToSecondsAndNanos(String str) {
        return parseRfc3339WithNanoSeconds(str).d();
    }

    private static b parseRfc3339WithNanoSeconds(String str) throws NumberFormatException {
        int i9;
        int i10;
        int i11;
        int i12;
        Integer num;
        int i13;
        Matcher matcher = RFC3339_PATTERN.matcher(str);
        if (matcher.matches()) {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2)) - 1;
            int parseInt3 = Integer.parseInt(matcher.group(3));
            boolean z10 = matcher.group(4) != null;
            String group = matcher.group(9);
            boolean z11 = group != null;
            if (z11 && !z10) {
                throw new NumberFormatException("Invalid date/time format, cannot specify time zone shift without specifying time: " + str);
            }
            if (z10) {
                int parseInt4 = Integer.parseInt(matcher.group(5));
                int parseInt5 = Integer.parseInt(matcher.group(6));
                int parseInt6 = Integer.parseInt(matcher.group(7));
                if (matcher.group(8) != null) {
                    i12 = Integer.parseInt(com.google.common.base.v.e(matcher.group(8).substring(1), 9, '0'));
                    i10 = parseInt5;
                    i11 = parseInt6;
                } else {
                    i10 = parseInt5;
                    i11 = parseInt6;
                    i12 = 0;
                }
                i9 = parseInt4;
            } else {
                i9 = 0;
                i10 = 0;
                i11 = 0;
                i12 = 0;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
            gregorianCalendar.clear();
            gregorianCalendar.set(parseInt, parseInt2, parseInt3, i9, i10, i11);
            long timeInMillis = gregorianCalendar.getTimeInMillis();
            if (z10 && z11) {
                if (Character.toUpperCase(group.charAt(0)) != 'Z') {
                    int parseInt7 = (Integer.parseInt(matcher.group(11)) * 60) + Integer.parseInt(matcher.group(12));
                    if (matcher.group(10).charAt(0) == '-') {
                        parseInt7 = -parseInt7;
                    }
                    timeInMillis -= parseInt7 * 60000;
                    i13 = Integer.valueOf(parseInt7);
                } else {
                    i13 = 0;
                }
                num = i13;
            } else {
                num = null;
            }
            return new b(timeInMillis / 1000, i12, z10, num);
        }
        throw new NumberFormatException("Invalid date/time format: " + str);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DateTime) {
            DateTime dateTime = (DateTime) obj;
            return this.dateOnly == dateTime.dateOnly && this.value == dateTime.value && this.tzShift == dateTime.tzShift;
        }
        return false;
    }

    public int getTimeZoneShift() {
        return this.tzShift;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        long[] jArr = new long[3];
        jArr[0] = this.value;
        jArr[1] = this.dateOnly ? 1L : 0L;
        jArr[2] = this.tzShift;
        return Arrays.hashCode(jArr);
    }

    public boolean isDateOnly() {
        return this.dateOnly;
    }

    public String toString() {
        return toStringRfc3339();
    }

    public String toStringRfc3339() {
        StringBuilder sb2 = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        gregorianCalendar.setTimeInMillis(this.value + (this.tzShift * 60000));
        appendInt(sb2, gregorianCalendar.get(1), 4);
        sb2.append('-');
        appendInt(sb2, gregorianCalendar.get(2) + 1, 2);
        sb2.append('-');
        appendInt(sb2, gregorianCalendar.get(5), 2);
        if (!this.dateOnly) {
            sb2.append('T');
            appendInt(sb2, gregorianCalendar.get(11), 2);
            sb2.append(':');
            appendInt(sb2, gregorianCalendar.get(12), 2);
            sb2.append(':');
            appendInt(sb2, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb2.append(JwtParser.SEPARATOR_CHAR);
                appendInt(sb2, gregorianCalendar.get(14), 3);
            }
            int i9 = this.tzShift;
            if (i9 == 0) {
                sb2.append('Z');
            } else {
                if (i9 > 0) {
                    sb2.append('+');
                } else {
                    sb2.append('-');
                    i9 = -i9;
                }
                appendInt(sb2, i9 / 60, 2);
                sb2.append(':');
                appendInt(sb2, i9 % 60, 2);
            }
        }
        return sb2.toString();
    }

    public DateTime(long j10) {
        this(false, j10, null);
    }

    public DateTime(Date date) {
        this(date.getTime());
    }

    public DateTime(long j10, int i9) {
        this(false, j10, Integer.valueOf(i9));
    }

    public DateTime(boolean z10, long j10, Integer num) {
        int offset;
        this.dateOnly = z10;
        this.value = j10;
        if (z10) {
            offset = 0;
        } else {
            offset = num == null ? TimeZone.getDefault().getOffset(j10) / 60000 : num.intValue();
        }
        this.tzShift = offset;
    }

    public DateTime(String str) {
        DateTime parseRfc3339 = parseRfc3339(str);
        this.dateOnly = parseRfc3339.dateOnly;
        this.value = parseRfc3339.value;
        this.tzShift = parseRfc3339.tzShift;
    }
}
