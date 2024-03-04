package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32459a;

    /* renamed from: b  reason: collision with root package name */
    private final b f32460b;

    /* renamed from: c  reason: collision with root package name */
    private final ByteBuffer f32461c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32462d;

    /* renamed from: e  reason: collision with root package name */
    private final int f32463e;

    /* renamed from: f  reason: collision with root package name */
    private final TakeSnapshotListener f32464f;

    private v(p pVar, b bVar, ByteBuffer byteBuffer, int i9, int i10, TakeSnapshotListener takeSnapshotListener) {
        this.f32459a = pVar;
        this.f32460b = bVar;
        this.f32461c = byteBuffer;
        this.f32462d = i9;
        this.f32463e = i10;
        this.f32464f = takeSnapshotListener;
    }

    public static Runnable a(p pVar, b bVar, ByteBuffer byteBuffer, int i9, int i10, TakeSnapshotListener takeSnapshotListener) {
        return new v(pVar, bVar, byteBuffer, i9, i10, takeSnapshotListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32459a, this.f32460b, this.f32461c, this.f32462d, this.f32463e, this.f32464f);
    }
}
