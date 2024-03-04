package de;

import androidx.annotation.NonNull;
import com.snapchat.kit.sdk.core.metrics.model.CounterMetric;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import com.snapchat.kit.sdk.core.metrics.model.TimerMetric;
import com.snapchat.kit.sdk.core.metrics.model.Timestamp;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f38043a = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private static final int f38044b = (int) TimeUnit.MILLISECONDS.toNanos(1);

    private static Timestamp a() {
        long currentTimeMillis = System.currentTimeMillis();
        Timestamp.Builder builder = new Timestamp.Builder();
        long j10 = f38043a;
        return builder.seconds(Long.valueOf(currentTimeMillis / j10)).nanos(Integer.valueOf(((int) (currentTimeMillis % j10)) * f38044b)).build();
    }

    @NonNull
    public static OpMetric b(String str, long j10) {
        return new OpMetric.Builder().counter_metric(new CounterMetric.Builder().name(str).count(Long.valueOf(j10)).timestamp(a()).build()).build();
    }

    @NonNull
    public static OpMetric c(String str, long j10) {
        return new OpMetric.Builder().timer_metric(new TimerMetric.Builder().name(str).latency_millis(Long.valueOf(j10)).timestamp(a()).build()).build();
    }
}
