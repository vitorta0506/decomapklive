package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.m;
import com.google.android.exoplayer2.video.spherical.c;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* loaded from: classes2.dex */
final class e {

    /* renamed from: j  reason: collision with root package name */
    private static final float[] f7202j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: k  reason: collision with root package name */
    private static final float[] f7203k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: l  reason: collision with root package name */
    private static final float[] f7204l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: m  reason: collision with root package name */
    private static final float[] f7205m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: n  reason: collision with root package name */
    private static final float[] f7206n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    private int f7207a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f7208b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f7209c;

    /* renamed from: d  reason: collision with root package name */
    private m f7210d;

    /* renamed from: e  reason: collision with root package name */
    private int f7211e;

    /* renamed from: f  reason: collision with root package name */
    private int f7212f;

    /* renamed from: g  reason: collision with root package name */
    private int f7213g;

    /* renamed from: h  reason: collision with root package name */
    private int f7214h;

    /* renamed from: i  reason: collision with root package name */
    private int f7215i;

    /* loaded from: classes2.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f7216a;

        /* renamed from: b  reason: collision with root package name */
        private final FloatBuffer f7217b;

        /* renamed from: c  reason: collision with root package name */
        private final FloatBuffer f7218c;

        /* renamed from: d  reason: collision with root package name */
        private final int f7219d;

        public a(c.b bVar) {
            this.f7216a = bVar.a();
            this.f7217b = GlUtil.e(bVar.f7200c);
            this.f7218c = GlUtil.e(bVar.f7201d);
            int i9 = bVar.f7199b;
            if (i9 == 1) {
                this.f7219d = 5;
            } else if (i9 != 2) {
                this.f7219d = 4;
            } else {
                this.f7219d = 6;
            }
        }
    }

    public static boolean c(c cVar) {
        c.a aVar = cVar.f7193a;
        c.a aVar2 = cVar.f7194b;
        return aVar.b() == 1 && aVar.a(0).f7198a == 0 && aVar2.b() == 1 && aVar2.a(0).f7198a == 0;
    }

    public void a(int i9, float[] fArr, boolean z10) {
        float[] fArr2;
        a aVar = z10 ? this.f7209c : this.f7208b;
        if (aVar == null) {
            return;
        }
        int i10 = this.f7207a;
        if (i10 == 1) {
            fArr2 = z10 ? f7204l : f7203k;
        } else if (i10 == 2) {
            fArr2 = z10 ? f7206n : f7205m;
        } else {
            fArr2 = f7202j;
        }
        GLES20.glUniformMatrix3fv(this.f7212f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f7211e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i9);
        GLES20.glUniform1i(this.f7215i, 0);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.f7213g, 3, 5126, false, 12, (Buffer) aVar.f7217b);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.f7214h, 2, 5126, false, 8, (Buffer) aVar.f7218c);
        GlUtil.c();
        GLES20.glDrawArrays(aVar.f7219d, 0, aVar.f7216a);
        GlUtil.c();
    }

    public void b() {
        m mVar = new m("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
        this.f7210d = mVar;
        this.f7211e = mVar.j("uMvpMatrix");
        this.f7212f = this.f7210d.j("uTexMatrix");
        this.f7213g = this.f7210d.e("aPosition");
        this.f7214h = this.f7210d.e("aTexCoords");
        this.f7215i = this.f7210d.j("uTexture");
    }

    public void d(c cVar) {
        if (c(cVar)) {
            this.f7207a = cVar.f7195c;
            a aVar = new a(cVar.f7193a.a(0));
            this.f7208b = aVar;
            if (!cVar.f7196d) {
                aVar = new a(cVar.f7194b.a(0));
            }
            this.f7209c = aVar;
        }
    }
}
