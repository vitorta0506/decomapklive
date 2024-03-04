package com.tencent.tmediacodec.hook;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class THookTextureView extends TextureView {

    /* renamed from: a  reason: collision with root package name */
    private static a f34630a;

    /* renamed from: b  reason: collision with root package name */
    private TextureView.SurfaceTextureListener f34631b;

    /* renamed from: c  reason: collision with root package name */
    private final TextureView.SurfaceTextureListener f34632c;

    /* loaded from: classes4.dex */
    public interface a {
        boolean a(@Nullable SurfaceTexture surfaceTexture);
    }

    public THookTextureView(@Nullable Context context) {
        this(context, null, 0);
    }

    public static void setHookCallback(a aVar) {
        f34630a = aVar;
    }

    @Override // android.view.TextureView
    public final void setSurfaceTextureListener(@Nullable TextureView.SurfaceTextureListener surfaceTextureListener) {
        this.f34631b = surfaceTextureListener;
        super.setSurfaceTextureListener(this.f34632c);
    }

    public THookTextureView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public THookTextureView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f34632c = new TextureView.SurfaceTextureListener() { // from class: com.tencent.tmediacodec.hook.THookTextureView.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(@Nullable SurfaceTexture surfaceTexture, int i10, int i11) {
                if (THookTextureView.this.f34631b != null) {
                    THookTextureView.this.f34631b.onSurfaceTextureAvailable(surfaceTexture, i10, i11);
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(@Nullable SurfaceTexture surfaceTexture) {
                boolean z10 = false;
                boolean z11 = THookTextureView.this.f34631b == null || THookTextureView.this.f34631b.onSurfaceTextureDestroyed(surfaceTexture);
                if (THookTextureView.f34630a != null) {
                    if (z11 && THookTextureView.f34630a.a(surfaceTexture)) {
                        z10 = true;
                    }
                    com.tencent.tmediacodec.f.a.b("THookTextureView", this + "onSurfaceTextureDestroyed surfaceTexture:" + surfaceTexture + " hookResult:" + z10 + "result:" + z11);
                    return z10;
                }
                com.tencent.tmediacodec.f.a.b("THookTextureView", this + ", onSurfaceTextureDestroyed surfaceTexture:" + surfaceTexture + " result:" + z11);
                return z11;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(@Nullable SurfaceTexture surfaceTexture, int i10, int i11) {
                if (THookTextureView.this.f34631b != null) {
                    THookTextureView.this.f34631b.onSurfaceTextureSizeChanged(surfaceTexture, i10, i11);
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(@Nullable SurfaceTexture surfaceTexture) {
                if (THookTextureView.this.f34631b != null) {
                    THookTextureView.this.f34631b.onSurfaceTextureUpdated(surfaceTexture);
                }
            }
        };
        setSurfaceTextureListener(null);
    }
}
