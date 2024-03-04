package o5;

import com.google.common.util.concurrent.g0;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class g<ResponseT> implements f<ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final e<ResponseT> f55520a;

    /* renamed from: b  reason: collision with root package name */
    private final g0 f55521b;

    public g(e<ResponseT> eVar, ScheduledExecutorService scheduledExecutorService) {
        this.f55520a = eVar;
        this.f55521b = h0.b(scheduledExecutorService);
    }
}
