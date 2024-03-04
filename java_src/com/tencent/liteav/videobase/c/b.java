package com.tencent.liteav.videobase.c;

import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public final class b extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    private int f31773a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f31774b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f31775c = -1;

    public final void a(Buffer buffer, int i9, int i10) {
        if (this.f31773a != i9 || this.f31774b != i10) {
            this.f31773a = i9;
            this.f31774b = i10;
            OpenGlUtils.deleteTexture(this.f31775c);
            this.f31775c = -1;
        }
        this.f31775c = OpenGlUtils.loadTexture(6408, buffer, i9, i10, this.f31775c);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        super.onDraw(this.f31775c, dVar, floatBuffer, floatBuffer2);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onUninit() {
        super.onUninit();
        OpenGlUtils.deleteTexture(this.f31775c);
        this.f31775c = -1;
    }
}
