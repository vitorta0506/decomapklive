package v6;

import com.google.common.math.e;
import com.google.protobuf.Duration;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.Comparator;
import org.threeten.bp.Year;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Duration f59007a = Duration.newBuilder().k0(-315576000000L).j0(Year.MIN_VALUE).build();

    /* renamed from: b  reason: collision with root package name */
    public static final Duration f59008b = Duration.newBuilder().k0(315576000000L).j0(Year.MAX_VALUE).build();

    /* renamed from: c  reason: collision with root package name */
    public static final Duration f59009c = Duration.newBuilder().k0(0).j0(0).build();

    /* renamed from: v6.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private enum EnumC0663a implements Comparator<Duration> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Duration duration, Duration duration2) {
            a.a(duration);
            a.a(duration2);
            int compare = Long.compare(duration.getSeconds(), duration2.getSeconds());
            return compare != 0 ? compare : Integer.compare(duration.getNanos(), duration2.getNanos());
        }
    }

    public static Duration a(Duration duration) {
        long seconds = duration.getSeconds();
        int nanos = duration.getNanos();
        if (e(seconds, nanos)) {
            return duration;
        }
        throw new IllegalArgumentException(String.format("Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds", Long.valueOf(seconds), Integer.valueOf(nanos)));
    }

    public static int b(Duration duration, Duration duration2) {
        return EnumC0663a.INSTANCE.compare(duration, duration2);
    }

    public static Duration c(long j10) {
        return f(j10 / 1000, (int) ((j10 % 1000) * 1000000));
    }

    public static Duration d(long j10) {
        return f(j10 / 1000000000, (int) (j10 % 1000000000));
    }

    public static boolean e(long j10, int i9) {
        if (j10 >= -315576000000L && j10 <= 315576000000L) {
            long j11 = i9;
            if (j11 >= -999999999 && j11 < 1000000000) {
                int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                if (i10 >= 0 && i9 >= 0) {
                    return true;
                }
                if (i10 <= 0 && i9 <= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    static Duration f(long j10, int i9) {
        long j11 = i9;
        if (j11 <= -1000000000 || j11 >= 1000000000) {
            j10 = e.a(j10, j11 / 1000000000);
            i9 = (int) (j11 % 1000000000);
        }
        if (j10 > 0 && i9 < 0) {
            i9 = (int) (i9 + 1000000000);
            j10--;
        }
        if (j10 < 0 && i9 > 0) {
            i9 = (int) (i9 - 1000000000);
            j10++;
        }
        return a(Duration.newBuilder().k0(j10).j0(i9).build());
    }

    public static long g(Duration duration) {
        a(duration);
        return e.a(e.b(duration.getSeconds(), 1000L), duration.getNanos() / 1000000);
    }

    public static long h(Duration duration) {
        a(duration);
        return e.a(e.b(duration.getSeconds(), 1000000000L), duration.getNanos());
    }

    public static String i(Duration duration) {
        a(duration);
        long seconds = duration.getSeconds();
        int nanos = duration.getNanos();
        StringBuilder sb2 = new StringBuilder();
        if (seconds < 0 || nanos < 0) {
            sb2.append("-");
            seconds = -seconds;
            nanos = -nanos;
        }
        sb2.append(seconds);
        if (nanos != 0) {
            sb2.append(".");
            sb2.append(d.d(nanos));
        }
        sb2.append(NotifyType.SOUND);
        return sb2.toString();
    }
}
