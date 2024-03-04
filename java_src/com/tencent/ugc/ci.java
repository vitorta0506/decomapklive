package com.tencent.ugc;

import com.tencent.ugc.TXVideoJoiner;
/* loaded from: classes4.dex */
final /* synthetic */ class ci implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner.AnonymousClass1 f34817a;

    private ci(TXVideoJoiner.AnonymousClass1 anonymousClass1) {
        this.f34817a = anonymousClass1;
    }

    public static Runnable a(TXVideoJoiner.AnonymousClass1 anonymousClass1) {
        return new ci(anonymousClass1);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.this.stopPlayInternal();
    }
}
