package com.tencent.liteav.videoproducer.capture;

import android.view.Surface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bi f32698a;

    /* renamed from: b  reason: collision with root package name */
    private final Surface f32699b;

    private bl(bi biVar, Surface surface) {
        this.f32698a = biVar;
        this.f32699b = surface;
    }

    public static Runnable a(bi biVar, Surface surface) {
        return new bl(biVar, surface);
    }

    @Override // java.lang.Runnable
    public final void run() {
        bi.a(this.f32698a, this.f32699b);
    }
}
