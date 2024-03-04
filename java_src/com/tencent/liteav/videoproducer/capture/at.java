package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.al;
/* loaded from: classes4.dex */
final /* synthetic */ class at implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final al.AnonymousClass1 f32599a;

    private at(al.AnonymousClass1 anonymousClass1) {
        this.f32599a = anonymousClass1;
    }

    public static Runnable a(al.AnonymousClass1 anonymousClass1) {
        return new at(anonymousClass1);
    }

    @Override // java.lang.Runnable
    public final void run() {
        al.this.f32577n.a();
    }
}
