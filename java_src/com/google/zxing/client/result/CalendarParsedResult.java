package com.google.zxing.client.result;

import com.guochao.faceshow.utils.TimeUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public final class CalendarParsedResult extends ParsedResult {
    private final String[] attendees;
    private final String description;
    private final long end;
    private final boolean endAllDay;
    private final double latitude;
    private final String location;
    private final double longitude;
    private final String organizer;
    private final long start;
    private final boolean startAllDay;
    private final String summary;
    private static final Pattern RFC2445_DURATION = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");
    private static final long[] RFC2445_DURATION_FIELD_UNITS = {TimeUtil.WEEK, 86400000, 3600000, 60000, 1000};
    private static final Pattern DATE_TIME = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");

    public CalendarParsedResult(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d10, double d11) {
        super(ParsedResultType.CALENDAR);
        this.summary = str;
        try {
            long parseDate = parseDate(str2);
            this.start = parseDate;
            if (str3 == null) {
                long parseDurationMS = parseDurationMS(str4);
                this.end = parseDurationMS < 0 ? -1L : parseDate + parseDurationMS;
            } else {
                try {
                    this.end = parseDate(str3);
                } catch (ParseException e10) {
                    throw new IllegalArgumentException(e10.toString());
                }
            }
            boolean z10 = true;
            this.startAllDay = str2.length() == 8;
            this.endAllDay = (str3 == null || str3.length() != 8) ? false : false;
            this.location = str5;
            this.organizer = str6;
            this.attendees = strArr;
            this.description = str7;
            this.latitude = d10;
            this.longitude = d11;
        } catch (ParseException e11) {
            throw new IllegalArgumentException(e11.toString());
        }
    }

    private static String format(boolean z10, long j10) {
        DateFormat dateTimeInstance;
        if (j10 < 0) {
            return null;
        }
        if (z10) {
            dateTimeInstance = DateFormat.getDateInstance(2);
        } else {
            dateTimeInstance = DateFormat.getDateTimeInstance(2, 2);
        }
        return dateTimeInstance.format(Long.valueOf(j10));
    }

    private static long parseDate(String str) throws ParseException {
        if (DATE_TIME.matcher(str).matches()) {
            if (str.length() == 8) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                return simpleDateFormat.parse(str).getTime();
            } else if (str.length() == 16 && str.charAt(15) == 'Z') {
                long parseDateTimeString = parseDateTimeString(str.substring(0, 15));
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                long j10 = parseDateTimeString + gregorianCalendar.get(15);
                gregorianCalendar.setTime(new Date(j10));
                return j10 + gregorianCalendar.get(16);
            } else {
                return parseDateTimeString(str);
            }
        }
        throw new ParseException(str, 0);
    }

    private static long parseDateTimeString(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH).parse(str).getTime();
    }

    private static long parseDurationMS(CharSequence charSequence) {
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = RFC2445_DURATION.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        long j10 = 0;
        int i9 = 0;
        while (true) {
            long[] jArr = RFC2445_DURATION_FIELD_UNITS;
            if (i9 >= jArr.length) {
                return j10;
            }
            int i10 = i9 + 1;
            String group = matcher.group(i10);
            if (group != null) {
                j10 += jArr[i9] * Integer.parseInt(group);
            }
            i9 = i10;
        }
    }

    public String[] getAttendees() {
        return this.attendees;
    }

    public String getDescription() {
        return this.description;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb2 = new StringBuilder(100);
        ParsedResult.maybeAppend(this.summary, sb2);
        ParsedResult.maybeAppend(format(this.startAllDay, this.start), sb2);
        ParsedResult.maybeAppend(format(this.endAllDay, this.end), sb2);
        ParsedResult.maybeAppend(this.location, sb2);
        ParsedResult.maybeAppend(this.organizer, sb2);
        ParsedResult.maybeAppend(this.attendees, sb2);
        ParsedResult.maybeAppend(this.description, sb2);
        return sb2.toString();
    }

    @Deprecated
    public Date getEnd() {
        if (this.end < 0) {
            return null;
        }
        return new Date(this.end);
    }

    public long getEndTimestamp() {
        return this.end;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public String getLocation() {
        return this.location;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getOrganizer() {
        return this.organizer;
    }

    @Deprecated
    public Date getStart() {
        return new Date(this.start);
    }

    public long getStartTimestamp() {
        return this.start;
    }

    public String getSummary() {
        return this.summary;
    }

    public boolean isEndAllDay() {
        return this.endAllDay;
    }

    public boolean isStartAllDay() {
        return this.startAllDay;
    }
}
