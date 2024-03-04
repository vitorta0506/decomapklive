package com.tencent.liteav.videoproducer.encoder;

import android.view.Surface;
import com.tencent.liteav.videoproducer.encoder.be;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32793a;

    /* renamed from: b  reason: collision with root package name */
    private final be.a f32794b;

    /* renamed from: c  reason: collision with root package name */
    private final Surface[] f32795c;

    /* renamed from: d  reason: collision with root package name */
    private final VideoEncodeParams f32796d;

    private ab(w wVar, be.a aVar, Surface[] surfaceArr, VideoEncodeParams videoEncodeParams) {
        this.f32793a = wVar;
        this.f32794b = aVar;
        this.f32795c = surfaceArr;
        this.f32796d = videoEncodeParams;
    }

    public static Runnable a(w wVar, be.a aVar, Surface[] surfaceArr, VideoEncodeParams videoEncodeParams) {
        return new ab(wVar, aVar, surfaceArr, videoEncodeParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = this.f32793a;
        be.a aVar = this.f32794b;
        Surface[] surfaceArr = this.f32795c;
        VideoEncodeParams videoEncodeParams = this.f32796d;
        wVar.f32981e = aVar;
        surfaceArr[0] = wVar.a(videoEncodeParams);
    }
}
