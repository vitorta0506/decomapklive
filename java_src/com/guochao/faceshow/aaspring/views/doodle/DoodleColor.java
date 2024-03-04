package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
/* loaded from: classes3.dex */
public class DoodleColor implements la.b {

    /* renamed from: a  reason: collision with root package name */
    private int f24196a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f24197b;

    /* renamed from: c  reason: collision with root package name */
    private Type f24198c;

    /* renamed from: d  reason: collision with root package name */
    private Matrix f24199d;

    /* renamed from: e  reason: collision with root package name */
    private int f24200e;

    /* renamed from: f  reason: collision with root package name */
    private Shader.TileMode f24201f;

    /* renamed from: g  reason: collision with root package name */
    private Shader.TileMode f24202g;

    /* loaded from: classes3.dex */
    public enum Type {
        COLOR,
        BITMAP
    }

    public DoodleColor(int i9) {
        this.f24200e = 1;
        Shader.TileMode tileMode = Shader.TileMode.MIRROR;
        this.f24201f = tileMode;
        this.f24202g = tileMode;
        this.f24198c = Type.COLOR;
        this.f24196a = i9;
    }

    public Bitmap a() {
        return this.f24197b;
    }

    public int b() {
        return this.f24200e;
    }

    public Matrix c() {
        return this.f24199d;
    }

    @Override // la.b
    public void config(la.c cVar, Paint paint) {
        b bVar = (b) cVar;
        Type type = this.f24198c;
        if (type == Type.COLOR) {
            paint.setColor(this.f24196a);
            paint.setShader(null);
        } else if (type == Type.BITMAP) {
            BitmapShader bitmapShader = new BitmapShader(this.f24197b, this.f24201f, this.f24202g);
            bitmapShader.setLocalMatrix(this.f24199d);
            paint.setShader(bitmapShader);
        }
    }

    @Override // la.b
    public la.b copy() {
        DoodleColor doodleColor;
        if (this.f24198c == Type.COLOR) {
            doodleColor = new DoodleColor(this.f24196a);
        } else {
            doodleColor = new DoodleColor(this.f24197b);
        }
        doodleColor.f24201f = this.f24201f;
        doodleColor.f24202g = this.f24202g;
        doodleColor.f24199d = new Matrix(this.f24199d);
        doodleColor.f24200e = this.f24200e;
        return doodleColor;
    }

    public Type d() {
        return this.f24198c;
    }

    public void e(int i9) {
        this.f24200e = i9;
    }

    public void f(Matrix matrix) {
        this.f24199d = matrix;
    }

    public DoodleColor(Bitmap bitmap) {
        this(bitmap, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DoodleColor(android.graphics.Bitmap r2, android.graphics.Matrix r3) {
        /*
            r1 = this;
            android.graphics.Shader$TileMode r0 = android.graphics.Shader.TileMode.MIRROR
            r1.<init>(r2, r3, r0, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.doodle.DoodleColor.<init>(android.graphics.Bitmap, android.graphics.Matrix):void");
    }

    public DoodleColor(Bitmap bitmap, Matrix matrix, Shader.TileMode tileMode, Shader.TileMode tileMode2) {
        this.f24200e = 1;
        Shader.TileMode tileMode3 = Shader.TileMode.MIRROR;
        this.f24201f = tileMode3;
        this.f24202g = tileMode3;
        this.f24198c = Type.BITMAP;
        this.f24199d = matrix;
        this.f24197b = bitmap;
        this.f24201f = tileMode;
        this.f24202g = tileMode2;
    }
}
