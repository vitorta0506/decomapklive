package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final i f32413a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32414b;

    private l(i iVar, boolean z10) {
        this.f32413a = iVar;
        this.f32414b = z10;
    }

    public static Runnable a(i iVar, boolean z10) {
        return new l(iVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f32413a;
        boolean z10 = this.f32414b;
        String str = iVar.f32397a;
        LiteavLog.i(str, "release,mTextureView=" + iVar.f32401e);
        if (iVar.f32401e != null) {
            iVar.a();
            if (iVar.f32401e.getSurfaceTextureListener() == iVar.f32404h) {
                iVar.f32401e.setSurfaceTextureListener(null);
            }
            SurfaceTexture surfaceTexture = iVar.f32402f;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                iVar.f32402f = null;
            }
            if (iVar.f32400d != null) {
                String str2 = iVar.f32397a;
                LiteavLog.i(str2, "clearLastImage=" + z10 + ",mHasFirstFrameRendered=" + iVar.f32403g);
                boolean z11 = z10 | (iVar.f32403g ^ true);
                com.tencent.liteav.videobase.videobase.g.a(iVar.f32400d, "removeViewInternal", new Class[]{TextureView.class, Boolean.TYPE}, iVar.f32401e, Boolean.valueOf(z11));
            }
            iVar.f32401e = null;
        }
    }
}
