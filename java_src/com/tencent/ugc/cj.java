package com.tencent.ugc;

import com.tencent.ugc.TXVideoJoiner;
/* loaded from: classes4.dex */
final /* synthetic */ class cj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner.AnonymousClass3 f34818a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34819b;

    private cj(TXVideoJoiner.AnonymousClass3 anonymousClass3, float f10) {
        this.f34818a = anonymousClass3;
        this.f34819b = f10;
    }

    public static Runnable a(TXVideoJoiner.AnonymousClass3 anonymousClass3, float f10) {
        return new cj(anonymousClass3, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.this.notifyJoinProgress(this.f34819b);
    }
}
