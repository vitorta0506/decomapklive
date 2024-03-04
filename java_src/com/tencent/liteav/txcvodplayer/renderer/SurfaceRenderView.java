package com.tencent.liteav.txcvodplayer.renderer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
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
public class SurfaceRenderView extends SurfaceView implements com.tencent.liteav.txcvodplayer.renderer.a {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.liteav.txcvodplayer.renderer.b f31597a;

    /* renamed from: b  reason: collision with root package name */
    private b f31598b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class b implements SurfaceHolder.Callback {

        /* renamed from: a  reason: collision with root package name */
        SurfaceHolder f31601a;

        /* renamed from: b  reason: collision with root package name */
        boolean f31602b;

        /* renamed from: c  reason: collision with root package name */
        int f31603c;

        /* renamed from: d  reason: collision with root package name */
        int f31604d;

        /* renamed from: e  reason: collision with root package name */
        WeakReference<SurfaceRenderView> f31605e;

        /* renamed from: f  reason: collision with root package name */
        Map<a.InterfaceC0327a, Object> f31606f = new ConcurrentHashMap();

        /* renamed from: g  reason: collision with root package name */
        private int f31607g;

        public b(SurfaceRenderView surfaceRenderView) {
            this.f31605e = new WeakReference<>(surfaceRenderView);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i9, int i10, int i11) {
            this.f31601a = surfaceHolder;
            this.f31602b = true;
            this.f31607g = i9;
            this.f31603c = i10;
            this.f31604d = i11;
            a aVar = new a(this.f31605e.get(), this.f31601a);
            for (a.InterfaceC0327a interfaceC0327a : this.f31606f.keySet()) {
                interfaceC0327a.a(aVar, i10, i11);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            this.f31601a = surfaceHolder;
            this.f31602b = false;
            this.f31607g = 0;
            this.f31603c = 0;
            this.f31604d = 0;
            a aVar = new a(this.f31605e.get(), this.f31601a);
            for (a.InterfaceC0327a interfaceC0327a : this.f31606f.keySet()) {
                interfaceC0327a.a(aVar);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.f31601a = null;
            this.f31602b = false;
            this.f31607g = 0;
            this.f31603c = 0;
            this.f31604d = 0;
            a aVar = new a(this.f31605e.get(), this.f31601a);
            for (a.InterfaceC0327a interfaceC0327a : this.f31606f.keySet()) {
                interfaceC0327a.b(aVar);
            }
        }
    }

    public SurfaceRenderView(Context context) {
        super(context);
        b();
    }

    private void b() {
        this.f31597a = new com.tencent.liteav.txcvodplayer.renderer.b(this);
        this.f31598b = new b(this);
        getHolder().addCallback(this.f31598b);
        getHolder().setType(0);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            return;
        }
        this.f31597a.a(i9, i10);
        getHolder().setFixedSize(i9, i10);
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final boolean a() {
        return true;
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public View getView() {
        return this;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(SurfaceRenderView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 14) {
            accessibilityNodeInfo.setClassName(SurfaceRenderView.class.getName());
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i9, int i10) {
        this.f31597a.c(i9, i10);
        com.tencent.liteav.txcvodplayer.renderer.b bVar = this.f31597a;
        setMeasuredDimension(bVar.f31624b, bVar.f31625c);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public void setAspectRatio(int i9) {
        this.f31597a.f31626d = i9;
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public void setVideoRotation(int i9) {
        LiteavLog.e("", "SurfaceView doesn't support rotation (" + i9 + ")!\n");
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    /* loaded from: classes4.dex */
    static final class a implements a.b {

        /* renamed from: a  reason: collision with root package name */
        private SurfaceRenderView f31599a;

        /* renamed from: b  reason: collision with root package name */
        private SurfaceHolder f31600b;

        public a(SurfaceRenderView surfaceRenderView, SurfaceHolder surfaceHolder) {
            this.f31599a = surfaceRenderView;
            this.f31600b = surfaceHolder;
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final void a(ITXVCubePlayer iTXVCubePlayer) {
            if (iTXVCubePlayer != null) {
                if (LiteavSystemInfo.getSystemOSVersionInt() >= 16 && (iTXVCubePlayer instanceof com.tencent.liteav.txcplayer.b)) {
                    ((com.tencent.liteav.txcplayer.b) iTXVCubePlayer).setSurfaceTexture(null);
                }
                iTXVCubePlayer.setDisplay(this.f31600b);
            }
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface b() {
            SurfaceHolder surfaceHolder = this.f31600b;
            if (surfaceHolder == null) {
                return null;
            }
            return surfaceHolder.getSurface();
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final Surface c() {
            return b();
        }

        @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
        public final com.tencent.liteav.txcvodplayer.renderer.a a() {
            return this.f31599a;
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void a(a.InterfaceC0327a interfaceC0327a) {
        a aVar;
        b bVar = this.f31598b;
        bVar.f31606f.put(interfaceC0327a, interfaceC0327a);
        if (bVar.f31601a != null) {
            aVar = new a(bVar.f31605e.get(), bVar.f31601a);
            interfaceC0327a.a(aVar);
        } else {
            aVar = null;
        }
        if (bVar.f31602b) {
            if (aVar == null) {
                aVar = new a(bVar.f31605e.get(), bVar.f31601a);
            }
            interfaceC0327a.a(aVar, bVar.f31603c, bVar.f31604d);
        }
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            return;
        }
        this.f31597a.b(i9, i10);
        requestLayout();
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.a
    public final void b(a.InterfaceC0327a interfaceC0327a) {
        this.f31598b.f31606f.remove(interfaceC0327a);
    }
}
