package com.tencent.ugc;

import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35053a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35054b;

    /* renamed from: c  reason: collision with root package name */
    private final long f35055c;

    /* renamed from: d  reason: collision with root package name */
    private final long f35056d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f35057e;

    private t(TXVideoEditer tXVideoEditer, int i9, long j10, long j11, AtomicBoolean atomicBoolean) {
        this.f35053a = tXVideoEditer;
        this.f35054b = i9;
        this.f35055c = j10;
        this.f35056d = j11;
        this.f35057e = atomicBoolean;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, long j10, long j11, AtomicBoolean atomicBoolean) {
        return new t(tXVideoEditer, i9, j10, j11, atomicBoolean);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setTransitionEffect$26(this.f35053a, this.f35054b, this.f35055c, this.f35056d, this.f35057e);
    }
}
