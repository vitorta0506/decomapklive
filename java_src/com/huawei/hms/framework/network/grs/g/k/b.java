package com.huawei.hms.framework.network.grs.g.k;

import android.os.SystemClock;
import java.util.concurrent.Future;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Future<com.huawei.hms.framework.network.grs.g.d> f27412a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27413b = SystemClock.elapsedRealtime();

    public b(Future<com.huawei.hms.framework.network.grs.g.d> future) {
        this.f27412a = future;
    }

    public Future<com.huawei.hms.framework.network.grs.g.d> a() {
        return this.f27412a;
    }

    public boolean b() {
        return SystemClock.elapsedRealtime() - this.f27413b <= 300000;
    }
}
