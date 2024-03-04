package com.tencent.liteav.videoconsumer.renderer;

import android.view.TextureView;
/* loaded from: classes4.dex */
final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final i f32411a;

    /* renamed from: b  reason: collision with root package name */
    private final TextureView f32412b;

    private k(i iVar, TextureView textureView) {
        this.f32411a = iVar;
        this.f32412b = textureView;
    }

    public static Runnable a(i iVar, TextureView textureView) {
        return new k(iVar, textureView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32411a.a(this.f32412b);
    }
}
