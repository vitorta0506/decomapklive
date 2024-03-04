package com.tencent.liteav.videoconsumer.renderer;

import android.view.TextureView;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes4.dex */
final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final i f32408a;

    /* renamed from: b  reason: collision with root package name */
    private final TXCloudVideoView f32409b;

    /* renamed from: c  reason: collision with root package name */
    private final TextureView f32410c;

    private j(i iVar, TXCloudVideoView tXCloudVideoView, TextureView textureView) {
        this.f32408a = iVar;
        this.f32409b = tXCloudVideoView;
        this.f32410c = textureView;
    }

    public static Runnable a(i iVar, TXCloudVideoView tXCloudVideoView, TextureView textureView) {
        return new j(iVar, tXCloudVideoView, textureView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f32408a;
        TXCloudVideoView tXCloudVideoView = this.f32409b;
        TextureView textureView = this.f32410c;
        com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView, "addViewInternal", new Class[]{TextureView.class}, textureView);
        iVar.a(textureView);
    }
}
