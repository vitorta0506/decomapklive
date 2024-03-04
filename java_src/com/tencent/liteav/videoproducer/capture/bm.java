package com.tencent.liteav.videoproducer.capture;

import android.media.projection.MediaProjection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bi f32700a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaProjection f32701b;

    private bm(bi biVar, MediaProjection mediaProjection) {
        this.f32700a = biVar;
        this.f32701b = mediaProjection;
    }

    public static Runnable a(bi biVar, MediaProjection mediaProjection) {
        return new bm(biVar, mediaProjection);
    }

    @Override // java.lang.Runnable
    public final void run() {
        bi.a(this.f32700a, this.f32701b);
    }
}
