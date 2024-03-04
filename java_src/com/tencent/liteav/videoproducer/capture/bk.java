package com.tencent.liteav.videoproducer.capture;

import android.media.projection.MediaProjection;
import android.view.Surface;
import com.tencent.liteav.videoproducer.capture.bi;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bi f32692a;

    /* renamed from: b  reason: collision with root package name */
    private final Surface f32693b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32694c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32695d;

    /* renamed from: e  reason: collision with root package name */
    private final MediaProjection f32696e;

    /* renamed from: f  reason: collision with root package name */
    private final bi.b f32697f;

    private bk(bi biVar, Surface surface, int i9, int i10, MediaProjection mediaProjection, bi.b bVar) {
        this.f32692a = biVar;
        this.f32693b = surface;
        this.f32694c = i9;
        this.f32695d = i10;
        this.f32696e = mediaProjection;
        this.f32697f = bVar;
    }

    public static Runnable a(bi biVar, Surface surface, int i9, int i10, MediaProjection mediaProjection, bi.b bVar) {
        return new bk(biVar, surface, i9, i10, mediaProjection, bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        bi.a(this.f32692a, this.f32693b, this.f32694c, this.f32695d, this.f32696e, this.f32697f);
    }
}
