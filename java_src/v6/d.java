package v6;

import com.google.common.math.e;
import com.google.protobuf.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.threeten.bp.Year;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final Timestamp f59042a = Timestamp.newBuilder().k0(-62135596800L).j0(0).build();

    /* renamed from: b  reason: collision with root package name */
    public static final Timestamp f59043b = Timestamp.newBuilder().k0(253402300799L).j0(Year.MAX_VALUE).build();

    /* renamed from: c  reason: collision with root package name */
    public static final Timestamp f59044c = Timestamp.newBuilder().k0(0).j0(0).build();

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<SimpleDateFormat> f59045d = new a();

    /* loaded from: classes3.dex */
    static class a extends ThreadLocal<SimpleDateFormat> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return d.a();
        }
    }

    static /* synthetic */ SimpleDateFormat a() {
        return c();
    }

    public static Timestamp b(Timestamp timestamp) {
        long seconds = timestamp.getSeconds();
        int nanos = timestamp.getNanos();
        if (f(seconds, nanos)) {
            return timestamp;
        }
        throw new IllegalArgumentException(String.format("Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999].", Long.valueOf(seconds), Integer.valueOf(nanos)));
    }

    private static SimpleDateFormat c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("UTC"));
        gregorianCalendar.setGregorianChange(new Date(Long.MIN_VALUE));
        simpleDateFormat.setCalendar(gregorianCalendar);
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(int i9) {
        long j10 = i9;
        return j10 % 1000000 == 0 ? String.format(Locale.ENGLISH, "%1$03d", Long.valueOf(j10 / 1000000)) : j10 % 1000 == 0 ? String.format(Locale.ENGLISH, "%1$06d", Long.valueOf(j10 / 1000)) : String.format(Locale.ENGLISH, "%1$09d", Integer.valueOf(i9));
    }

    public static Timestamp e(long j10) {
        return g(j10 / 1000000000, (int) (j10 % 1000000000));
    }

    public static boolean f(long j10, int i9) {
        return j10 >= -62135596800L && j10 <= 253402300799L && i9 >= 0 && ((long) i9) < 1000000000;
    }

    static Timestamp g(long j10, int i9) {
        long j11 = i9;
        if (j11 <= -1000000000 || j11 >= 1000000000) {
            j10 = e.a(j10, j11 / 1000000000);
            i9 = (int) (j11 % 1000000000);
        }
        if (i9 < 0) {
            i9 = (int) (i9 + 1000000000);
            j10 = e.c(j10, 1L);
        }
        return b(Timestamp.newBuilder().k0(j10).j0(i9).build());
    }

    public static String h(Timestamp timestamp) {
        b(timestamp);
        long seconds = timestamp.getSeconds();
        int nanos = timestamp.getNanos();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f59045d.get().format(new Date(seconds * 1000)));
        if (nanos != 0) {
            sb2.append(".");
            sb2.append(d(nanos));
        }
        sb2.append("Z");
        return sb2.toString();
    }
}
