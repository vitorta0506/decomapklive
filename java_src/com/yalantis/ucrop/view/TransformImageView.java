package com.yalantis.ucrop.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import zf.d;
import zf.g;
/* loaded from: classes5.dex */
public class TransformImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    protected final float[] f37726a;

    /* renamed from: b  reason: collision with root package name */
    protected final float[] f37727b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f37728c;

    /* renamed from: d  reason: collision with root package name */
    protected Matrix f37729d;

    /* renamed from: e  reason: collision with root package name */
    protected int f37730e;

    /* renamed from: f  reason: collision with root package name */
    protected int f37731f;

    /* renamed from: g  reason: collision with root package name */
    protected b f37732g;

    /* renamed from: h  reason: collision with root package name */
    private float[] f37733h;

    /* renamed from: i  reason: collision with root package name */
    private float[] f37734i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f37735j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f37736k;

    /* renamed from: l  reason: collision with root package name */
    private int f37737l;

    /* renamed from: m  reason: collision with root package name */
    private String f37738m;

    /* renamed from: n  reason: collision with root package name */
    private String f37739n;

    /* renamed from: o  reason: collision with root package name */
    private xf.b f37740o;

    /* loaded from: classes5.dex */
    class a implements wf.b {
        a() {
        }

        @Override // wf.b
        public void a(@NonNull Exception exc) {
            Log.e("TransformImageView", "onFailure: setImageUri", exc);
            b bVar = TransformImageView.this.f37732g;
            if (bVar != null) {
                bVar.b(exc);
            }
        }

        @Override // wf.b
        public void b(@NonNull Bitmap bitmap, @NonNull xf.b bVar, @NonNull String str, @Nullable String str2) {
            TransformImageView.this.f37738m = str;
            TransformImageView.this.f37739n = str2;
            TransformImageView.this.f37740o = bVar;
            TransformImageView transformImageView = TransformImageView.this;
            transformImageView.f37735j = true;
            transformImageView.setImageBitmap(bitmap);
        }
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a();

        void b(@NonNull Exception exc);

        void c(float f10);

        void d(float f10);
    }

    public TransformImageView(Context context) {
        this(context, null);
    }

    private void m() {
        this.f37729d.mapPoints(this.f37726a, this.f37733h);
        this.f37729d.mapPoints(this.f37727b, this.f37734i);
    }

    public float d(@NonNull Matrix matrix) {
        return (float) (-(Math.atan2(f(matrix, 1), f(matrix, 0)) * 57.29577951308232d));
    }

    public float e(@NonNull Matrix matrix) {
        return (float) Math.sqrt(Math.pow(f(matrix, 0), 2.0d) + Math.pow(f(matrix, 3), 2.0d));
    }

    protected float f(@NonNull Matrix matrix, @IntRange(from = 0, to = 9) int i9) {
        matrix.getValues(this.f37728c);
        return this.f37728c[i9];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public float getCurrentAngle() {
        return d(this.f37729d);
    }

    public float getCurrentScale() {
        return e(this.f37729d);
    }

    public xf.b getExifInfo() {
        return this.f37740o;
    }

    public String getImageInputPath() {
        return this.f37738m;
    }

    public String getImageOutputPath() {
        return this.f37739n;
    }

    public int getMaxBitmapSize() {
        if (this.f37737l <= 0) {
            this.f37737l = zf.a.b(getContext());
        }
        return this.f37737l;
    }

    @Nullable
    public Bitmap getViewBitmap() {
        if (getDrawable() == null || !(getDrawable() instanceof d)) {
            return null;
        }
        return ((d) getDrawable()).a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        Log.d("TransformImageView", String.format("Image size: [%d:%d]", Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight)));
        RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        this.f37733h = g.b(rectF);
        this.f37734i = g.a(rectF);
        this.f37736k = true;
        b bVar = this.f37732g;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void i(float f10, float f11, float f12) {
        if (f10 != 0.0f) {
            this.f37729d.postRotate(f10, f11, f12);
            setImageMatrix(this.f37729d);
            b bVar = this.f37732g;
            if (bVar != null) {
                bVar.d(d(this.f37729d));
            }
        }
    }

    public void j(float f10, float f11, float f12) {
        if (f10 != 0.0f) {
            this.f37729d.postScale(f10, f10, f11, f12);
            setImageMatrix(this.f37729d);
            b bVar = this.f37732g;
            if (bVar != null) {
                bVar.c(e(this.f37729d));
            }
        }
    }

    public void k(float f10, float f11) {
        if (f10 == 0.0f && f11 == 0.0f) {
            return;
        }
        this.f37729d.postTranslate(f10, f11);
        setImageMatrix(this.f37729d);
    }

    public void l(@NonNull Uri uri, @Nullable Uri uri2) throws Exception {
        int maxBitmapSize = getMaxBitmapSize();
        zf.a.d(getContext(), uri, uri2, maxBitmapSize, maxBitmapSize, new a());
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (z10 || (this.f37735j && !this.f37736k)) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            this.f37730e = (getWidth() - getPaddingRight()) - paddingLeft;
            this.f37731f = (getHeight() - getPaddingBottom()) - paddingTop;
            h();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        setImageDrawable(new d(bitmap));
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        this.f37729d.set(matrix);
        m();
    }

    public void setMaxBitmapSize(int i9) {
        this.f37737l = i9;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w("TransformImageView", "Invalid ScaleType. Only ScaleType.MATRIX can be used");
        }
    }

    public void setTransformImageListener(b bVar) {
        this.f37732g = bVar;
    }

    public TransformImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TransformImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37726a = new float[8];
        this.f37727b = new float[2];
        this.f37728c = new float[9];
        this.f37729d = new Matrix();
        this.f37735j = false;
        this.f37736k = false;
        this.f37737l = 0;
        g();
    }
}
