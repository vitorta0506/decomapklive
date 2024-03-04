package com.tencent.liteav.base.b;

import android.os.SystemClock;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public long f30882a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final long f30883b;

    public a(long j10) {
        this.f30883b = j10;
    }

    public final boolean a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = this.f30882a;
        if (j10 == 0 || elapsedRealtime - j10 > this.f30883b) {
            this.f30882a = SystemClock.elapsedRealtime();
            return true;
        }
        return false;
    }
}
