package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.k2;
/* loaded from: classes2.dex */
public final class e0 implements t {

    /* renamed from: a  reason: collision with root package name */
    private final d f6954a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6955b;

    /* renamed from: c  reason: collision with root package name */
    private long f6956c;

    /* renamed from: d  reason: collision with root package name */
    private long f6957d;

    /* renamed from: e  reason: collision with root package name */
    private k2 f6958e = k2.f6152d;

    public e0(d dVar) {
        this.f6954a = dVar;
    }

    public void a(long j10) {
        this.f6956c = j10;
        if (this.f6955b) {
            this.f6957d = this.f6954a.b();
        }
    }

    @Override // com.google.android.exoplayer2.util.t
    public k2 b() {
        return this.f6958e;
    }

    public void c() {
        if (this.f6955b) {
            return;
        }
        this.f6957d = this.f6954a.b();
        this.f6955b = true;
    }

    @Override // com.google.android.exoplayer2.util.t
    public void d(k2 k2Var) {
        if (this.f6955b) {
            a(p());
        }
        this.f6958e = k2Var;
    }

    public void e() {
        if (this.f6955b) {
            a(p());
            this.f6955b = false;
        }
    }

    @Override // com.google.android.exoplayer2.util.t
    public long p() {
        long b10;
        long j10 = this.f6956c;
        if (this.f6955b) {
            long b11 = this.f6954a.b() - this.f6957d;
            k2 k2Var = this.f6958e;
            if (k2Var.f6154a == 1.0f) {
                b10 = l0.w0(b11);
            } else {
                b10 = k2Var.b(b11);
            }
            return j10 + b10;
        }
        return j10;
    }
}
