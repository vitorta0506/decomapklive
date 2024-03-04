package a2;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
public final class s1 {

    /* renamed from: b  reason: collision with root package name */
    public static final s1 f548b;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f549a;

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f550b = new a(LogSessionId.LOG_SESSION_ID_NONE);

        /* renamed from: a  reason: collision with root package name */
        public final LogSessionId f551a;

        public a(LogSessionId logSessionId) {
            this.f551a = logSessionId;
        }
    }

    static {
        f548b = com.google.android.exoplayer2.util.l0.f6985a < 31 ? new s1() : new s1(a.f550b);
    }

    public s1() {
        this((a) null);
        com.google.android.exoplayer2.util.a.f(com.google.android.exoplayer2.util.l0.f6985a < 31);
    }

    @RequiresApi(31)
    public LogSessionId a() {
        return ((a) com.google.android.exoplayer2.util.a.e(this.f549a)).f551a;
    }

    @RequiresApi(31)
    public s1(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    private s1(@Nullable a aVar) {
        this.f549a = aVar;
    }
}
