package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private int f31831a = -1;

    public final void a() {
        if (this.f31831a == -1) {
            this.f31831a = OpenGlUtils.generateFrameBufferId();
        }
    }

    public final void b() {
        OpenGlUtils.bindFramebuffer(36160, this.f31831a);
    }

    public final void c() {
        int i9 = this.f31831a;
        if (i9 == -1) {
            LiteavLog.d("GLFrameBuffer", "FrameBuffer is invalid");
        } else {
            OpenGlUtils.detachTextureFromFrameBuffer(i9);
        }
    }

    public final void d() {
        int i9 = this.f31831a;
        if (i9 != -1) {
            OpenGlUtils.deleteFrameBuffer(i9);
            this.f31831a = -1;
        }
    }

    public final void a(int i9) {
        int i10 = this.f31831a;
        if (i10 == -1) {
            LiteavLog.d("GLFrameBuffer", "FrameBuffer is invalid");
        } else {
            OpenGlUtils.attachTextureToFrameBuffer(i9, i10);
        }
    }
}
