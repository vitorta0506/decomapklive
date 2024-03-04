package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import b2.i;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.m;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import k3.h;
/* loaded from: classes2.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements h {

    /* renamed from: a  reason: collision with root package name */
    private final a f7143a;

    /* loaded from: classes2.dex */
    private static final class a implements GLSurfaceView.Renderer {

        /* renamed from: k  reason: collision with root package name */
        private static final float[] f7144k = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        /* renamed from: l  reason: collision with root package name */
        private static final float[] f7145l = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        /* renamed from: m  reason: collision with root package name */
        private static final float[] f7146m = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        /* renamed from: n  reason: collision with root package name */
        private static final String[] f7147n = {"y_tex", "u_tex", "v_tex"};

        /* renamed from: o  reason: collision with root package name */
        private static final FloatBuffer f7148o = GlUtil.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        /* renamed from: a  reason: collision with root package name */
        private final GLSurfaceView f7149a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f7150b = new int[3];

        /* renamed from: c  reason: collision with root package name */
        private final int[] f7151c = new int[3];

        /* renamed from: d  reason: collision with root package name */
        private final int[] f7152d = new int[3];

        /* renamed from: e  reason: collision with root package name */
        private final int[] f7153e = new int[3];

        /* renamed from: f  reason: collision with root package name */
        private final AtomicReference<i> f7154f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private final FloatBuffer[] f7155g = new FloatBuffer[3];

        /* renamed from: h  reason: collision with root package name */
        private m f7156h;

        /* renamed from: i  reason: collision with root package name */
        private int f7157i;

        /* renamed from: j  reason: collision with root package name */
        private i f7158j;

        public a(GLSurfaceView gLSurfaceView) {
            this.f7149a = gLSurfaceView;
            for (int i9 = 0; i9 < 3; i9++) {
                int[] iArr = this.f7152d;
                this.f7153e[i9] = -1;
                iArr[i9] = -1;
            }
        }

        private void b() {
            GLES20.glGenTextures(3, this.f7150b, 0);
            for (int i9 = 0; i9 < 3; i9++) {
                GLES20.glUniform1i(this.f7156h.j(f7147n[i9]), i9);
                GLES20.glActiveTexture(33984 + i9);
                GlUtil.a(3553, this.f7150b[i9]);
            }
            GlUtil.c();
        }

        public void a(i iVar) {
            i andSet = this.f7154f.getAndSet(iVar);
            if (andSet != null) {
                andSet.p();
            }
            this.f7149a.requestRender();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            i andSet = this.f7154f.getAndSet(null);
            if (andSet == null && this.f7158j == null) {
                return;
            }
            if (andSet != null) {
                i iVar = this.f7158j;
                if (iVar != null) {
                    iVar.p();
                }
                this.f7158j = andSet;
            }
            i iVar2 = (i) com.google.android.exoplayer2.util.a.e(this.f7158j);
            float[] fArr = f7145l;
            int i9 = iVar2.f1158h;
            if (i9 == 1) {
                fArr = f7144k;
            } else if (i9 == 3) {
                fArr = f7146m;
            }
            GLES20.glUniformMatrix3fv(this.f7157i, 1, false, fArr, 0);
            int[] iArr = (int[]) com.google.android.exoplayer2.util.a.e(iVar2.f1157g);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) com.google.android.exoplayer2.util.a.e(iVar2.f1156f);
            int i10 = 0;
            while (i10 < 3) {
                int i11 = i10 == 0 ? iVar2.f1155e : (iVar2.f1155e + 1) / 2;
                GLES20.glActiveTexture(33984 + i10);
                GLES20.glBindTexture(3553, this.f7150b[i10]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i10], i11, 0, 6409, 5121, byteBufferArr[i10]);
                i10++;
            }
            int i12 = (r3[0] + 1) / 2;
            int[] iArr2 = {iVar2.f1154d, i12, i12};
            for (int i13 = 0; i13 < 3; i13++) {
                if (this.f7152d[i13] != iArr2[i13] || this.f7153e[i13] != iArr[i13]) {
                    com.google.android.exoplayer2.util.a.f(iArr[i13] != 0);
                    float f10 = iArr2[i13] / iArr[i13];
                    this.f7155g[i13] = GlUtil.e(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f10, 0.0f, f10, 1.0f});
                    GLES20.glVertexAttribPointer(this.f7151c[i13], 2, 5126, false, 0, (Buffer) this.f7155g[i13]);
                    this.f7152d[i13] = iArr2[i13];
                    this.f7153e[i13] = iArr[i13];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            GlUtil.c();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i9, int i10) {
            GLES20.glViewport(0, 0, i9, i10);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            m mVar = new m("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
            this.f7156h = mVar;
            GLES20.glVertexAttribPointer(mVar.e("in_pos"), 2, 5126, false, 0, (Buffer) f7148o);
            this.f7151c[0] = this.f7156h.e("in_tc_y");
            this.f7151c[1] = this.f7156h.e("in_tc_u");
            this.f7151c[2] = this.f7156h.e("in_tc_v");
            this.f7157i = this.f7156h.j("mColorConversion");
            GlUtil.c();
            b();
            GlUtil.c();
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    @Deprecated
    public h getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    public void setOutputBuffer(i iVar) {
        this.f7143a.a(iVar);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.f7143a = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }
}
