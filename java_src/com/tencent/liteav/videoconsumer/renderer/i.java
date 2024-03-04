package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.view.Surface;
import android.view.TextureView;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.b;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes4.dex */
public final class i extends b {

    /* renamed from: a  reason: collision with root package name */
    final String f32397a;

    /* renamed from: b  reason: collision with root package name */
    final CustomHandler f32398b;

    /* renamed from: c  reason: collision with root package name */
    final b.a f32399c;

    /* renamed from: d  reason: collision with root package name */
    final TXCloudVideoView f32400d;

    /* renamed from: e  reason: collision with root package name */
    TextureView f32401e;

    /* renamed from: f  reason: collision with root package name */
    SurfaceTexture f32402f;

    /* renamed from: g  reason: collision with root package name */
    boolean f32403g;

    /* renamed from: h  reason: collision with root package name */
    final TextureView.SurfaceTextureListener f32404h;

    /* renamed from: i  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f32405i;

    /* renamed from: j  reason: collision with root package name */
    private GLConstants.GLScaleType f32406j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoconsumer.renderer.i$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass1 implements TextureView.SurfaceTextureListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass1 anonymousClass1) {
            TextureView textureView;
            i iVar = i.this;
            TXCloudVideoView tXCloudVideoView = iVar.f32400d;
            if (tXCloudVideoView == null || (textureView = iVar.f32401e) == null) {
                return;
            }
            com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView, "removeDeprecatedViews", new Class[]{TextureView.class}, textureView);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i9, int i10) {
            LiteavLog.i(i.this.f32397a, "onSurfaceTextureAvailable, size: %dx%d", Integer.valueOf(i9), Integer.valueOf(i10));
            i iVar = i.this;
            SurfaceTexture surfaceTexture2 = iVar.f32402f;
            if (surfaceTexture2 != null && iVar.f32401e != null && !com.tencent.liteav.base.util.h.a(surfaceTexture, surfaceTexture2)) {
                iVar.f32401e.setSurfaceTexture(iVar.f32402f);
                surfaceTexture = iVar.f32402f;
                iVar.f32402f = null;
            }
            i.this.a(new Surface(surfaceTexture));
            i iVar2 = i.this;
            iVar2.b(iVar2.f32401e);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            LiteavLog.i(i.this.f32397a, "onSurfaceTextureDestroyed");
            i.this.a();
            i iVar = i.this;
            if (iVar.f32401e != null) {
                iVar.f32402f = surfaceTexture;
                return false;
            }
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i9, int i10) {
            TextureView textureView;
            Bitmap bitmap;
            LiteavLog.i(i.this.f32397a, "onSurfaceTextureSizeChanged, size: %dx%d", Integer.valueOf(i9), Integer.valueOf(i10));
            i.this.a(new Surface(surfaceTexture));
            i iVar = i.this;
            iVar.b(iVar.f32401e);
            i iVar2 = i.this;
            if (iVar2.f32399c == null || (textureView = iVar2.f32401e) == null || (bitmap = textureView.getBitmap()) == null) {
                return;
            }
            iVar2.f32399c.a(bitmap);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            i iVar = i.this;
            if (iVar.f32403g) {
                return;
            }
            iVar.f32403g = true;
            iVar.f32398b.post(n.a(this));
        }
    }

    public i(TXCloudVideoView tXCloudVideoView, b.a aVar) {
        String str = "TextureViewRenderHelper_" + hashCode();
        this.f32397a = str;
        CustomHandler customHandler = new CustomHandler(Looper.getMainLooper());
        this.f32398b = customHandler;
        this.f32405i = new com.tencent.liteav.base.util.q();
        this.f32406j = null;
        this.f32402f = null;
        this.f32403g = false;
        this.f32404h = new AnonymousClass1();
        this.f32399c = aVar;
        this.f32400d = tXCloudVideoView;
        if (tXCloudVideoView == null) {
            LiteavLog.w(str, "txCloudVideoView is null.");
            return;
        }
        LiteavLog.i(str, "construct,txCloudVideoView=".concat(String.valueOf(tXCloudVideoView)));
        TextureView textureView = new TextureView(tXCloudVideoView.getContext());
        this.f32401e = textureView;
        customHandler.post(j.a(this, tXCloudVideoView, textureView));
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b
    public final void a(boolean z10) {
        this.f32398b.post(l.a(this, z10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void b(TextureView textureView) {
        double d10;
        if (textureView == null) {
            return;
        }
        com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q(textureView.getWidth(), textureView.getHeight());
        if (this.f32405i.d() && qVar.d()) {
            double c10 = qVar.c();
            double c11 = this.f32405i.c();
            double d11 = 1.0d;
            if (c11 < c10) {
                GLConstants.GLScaleType gLScaleType = this.f32406j;
                if (gLScaleType != GLConstants.GLScaleType.FIT_CENTER) {
                    if (gLScaleType == GLConstants.GLScaleType.CENTER_CROP) {
                        d10 = c10 / c11;
                    }
                    d10 = 1.0d;
                }
                double d12 = c11 / c10;
                d10 = 1.0d;
                d11 = d12;
            } else {
                GLConstants.GLScaleType gLScaleType2 = this.f32406j;
                if (gLScaleType2 != GLConstants.GLScaleType.FIT_CENTER) {
                    if (gLScaleType2 == GLConstants.GLScaleType.CENTER_CROP) {
                        double d122 = c11 / c10;
                        d10 = 1.0d;
                        d11 = d122;
                    }
                    d10 = 1.0d;
                }
                d10 = c10 / c11;
            }
            Matrix matrix = new Matrix();
            matrix.setScale((float) d11, (float) d10, qVar.f31029a / 2.0f, qVar.f31030b / 2.0f);
            textureView.setTransform(matrix);
            textureView.requestLayout();
            textureView.invalidate();
            LiteavLog.i(this.f32397a, "view: %s, scaleX: %.2f, scaleY: %.2f, frame: %s, view: %s", textureView, Double.valueOf(d11), Double.valueOf(d10), this.f32405i, qVar);
        }
    }

    @Override // com.tencent.liteav.videoconsumer.renderer.b
    public final synchronized void a(GLConstants.GLScaleType gLScaleType, int i9, int i10) {
        if (this.f32406j == gLScaleType) {
            com.tencent.liteav.base.util.q qVar = this.f32405i;
            if (i9 == qVar.f31029a && i10 == qVar.f31030b) {
                return;
            }
        }
        this.f32406j = gLScaleType;
        this.f32405i.a(i9, i10);
        this.f32398b.a(m.a(this), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(TextureView textureView) {
        if (textureView == null) {
            LiteavLog.w(this.f32397a, "setup,textureView is null.");
            return;
        }
        if (textureView.isAvailable()) {
            com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q(textureView.getWidth(), textureView.getHeight());
            String str = this.f32397a;
            LiteavLog.i(str, "setup,textureView=" + textureView + "," + qVar);
            a(new Surface(textureView.getSurfaceTexture()));
        } else {
            LiteavLog.i(this.f32397a, "setup,textureView not available.");
        }
        textureView.setSurfaceTextureListener(this.f32404h);
        b(textureView);
    }

    public i(TextureView textureView, b.a aVar) {
        String str = "TextureViewRenderHelper_" + hashCode();
        this.f32397a = str;
        CustomHandler customHandler = new CustomHandler(Looper.getMainLooper());
        this.f32398b = customHandler;
        this.f32405i = new com.tencent.liteav.base.util.q();
        this.f32406j = null;
        this.f32402f = null;
        this.f32403g = false;
        this.f32404h = new AnonymousClass1();
        this.f32399c = aVar;
        this.f32400d = null;
        if (textureView == null) {
            LiteavLog.w(str, "textureView is null.");
            return;
        }
        LiteavLog.i(str, "construct,textureView=".concat(String.valueOf(textureView)));
        this.f32401e = textureView;
        customHandler.post(k.a(this, textureView));
    }

    final void a(Surface surface) {
        b.a aVar = this.f32399c;
        if (aVar != null) {
            aVar.a(surface, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        b.a aVar = this.f32399c;
        if (aVar != null) {
            aVar.a();
        }
    }
}
