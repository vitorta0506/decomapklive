package com.tencent.liteav.beauty.b;

import android.content.Context;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.beauty.a.a;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public final class h extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    public GLConstants.GLScaleType f31146a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f31147b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f31148c;

    /* renamed from: e  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f31150e;

    /* renamed from: f  reason: collision with root package name */
    private d f31151f;

    /* renamed from: h  reason: collision with root package name */
    private com.tencent.liteav.beauty.a.a f31153h;

    /* renamed from: d  reason: collision with root package name */
    private final PixelFrame f31149d = new PixelFrame();

    /* renamed from: g  reason: collision with root package name */
    private boolean f31152g = false;

    /* renamed from: i  reason: collision with root package name */
    private a f31154i = null;

    /* renamed from: j  reason: collision with root package name */
    private a.InterfaceC0319a f31155j = new a.InterfaceC0319a() { // from class: com.tencent.liteav.beauty.b.h.1
    };

    /* loaded from: classes4.dex */
    public interface a {
    }

    public h(Context context) {
        this.f31148c = context;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        int a10;
        if (isInitialized()) {
            runPendingOnDrawTasks();
            if (this.f31149d.getTextureId() == -1) {
                super.onDraw(i9, dVar, floatBuffer, floatBuffer2);
                return;
            }
            com.tencent.liteav.videobase.frame.e eVar = this.mTexturePool;
            q qVar = this.mOutputSize;
            com.tencent.liteav.videobase.frame.d a11 = eVar.a(qVar.f31029a, qVar.f31030b);
            if (this.f31150e == null) {
                q qVar2 = this.mOutputSize;
                this.f31150e = new com.tencent.liteav.videobase.frame.j(qVar2.f31029a, qVar2.f31030b);
            }
            if (!this.f31149d.hasTransformParams() && this.f31149d.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D && this.f31149d.getPixelFormatType() == GLConstants.PixelFormatType.RGBA) {
                a10 = this.f31149d.getTextureId();
            } else {
                this.f31150e.a(this.f31149d, this.f31146a, a11);
                a10 = a11.a();
            }
            d dVar2 = this.f31151f;
            dVar2.setFloatOnDraw(dVar2.f31121a, this.f31147b ? 1.0f : 0.0f);
            this.f31151f.setSecondInputTexture(i9);
            this.f31151f.setInputTexture(com.tencent.liteav.videobase.a.j.THIRD_INPUT_SAMPLE2D_NAME, a10);
            this.f31151f.onDraw(i9, dVar, floatBuffer, floatBuffer2);
            a11.release();
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        d dVar = new d();
        this.f31151f = dVar;
        dVar.initialize(eVar);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        this.f31151f.onOutputSizeChanged(i9, i10);
        com.tencent.liteav.videobase.frame.j jVar = this.f31150e;
        if (jVar != null) {
            jVar.a();
            this.f31150e = null;
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onUninit() {
        com.tencent.liteav.beauty.a.a aVar = this.f31153h;
        if (aVar != null) {
            aVar.f31049c = null;
            aVar.f31048b = true;
            Thread thread = aVar.f31047a;
            if (thread != null) {
                thread.interrupt();
                aVar.f31047a = null;
            }
            this.f31153h = null;
        }
        d dVar = this.f31151f;
        if (dVar != null) {
            dVar.uninitialize();
            this.f31151f = null;
        }
        com.tencent.liteav.videobase.frame.j jVar = this.f31150e;
        if (jVar != null) {
            jVar.a();
            this.f31150e = null;
        }
        super.onUninit();
    }
}
