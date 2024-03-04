package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class x1 extends x2 {

    /* renamed from: b  reason: collision with root package name */
    private final Map f9949b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f9950c;

    /* renamed from: d  reason: collision with root package name */
    private long f9951d;

    public x1(n4 n4Var) {
        super(n4Var);
        this.f9950c = new ArrayMap();
        this.f9949b = new ArrayMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i(x1 x1Var, String str, long j10) {
        x1Var.h();
        com.google.android.gms.common.internal.p.f(str);
        if (x1Var.f9950c.isEmpty()) {
            x1Var.f9951d = j10;
        }
        Integer num = (Integer) x1Var.f9950c.get(str);
        if (num != null) {
            x1Var.f9950c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (x1Var.f9950c.size() >= 100) {
            x1Var.f9432a.b().w().a("Too many ads visible");
        } else {
            x1Var.f9950c.put(str, 1);
            x1Var.f9949b.put(str, Long.valueOf(j10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void j(x1 x1Var, String str, long j10) {
        x1Var.h();
        com.google.android.gms.common.internal.p.f(str);
        Integer num = (Integer) x1Var.f9950c.get(str);
        if (num != null) {
            r6 s10 = x1Var.f9432a.K().s(false);
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                x1Var.f9950c.remove(str);
                Long l10 = (Long) x1Var.f9949b.get(str);
                if (l10 == null) {
                    x1Var.f9432a.b().r().a("First ad unit exposure time was never set");
                } else {
                    long longValue = l10.longValue();
                    x1Var.f9949b.remove(str);
                    x1Var.p(str, j10 - longValue, s10);
                }
                if (x1Var.f9950c.isEmpty()) {
                    long j11 = x1Var.f9951d;
                    if (j11 == 0) {
                        x1Var.f9432a.b().r().a("First ad exposure time was never set");
                        return;
                    }
                    x1Var.o(j10 - j11, s10);
                    x1Var.f9951d = 0L;
                    return;
                }
                return;
            }
            x1Var.f9950c.put(str, Integer.valueOf(intValue));
            return;
        }
        x1Var.f9432a.b().r().b("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    @WorkerThread
    private final void o(long j10, r6 r6Var) {
        if (r6Var == null) {
            this.f9432a.b().v().a("Not logging ad exposure. No active activity");
        } else if (j10 < 1000) {
            this.f9432a.b().v().b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j10);
            k9.y(r6Var, bundle, true);
            this.f9432a.I().u("am", "_xa", bundle);
        }
    }

    @WorkerThread
    private final void p(String str, long j10, r6 r6Var) {
        if (r6Var == null) {
            this.f9432a.b().v().a("Not logging ad unit exposure. No active activity");
        } else if (j10 < 1000) {
            this.f9432a.b().v().b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j10);
            k9.y(r6Var, bundle, true);
            this.f9432a.I().u("am", "_xu", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void q(long j10) {
        for (String str : this.f9949b.keySet()) {
            this.f9949b.put(str, Long.valueOf(j10));
        }
        if (this.f9949b.isEmpty()) {
            return;
        }
        this.f9951d = j10;
    }

    public final void l(String str, long j10) {
        if (str != null && str.length() != 0) {
            this.f9432a.a().z(new a(this, str, j10));
        } else {
            this.f9432a.b().r().a("Ad unit id must be a non-empty string");
        }
    }

    public final void m(String str, long j10) {
        if (str != null && str.length() != 0) {
            this.f9432a.a().z(new v(this, str, j10));
        } else {
            this.f9432a.b().r().a("Ad unit id must be a non-empty string");
        }
    }

    @WorkerThread
    public final void n(long j10) {
        r6 s10 = this.f9432a.K().s(false);
        for (String str : this.f9949b.keySet()) {
            p(str, j10 - ((Long) this.f9949b.get(str)).longValue(), s10);
        }
        if (!this.f9949b.isEmpty()) {
            o(j10 - this.f9951d, s10);
        }
        q(j10);
    }
}
