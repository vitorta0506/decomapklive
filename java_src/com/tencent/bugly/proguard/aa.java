package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* loaded from: classes4.dex */
public final class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f30437a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30438b;

    /* renamed from: c  reason: collision with root package name */
    private long f30439c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30440d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f30441e = true;

    /* renamed from: f  reason: collision with root package name */
    private long f30442f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(Handler handler, String str, long j10) {
        this.f30437a = handler;
        this.f30438b = str;
        this.f30439c = j10;
        this.f30440d = j10;
    }

    public final void a() {
        if (this.f30441e) {
            this.f30441e = false;
            this.f30442f = SystemClock.uptimeMillis();
            this.f30437a.post(this);
        }
    }

    public final boolean b() {
        return !this.f30441e && SystemClock.uptimeMillis() > this.f30442f + this.f30439c;
    }

    public final int c() {
        if (this.f30441e) {
            return 0;
        }
        return SystemClock.uptimeMillis() - this.f30442f < this.f30439c ? 1 : 3;
    }

    public final String d() {
        return this.f30438b;
    }

    public final Looper e() {
        return this.f30437a.getLooper();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30441e = true;
        this.f30439c = this.f30440d;
    }

    public final void a(long j10) {
        this.f30439c = Long.MAX_VALUE;
    }
}
