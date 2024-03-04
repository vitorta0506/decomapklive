package qe;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f57244a = TimeZone.getTimeZone("GMT");

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<DateFormat> f57245b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f57246c;

    /* renamed from: d  reason: collision with root package name */
    private static final DateFormat[] f57247d;

    /* loaded from: classes4.dex */
    static class a extends ThreadLocal<DateFormat> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(f.f57244a);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f57246c = strArr;
        f57247d = new DateFormat[strArr.length];
    }

    public static Date b(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f57245b.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        String[] strArr = f57246c;
        synchronized (strArr) {
            int length = strArr.length;
            for (int i9 = 0; i9 < length; i9++) {
                DateFormat[] dateFormatArr = f57247d;
                DateFormat dateFormat = dateFormatArr[i9];
                if (dateFormat == null) {
                    dateFormat = new SimpleDateFormat(f57246c[i9], Locale.US);
                    dateFormat.setTimeZone(f57244a);
                    dateFormatArr[i9] = dateFormat;
                }
                parsePosition.setIndex(0);
                Date parse2 = dateFormat.parse(str, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return parse2;
                }
            }
            return null;
        }
    }
}
