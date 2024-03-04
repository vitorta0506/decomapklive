package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videobase.utils.Rotation;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32066a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f32067b;

    private e(a aVar, Rotation rotation) {
        this.f32066a = aVar;
        this.f32067b = rotation;
    }

    public static Runnable a(a aVar, Rotation rotation) {
        return new e(aVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32066a.f32049p = this.f32067b;
    }
}
