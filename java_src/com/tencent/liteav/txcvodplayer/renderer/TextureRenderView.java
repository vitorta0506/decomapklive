package com.tencent.liteav.txcvodplayer.renderer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcvodplayer.renderer.a;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class TextureRenderView extends TextureView implements com.tencent.liteav.txcvodplayer.renderer.a {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.liteav.txcvodplayer.renderer.b f31608a;

    /* renamed from: b  reason: collision with root package name */
    private b f31609b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class b implements TextureView.SurfaceTextureListener, com.tencent.liteav.txcplayer.c {

        /* renamed from: a  reason: collision with root package name */
        SurfaceTexture f31614a;

        /* renamed from: b  reason: collision with root package name */
        boolean f31615b;

        /* renamed from: c  reason: collision with root package name */
        int f31616c;

        /* renamed from: d  reason: collision with root package name */
        int f31617d;

        /* renamed from: h  reason: collision with root package name */
        WeakReference<TextureRenderView> f31621h;

        /* renamed from: e  reason: collision with root package name */
        boolean f31618e = true;

        /* renamed from: f  reason: collision with root package name */
        boolean f31619f = false;

        /* renamed from: g  reason: collision with root package name */
        boolean f31620g = false;

        /* renamed from: i  reason: collision with root package name */
        Map<a.InterfaceC0327a, Object> f31622i = new ConcurrentHashMap();

        public b(TextureRenderView textureRenderView) {
            this.f31621h = new WeakReference<>(textureRenderView);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i9, int i10) {
            this.f31614a = surfaceTexture;
            this.f31615b = false;
            this.f31616c = 0;
            this.f31617d = 0;
            a aVar = new a(this.f31621h.get(), surfaceTexture, this);
            for (a.InterfaceC0327a interfaceC0327a : this.f31622i.keySet()) {
                interfaceC0327a.a(aVar);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.f31614a = surfaceTexture;
            this.f31615b = false;
            this.f31616c = 0;
            this.f31617d = 0;
            a aVar = new a(this.f31621h.get(), surfaceTexture, this);
            for (a.InterfaceC0327a interfaceC0327a : this.f31622i.keySet()) {
                interfaceC0327a.b(aVar);
            }
            LiteavLog.i("TextureRenderView", "onSurfaceTextureDestroyed: destroy: " + this.f31618e);
            return this.f31618e;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i9, int i10) {
            this.f31614a = surfaceTexture;
            this.f31615b = true;
            this.f31616c = i9;
            this.f31617d = i10;
            a aVar = new a(this.f31621h.get(), surfaceTexture, this);
            for (a.InterfaceC0327a interfaceC0327a : this.f31622i.keySet()) {
                interfaceC0327a.a(aVar, i9, i10);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.tencent.liteav.txcplayer.c
        public final void a(SurfaceTexture surfaceTexture) {
            if (surfaceTexture == null) {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: null");
            } else if (this.f31620g) {
                if (surfaceTexture != this.f31614a) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                } else if (!this.f31618e) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture");
                    surfaceTexture.release();
                } else {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView");
                }
            } else if (this.f31619f) {
                if (surfaceTexture != this.f31614a) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                } else if (!this.f31618e) {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView");
                    this.f31618e = true;
                } else {
                    LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView");
                }
            } else if (surfaceTexture != this.f31614a) {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: alive: release different SurfaceTexture");
                surfaceTexture.release();
            } else if (!this.f31618e) {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView");
                this.f31618e = true;
            } else {
                LiteavLog.i("TextureRenderView", "releaseSurfaceTexture: alive: will released by TextureView");
            }
        }
    }

    public TextureRenderView(Context context) {
        super(context);
        b();
    }

    private void b() {
        this.f31608a = new com.tencent.liteav.txcvodplayer.renderer.b(this);
        b bVar = new b(this);
        this.f31609b = bVar;
        setSurfaceTextureListener(bVar);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final boolean a() {
        return false;
    }

    public a.b getSurfaceHolder() {
        return new a(this, this.f31609b.f31614a, this.f31609b);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public View getView() {
        return this;
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.f31609b;
        LiteavLog.i("TextureRenderView", "onAttachFromWindow()");
        bVar.f31619f = false;
        bVar.f31620g = false;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        try {
            b bVar = this.f31609b;
            LiteavLog.i("TextureRenderView", "willDetachFromWindow()");
            bVar.f31619f = true;
            super.onDetachedFromWindow();
            b bVar2 = this.f31609b;
            LiteavLog.i("TextureRenderView", "didDetachFromWindow()");
            bVar2.f31620g = true;
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TextureRenderView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TextureRenderView.class.getName());
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        this.f31608a.c(i9, i10);
        com.tencent.liteav.txcvodplayer.renderer.b bVar = this.f31608a;
        setMeasuredDimension(bVar.f31624b, bVar.f31625c);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public void setAspectRatio(int i9) {
        this.f31608a.f31626d = i9;
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public void setVideoRotation(int i9) {
        this.f31608a.f31623a = i9;
        setRotation(i9);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            return;
        }
        this.f31608a.a(i9, i10);
        requestLayout();
    }

    public TextureRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(a.InterfaceC0327a interfaceC0327a) {
        a aVar;
        b bVar = this.f31609b;
        bVar.f31622i.put(interfaceC0327a, interfaceC0327a);
        if (bVar.f31614a != null) {
            aVar = new a(bVar.f31621h.get(), bVar.f31614a, bVar);
            interfaceC0327a.a(aVar);
        } else {
            aVar = null;
        }
        if (bVar.f31615b) {
            if (aVar == null) {
                aVar = new a(bVar.f31621h.get(), bVar.f31614a, bVar);
            }
            interfaceC0327a.a(aVar, bVar.f31616c, bVar.f31617d);
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            return;
        }
        this.f31608a.b(i9, i10);
        requestLayout();
    }

    public TextureRenderView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(a.InterfaceC0327a interfaceC0327a) {
        this.f31609b.f31622i.remove(interfaceC0327a);
    }

    /* loaded from: classes4.dex */
    static final class a implements a.b {

        /* renamed from: a  reason: collision with root package name */
        private TextureRenderView f31610a;

        /* renamed from: b  reason: collision with root package name */
        private SurfaceTexture f31611b;

        /* renamed from: c  reason: collision with root package name */
        private com.tencent.liteav.txcplayer.c f31612c;

        /* renamed from: d  reason: collision with root package name */
        private Surface f31613d;

        public a(TextureRenderView textureRenderView, SurfaceTexture surfaceTexture, com.tencent.liteav.txcplayer.c cVar) {
            this.f31610a = textureRenderView;
            this.f31611b = surfaceTexture;
            this.f31612c = cVar;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final void a(ITXVCubePlayer iTXVCubePlayer) {
            if (iTXVCubePlayer == null) {
                return;
            }
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 16 && (iTXVCubePlayer instanceof com.tencent.liteav.txcplayer.b)) {
                com.tencent.liteav.txcplayer.b bVar = (com.tencent.liteav.txcplayer.b) iTXVCubePlayer;
                this.f31610a.f31609b.f31618e = false;
                if (this.f31610a.getSurfaceTexture() != null) {
                    this.f31611b = this.f31610a.getSurfaceTexture();
                }
                try {
                    SurfaceTexture surfaceTexture = bVar.getSurfaceTexture();
                    if (surfaceTexture != null) {
                        bVar.setSurfaceTextureHost(this.f31610a.f31609b);
                        if (this.f31610a.getSurfaceTexture() != surfaceTexture) {
                            this.f31610a.setSurfaceTexture(surfaceTexture);
                        }
                        this.f31610a.f31609b.f31614a = surfaceTexture;
                    } else {
                        Surface surface = this.f31613d;
                        if (surface != null) {
                            iTXVCubePlayer.setSurface(surface);
                        }
                        bVar.setSurfaceTexture(this.f31611b);
                        bVar.setSurfaceTextureHost(this.f31610a.f31609b);
                    }
                    this.f31613d = iTXVCubePlayer.getSurface();
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            Surface b10 = b();
            this.f31613d = b10;
            iTXVCubePlayer.setSurface(b10);
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface b() {
            if (this.f31611b == null) {
                return null;
            }
            if (this.f31613d == null) {
                this.f31613d = new Surface(this.f31611b);
            }
            return this.f31613d;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface c() {
            return this.f31613d;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final com.tencent.liteav.txcvodplayer.renderer.a a() {
            return this.f31610a;
        }
    }
}
