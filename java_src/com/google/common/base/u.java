package com.google.common.base;

import com.meizu.cloud.pushsdk.notification.model.NotificationStyle;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final z f12401a = z.b();

    /* renamed from: b  reason: collision with root package name */
    private boolean f12402b;

    /* renamed from: c  reason: collision with root package name */
    private long f12403c;

    /* renamed from: d  reason: collision with root package name */
    private long f12404d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12405a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f12405a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12405a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12405a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12405a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12405a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12405a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12405a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    u() {
    }

    private static String a(TimeUnit timeUnit) {
        switch (a.f12405a[timeUnit.ordinal()]) {
            case 1:
                return NotificationStyle.NOTIFICATION_STYLE;
            case 2:
                return "μs";
            case 3:
                return "ms";
            case 4:
                return NotifyType.SOUND;
            case 5:
                return "min";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }

    private static TimeUnit b(long j10) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j10, timeUnit2) > 0) {
            return timeUnit;
        }
        TimeUnit timeUnit3 = TimeUnit.HOURS;
        if (timeUnit3.convert(j10, timeUnit2) > 0) {
            return timeUnit3;
        }
        TimeUnit timeUnit4 = TimeUnit.MINUTES;
        if (timeUnit4.convert(j10, timeUnit2) > 0) {
            return timeUnit4;
        }
        TimeUnit timeUnit5 = TimeUnit.SECONDS;
        if (timeUnit5.convert(j10, timeUnit2) > 0) {
            return timeUnit5;
        }
        TimeUnit timeUnit6 = TimeUnit.MILLISECONDS;
        if (timeUnit6.convert(j10, timeUnit2) > 0) {
            return timeUnit6;
        }
        TimeUnit timeUnit7 = TimeUnit.MICROSECONDS;
        return timeUnit7.convert(j10, timeUnit2) > 0 ? timeUnit7 : timeUnit2;
    }

    public static u c() {
        return new u();
    }

    private long e() {
        return this.f12402b ? (this.f12401a.a() - this.f12404d) + this.f12403c : this.f12403c;
    }

    public long d(TimeUnit timeUnit) {
        return timeUnit.convert(e(), TimeUnit.NANOSECONDS);
    }

    public u f() {
        this.f12403c = 0L;
        this.f12402b = false;
        return this;
    }

    public u g() {
        o.A(!this.f12402b, "This stopwatch is already running.");
        this.f12402b = true;
        this.f12404d = this.f12401a.a();
        return this;
    }

    public String toString() {
        long e10 = e();
        TimeUnit b10 = b(e10);
        String b11 = n.b(e10 / TimeUnit.NANOSECONDS.convert(1L, b10));
        String a10 = a(b10);
        StringBuilder sb2 = new StringBuilder(String.valueOf(b11).length() + 1 + String.valueOf(a10).length());
        sb2.append(b11);
        sb2.append(" ");
        sb2.append(a10);
        return sb2.toString();
    }
}
