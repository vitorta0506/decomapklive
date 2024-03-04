package com.tencent.liteav.videobase.utils;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.frame.PixelFrame;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public TakeSnapshotListener f31904a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31905b;

    /* renamed from: c  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f31906c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.e f31907d;

    /* renamed from: g  reason: collision with root package name */
    private ExecutorService f31910g;

    /* renamed from: e  reason: collision with root package name */
    private boolean f31908e = false;

    /* renamed from: f  reason: collision with root package name */
    private final com.tencent.liteav.videobase.frame.c f31909f = new com.tencent.liteav.videobase.frame.c();

    /* renamed from: h  reason: collision with root package name */
    private int f31911h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f31912i = 0;

    public k(String str) {
        this.f31905b = "SnapshotTaker_" + str + "_" + hashCode();
    }

    public final void a(com.tencent.liteav.videobase.frame.e eVar) {
        LiteavLog.i(this.f31905b, "initialize");
        if (this.f31907d == null) {
            this.f31907d = new com.tencent.liteav.videobase.frame.e();
            this.f31908e = true;
        } else {
            this.f31907d = eVar;
        }
        if (this.f31910g == null) {
            this.f31910g = new ThreadPoolExecutor(0, 1, 5L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }
        this.f31909f.a();
        if (this.f31911h == 0 || this.f31912i == 0 || this.f31906c != null) {
            return;
        }
        this.f31906c = new com.tencent.liteav.videobase.frame.j(this.f31911h, this.f31912i);
    }

    public final void a(int i9, int i10) {
        if (i9 == this.f31911h && i10 == this.f31912i) {
            return;
        }
        String str = this.f31905b;
        LiteavLog.i(str, "setSize width=" + i9 + ", height=" + i10);
        com.tencent.liteav.videobase.frame.j jVar = this.f31906c;
        if (jVar != null) {
            jVar.a();
            this.f31906c = null;
        }
        this.f31906c = new com.tencent.liteav.videobase.frame.j(i9, i10);
        this.f31911h = i9;
        this.f31912i = i10;
    }

    public final void a() {
        LiteavLog.i(this.f31905b, "uninitialize");
        TakeSnapshotListener takeSnapshotListener = this.f31904a;
        if (takeSnapshotListener != null) {
            takeSnapshotListener.onComplete(null);
            this.f31904a = null;
        }
        com.tencent.liteav.videobase.frame.e eVar = this.f31907d;
        if (eVar != null && this.f31908e) {
            eVar.a();
            this.f31907d.b();
            this.f31907d = null;
            this.f31908e = false;
        }
        ExecutorService executorService = this.f31910g;
        if (executorService != null) {
            executorService.shutdown();
            this.f31910g = null;
        }
        com.tencent.liteav.videobase.frame.j jVar = this.f31906c;
        if (jVar != null) {
            jVar.a();
            this.f31906c = null;
        }
        this.f31909f.d();
    }

    public final void a(PixelFrame pixelFrame) {
        int i9;
        com.tencent.liteav.videobase.frame.e eVar;
        if (this.f31904a == null || pixelFrame == null) {
            return;
        }
        int i10 = this.f31911h;
        if (i10 != 0 && (i9 = this.f31912i) != 0) {
            if (this.f31906c != null && (eVar = this.f31907d) != null) {
                com.tencent.liteav.videobase.frame.d a10 = eVar.a(i10, i9);
                this.f31906c.a(pixelFrame, GLConstants.GLScaleType.CENTER_CROP, a10);
                this.f31909f.a(a10.a());
                this.f31909f.b();
                int i11 = this.f31911h;
                int i12 = this.f31912i;
                TakeSnapshotListener takeSnapshotListener = this.f31904a;
                if (takeSnapshotListener != null && this.f31910g != null) {
                    ByteBuffer order = ByteBuffer.allocateDirect(i11 * i12 * 4).order(ByteOrder.nativeOrder());
                    order.position(0);
                    OpenGlUtils.readPixels(0, 0, i11, i12, order);
                    try {
                        this.f31910g.execute(l.a(order, i11, i12, takeSnapshotListener));
                    } catch (Exception e10) {
                        String str = this.f31905b;
                        LiteavLog.w(str, "mExecutorService execute exception: " + e10.toString());
                        takeSnapshotListener.onComplete(null);
                    }
                } else {
                    String str2 = this.f31905b;
                    LiteavLog.i(str2, "snapshot listener = " + takeSnapshotListener + ", mExecutorService = " + this.f31910g);
                }
                this.f31904a = null;
                OpenGlUtils.bindFramebuffer(36160, 0);
                this.f31909f.c();
                a10.release();
                return;
            }
            String str3 = this.f31905b;
            LiteavLog.w(str3, "snapshot:  mGLTexturePool= " + this.f31907d + ", mPixelFrameRender = " + this.f31907d);
            return;
        }
        LiteavLog.w(this.f31905b, "snapshot when surface height or width is zero!");
    }
}
