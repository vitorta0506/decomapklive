package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaFormat;
/* loaded from: classes4.dex */
final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final o f32952a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaFormat f32953b;

    private r(o oVar, MediaFormat mediaFormat) {
        this.f32952a = oVar;
        this.f32953b = mediaFormat;
    }

    public static Runnable a(o oVar, MediaFormat mediaFormat) {
        return new r(oVar, mediaFormat);
    }

    @Override // java.lang.Runnable
    public final void run() {
        o.a(this.f32952a, this.f32953b);
    }
}
