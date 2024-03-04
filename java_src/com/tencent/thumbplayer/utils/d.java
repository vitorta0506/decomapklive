package com.tencent.thumbplayer.utils;

import android.os.SystemClock;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private long f34457a;

    /* renamed from: b  reason: collision with root package name */
    private long f34458b;

    public void a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f34457a = elapsedRealtime;
        this.f34458b = elapsedRealtime;
    }

    public void b() {
        this.f34458b = SystemClock.elapsedRealtime();
    }

    public long c() {
        return SystemClock.elapsedRealtime() - this.f34458b;
    }

    public long d() {
        return SystemClock.elapsedRealtime() - this.f34457a;
    }

    public long e() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = elapsedRealtime - this.f34458b;
        this.f34458b = elapsedRealtime;
        return j10;
    }
}
