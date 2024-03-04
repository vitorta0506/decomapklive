package com.google.android.exoplayer2;

import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public final class p2 {

    /* renamed from: a  reason: collision with root package name */
    private final b f6391a;

    /* renamed from: b  reason: collision with root package name */
    private final a f6392b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f6393c;

    /* renamed from: d  reason: collision with root package name */
    private final i3 f6394d;

    /* renamed from: e  reason: collision with root package name */
    private int f6395e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Object f6396f;

    /* renamed from: g  reason: collision with root package name */
    private Looper f6397g;

    /* renamed from: h  reason: collision with root package name */
    private int f6398h;

    /* renamed from: i  reason: collision with root package name */
    private long f6399i = -9223372036854775807L;

    /* renamed from: j  reason: collision with root package name */
    private boolean f6400j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f6401k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f6402l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f6403m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f6404n;

    /* loaded from: classes.dex */
    public interface a {
        void e(p2 p2Var);
    }

    /* loaded from: classes.dex */
    public interface b {
        void k(int i9, @Nullable Object obj) throws ExoPlaybackException;
    }

    public p2(a aVar, b bVar, i3 i3Var, int i9, com.google.android.exoplayer2.util.d dVar, Looper looper) {
        this.f6392b = aVar;
        this.f6391a = bVar;
        this.f6394d = i3Var;
        this.f6397g = looper;
        this.f6393c = dVar;
        this.f6398h = i9;
    }

    public synchronized boolean a(long j10) throws InterruptedException, TimeoutException {
        boolean z10;
        com.google.android.exoplayer2.util.a.f(this.f6401k);
        com.google.android.exoplayer2.util.a.f(this.f6397g.getThread() != Thread.currentThread());
        long b10 = this.f6393c.b() + j10;
        while (true) {
            z10 = this.f6403m;
            if (z10 || j10 <= 0) {
                break;
            }
            this.f6393c.e();
            wait(j10);
            j10 = b10 - this.f6393c.b();
        }
        if (!z10) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.f6402l;
    }

    public boolean b() {
        return this.f6400j;
    }

    public Looper c() {
        return this.f6397g;
    }

    public int d() {
        return this.f6398h;
    }

    @Nullable
    public Object e() {
        return this.f6396f;
    }

    public long f() {
        return this.f6399i;
    }

    public b g() {
        return this.f6391a;
    }

    public i3 h() {
        return this.f6394d;
    }

    public int i() {
        return this.f6395e;
    }

    public synchronized boolean j() {
        return this.f6404n;
    }

    public synchronized void k(boolean z10) {
        this.f6402l = z10 | this.f6402l;
        this.f6403m = true;
        notifyAll();
    }

    public p2 l() {
        com.google.android.exoplayer2.util.a.f(!this.f6401k);
        if (this.f6399i == -9223372036854775807L) {
            com.google.android.exoplayer2.util.a.a(this.f6400j);
        }
        this.f6401k = true;
        this.f6392b.e(this);
        return this;
    }

    public p2 m(@Nullable Object obj) {
        com.google.android.exoplayer2.util.a.f(!this.f6401k);
        this.f6396f = obj;
        return this;
    }

    public p2 n(int i9) {
        com.google.android.exoplayer2.util.a.f(!this.f6401k);
        this.f6395e = i9;
        return this;
    }
}
