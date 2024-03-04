package com.tencent.liteav.videobase.utils;

import android.os.SystemClock;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final String f31889a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31890b;

    /* renamed from: d  reason: collision with root package name */
    private long f31892d;

    /* renamed from: e  reason: collision with root package name */
    private long f31893e;

    /* renamed from: f  reason: collision with root package name */
    private long f31894f;

    /* renamed from: g  reason: collision with root package name */
    private final a f31895g;

    /* renamed from: c  reason: collision with root package name */
    private final com.tencent.liteav.base.b.a f31891c = new com.tencent.liteav.base.b.a(20000);

    /* renamed from: h  reason: collision with root package name */
    private double f31896h = 0.0d;

    /* loaded from: classes4.dex */
    public interface a {
        void a(double d10);
    }

    public f(String str, int i9, a aVar) {
        this.f31889a = str + "(" + hashCode() + ")";
        this.f31890b = (int) Math.max((long) i9, TimeUnit.SECONDS.toMillis(1L));
        b();
        this.f31895g = aVar;
    }

    public final void a() {
        this.f31892d++;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = this.f31894f;
        if (j10 == 0) {
            this.f31894f = SystemClock.elapsedRealtime();
        } else if (elapsedRealtime - j10 >= this.f31890b) {
            this.f31896h = (((float) (this.f31892d - this.f31893e)) * 1000.0f) / ((float) (elapsedRealtime - j10));
            LiteavLog.i(this.f31891c, "FpsCalculate", "meter name:" + this.f31889a + " fps:" + this.f31896h, new Object[0]);
            this.f31894f = elapsedRealtime;
            this.f31893e = this.f31892d;
            a aVar = this.f31895g;
            if (aVar != null) {
                aVar.a(this.f31896h);
            }
        }
    }

    public final void b() {
        this.f31892d = 0L;
        this.f31893e = 0L;
        this.f31894f = 0L;
    }
}
