package com.tencent.liteav.videobase.d;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;
/* loaded from: classes4.dex */
public abstract class i extends com.tencent.liteav.videobase.a.b {

    /* renamed from: a  reason: collision with root package name */
    private int f31815a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f31816b;

    /* renamed from: c  reason: collision with root package name */
    private int f31817c;

    /* renamed from: d  reason: collision with root package name */
    private int f31818d;

    public i(String str, String str2) {
        super(str, str2);
        int[] iArr = new int[2];
        this.f31816b = iArr;
        this.f31817c = 0;
        this.f31818d = 0;
        Arrays.fill(iArr, -1);
    }

    private void b() {
        int i9 = 0;
        while (true) {
            int[] iArr = this.f31816b;
            if (i9 >= iArr.length) {
                return;
            }
            OpenGlUtils.deleteTexture(iArr[i9]);
            this.f31816b[i9] = -1;
            i9++;
        }
    }

    protected abstract int a();

    public final void a(ByteBuffer byteBuffer, int i9, int i10) {
        if (this.f31817c != i9 || this.f31818d != i10) {
            b();
            this.f31817c = i9;
            this.f31818d = i10;
        }
        OpenGlUtils.loadYuv420DataToTextures(byteBuffer, a(), i9, i10, this.f31816b);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void beforeDrawArrays(int i9) {
        super.beforeDrawArrays(i9);
        GLES20.glActiveTexture(33985);
        OpenGlUtils.bindTexture(getTarget(), this.f31816b[1]);
        GLES20.glUniform1i(this.f31815a, 1);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        super.onDraw(this.f31816b[0], dVar, floatBuffer, floatBuffer2);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31815a = GLES20.glGetUniformLocation(getProgramId(), "uvTexture");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onUninit() {
        b();
        super.onUninit();
    }
}
