package com.tencent.liteav.beauty.a;

import android.graphics.SurfaceTexture;
/* loaded from: classes4.dex */
public final class a implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: a  reason: collision with root package name */
    public Thread f31047a;

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f31048b;

    /* renamed from: c  reason: collision with root package name */
    public InterfaceC0319a f31049c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f31050d;

    /* renamed from: com.tencent.liteav.beauty.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0319a {
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f31050d = true;
    }
}
