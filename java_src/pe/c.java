package pe;

import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final TimeZone f56801a;

    public c(TimeZone timeZone) {
        this.f56801a = timeZone;
    }

    public final long a(Date date) {
        Calendar calendar = Calendar.getInstance(this.f56801a);
        calendar.setTime(date);
        return calendar.get(5);
    }

    public final long b(Date date) {
        Calendar calendar = Calendar.getInstance(this.f56801a);
        calendar.setTime(date);
        return calendar.get(2) + 1;
    }

    public final long c(Date date) {
        Calendar calendar = Calendar.getInstance(this.f56801a);
        calendar.setTime(date);
        return calendar.get(1);
    }
}
