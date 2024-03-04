package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.AttributeSet;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.R$styleable;
import com.yalantis.ucrop.task.BitmapCropTask;
import com.yalantis.ucrop.view.TransformImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import wf.c;
import zf.g;
/* loaded from: classes5.dex */
public class CropImageView extends TransformImageView {
    private long A;

    /* renamed from: p  reason: collision with root package name */
    private final RectF f37669p;

    /* renamed from: q  reason: collision with root package name */
    private final Matrix f37670q;

    /* renamed from: r  reason: collision with root package name */
    private float f37671r;

    /* renamed from: s  reason: collision with root package name */
    private float f37672s;

    /* renamed from: t  reason: collision with root package name */
    private c f37673t;

    /* renamed from: u  reason: collision with root package name */
    private Runnable f37674u;

    /* renamed from: v  reason: collision with root package name */
    private Runnable f37675v;

    /* renamed from: w  reason: collision with root package name */
    private float f37676w;

    /* renamed from: x  reason: collision with root package name */
    private float f37677x;

    /* renamed from: y  reason: collision with root package name */
    private int f37678y;

    /* renamed from: z  reason: collision with root package name */
    private int f37679z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CropImageView> f37680a;

        /* renamed from: b  reason: collision with root package name */
        private final long f37681b;

        /* renamed from: c  reason: collision with root package name */
        private final long f37682c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f37683d;

        /* renamed from: e  reason: collision with root package name */
        private final float f37684e;

        /* renamed from: f  reason: collision with root package name */
        private final float f37685f;

        /* renamed from: g  reason: collision with root package name */
        private final float f37686g;

        /* renamed from: h  reason: collision with root package name */
        private final float f37687h;

        /* renamed from: i  reason: collision with root package name */
        private final float f37688i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f37689j;

        public a(CropImageView cropImageView, long j10, float f10, float f11, float f12, float f13, float f14, float f15, boolean z10) {
            this.f37680a = new WeakReference<>(cropImageView);
            this.f37681b = j10;
            this.f37683d = f10;
            this.f37684e = f11;
            this.f37685f = f12;
            this.f37686g = f13;
            this.f37687h = f14;
            this.f37688i = f15;
            this.f37689j = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.f37680a.get();
            if (cropImageView == null) {
                return;
            }
            float min = (float) Math.min(this.f37681b, System.currentTimeMillis() - this.f37682c);
            float b10 = zf.b.b(min, 0.0f, this.f37685f, (float) this.f37681b);
            float b11 = zf.b.b(min, 0.0f, this.f37686g, (float) this.f37681b);
            float a10 = zf.b.a(min, 0.0f, this.f37688i, (float) this.f37681b);
            if (min < ((float) this.f37681b)) {
                float[] fArr = cropImageView.f37727b;
                cropImageView.k(b10 - (fArr[0] - this.f37683d), b11 - (fArr[1] - this.f37684e));
                if (!this.f37689j) {
                    cropImageView.B(this.f37687h + a10, cropImageView.f37669p.centerX(), cropImageView.f37669p.centerY());
                }
                if (cropImageView.t()) {
                    return;
                }
                cropImageView.post(this);
            }
        }
    }

    /* loaded from: classes5.dex */
    private static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CropImageView> f37690a;

        /* renamed from: b  reason: collision with root package name */
        private final long f37691b;

        /* renamed from: c  reason: collision with root package name */
        private final long f37692c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f37693d;

        /* renamed from: e  reason: collision with root package name */
        private final float f37694e;

        /* renamed from: f  reason: collision with root package name */
        private final float f37695f;

        /* renamed from: g  reason: collision with root package name */
        private final float f37696g;

        public b(CropImageView cropImageView, long j10, float f10, float f11, float f12, float f13) {
            this.f37690a = new WeakReference<>(cropImageView);
            this.f37691b = j10;
            this.f37693d = f10;
            this.f37694e = f11;
            this.f37695f = f12;
            this.f37696g = f13;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.f37690a.get();
            if (cropImageView == null) {
                return;
            }
            float min = (float) Math.min(this.f37691b, System.currentTimeMillis() - this.f37692c);
            float a10 = zf.b.a(min, 0.0f, this.f37694e, (float) this.f37691b);
            if (min < ((float) this.f37691b)) {
                cropImageView.B(this.f37693d + a10, this.f37695f, this.f37696g);
                cropImageView.post(this);
                return;
            }
            cropImageView.x();
        }
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    private float[] o() {
        this.f37670q.reset();
        this.f37670q.setRotate(-getCurrentAngle());
        float[] fArr = this.f37726a;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        float[] b10 = g.b(this.f37669p);
        this.f37670q.mapPoints(copyOf);
        this.f37670q.mapPoints(b10);
        RectF d10 = g.d(copyOf);
        RectF d11 = g.d(b10);
        float f10 = d10.left - d11.left;
        float f11 = d10.top - d11.top;
        float f12 = d10.right - d11.right;
        float f13 = d10.bottom - d11.bottom;
        float[] fArr2 = new float[4];
        if (f10 <= 0.0f) {
            f10 = 0.0f;
        }
        fArr2[0] = f10;
        if (f11 <= 0.0f) {
            f11 = 0.0f;
        }
        fArr2[1] = f11;
        if (f12 >= 0.0f) {
            f12 = 0.0f;
        }
        fArr2[2] = f12;
        if (f13 >= 0.0f) {
            f13 = 0.0f;
        }
        fArr2[3] = f13;
        this.f37670q.reset();
        this.f37670q.setRotate(getCurrentAngle());
        this.f37670q.mapPoints(fArr2);
        return fArr2;
    }

    private void p() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        q(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    private void q(float f10, float f11) {
        float min = Math.min(Math.min(this.f37669p.width() / f10, this.f37669p.width() / f11), Math.min(this.f37669p.height() / f11, this.f37669p.height() / f10));
        this.f37677x = min;
        this.f37676w = min * this.f37672s;
    }

    private void y(float f10, float f11) {
        float width = this.f37669p.width();
        float height = this.f37669p.height();
        float max = Math.max(this.f37669p.width() / f10, this.f37669p.height() / f11);
        RectF rectF = this.f37669p;
        float f12 = ((height - (f11 * max)) / 2.0f) + rectF.top;
        this.f37729d.reset();
        this.f37729d.postScale(max, max);
        this.f37729d.postTranslate(((width - (f10 * max)) / 2.0f) + rectF.left, f12);
        setImageMatrix(this.f37729d);
    }

    public void A(float f10) {
        B(f10, this.f37669p.centerX(), this.f37669p.centerY());
    }

    public void B(float f10, float f11, float f12) {
        if (f10 <= getMaxScale()) {
            j(f10 / getCurrentScale(), f11, f12);
        }
    }

    public void C(float f10) {
        D(f10, this.f37669p.centerX(), this.f37669p.centerY());
    }

    public void D(float f10, float f11, float f12) {
        if (f10 >= getMinScale()) {
            j(f10 / getCurrentScale(), f11, f12);
        }
    }

    @Nullable
    public c getCropBoundsChangeListener() {
        return this.f37673t;
    }

    public float getMaxScale() {
        return this.f37676w;
    }

    public float getMinScale() {
        return this.f37677x;
    }

    public float getTargetAspectRatio() {
        return this.f37671r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yalantis.ucrop.view.TransformImageView
    public void h() {
        int i9;
        int i10;
        int i11;
        super.h();
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        if (this.f37671r == 0.0f) {
            this.f37671r = intrinsicWidth / intrinsicHeight;
        }
        int i12 = this.f37730e;
        float f10 = this.f37671r;
        int i13 = (int) (i12 / f10);
        int i14 = this.f37731f;
        if (i13 > i14) {
            this.f37669p.set((i12 - ((int) (i14 * f10))) / 2, 0.0f, i10 + i11, i14);
        } else {
            this.f37669p.set(0.0f, (i14 - i13) / 2, i12, i13 + i9);
        }
        q(intrinsicWidth, intrinsicHeight);
        y(intrinsicWidth, intrinsicHeight);
        c cVar = this.f37673t;
        if (cVar != null) {
            cVar.a(this.f37671r);
        }
        TransformImageView.b bVar = this.f37732g;
        if (bVar != null) {
            bVar.c(getCurrentScale());
            this.f37732g.d(getCurrentAngle());
        }
    }

    @Override // com.yalantis.ucrop.view.TransformImageView
    public void j(float f10, float f11, float f12) {
        if (f10 > 1.0f && getCurrentScale() * f10 <= getMaxScale()) {
            super.j(f10, f11, f12);
        } else if (f10 >= 1.0f || getCurrentScale() * f10 < getMinScale()) {
        } else {
            super.j(f10, f11, f12);
        }
    }

    public void r() {
        removeCallbacks(this.f37674u);
        removeCallbacks(this.f37675v);
    }

    public void s(@NonNull Bitmap.CompressFormat compressFormat, int i9, @Nullable wf.a aVar) {
        r();
        setImageToWrapCropBounds(false);
        new BitmapCropTask(getViewBitmap(), new xf.c(this.f37669p, g.d(this.f37726a), getCurrentScale(), getCurrentAngle()), new xf.a(this.f37678y, this.f37679z, compressFormat, i9, getImageInputPath(), getImageOutputPath(), getExifInfo()), aVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void setCropBoundsChangeListener(@Nullable c cVar) {
        this.f37673t = cVar;
    }

    public void setCropRect(RectF rectF) {
        this.f37671r = rectF.width() / rectF.height();
        this.f37669p.set(rectF.left - getPaddingLeft(), rectF.top - getPaddingTop(), rectF.right - getPaddingRight(), rectF.bottom - getPaddingBottom());
        p();
        x();
    }

    public void setImageToWrapCropBounds(boolean z10) {
        float f10;
        float max;
        float f11;
        if (!this.f37736k || t()) {
            return;
        }
        float[] fArr = this.f37727b;
        float f12 = fArr[0];
        float f13 = fArr[1];
        float currentScale = getCurrentScale();
        float centerX = this.f37669p.centerX() - f12;
        float centerY = this.f37669p.centerY() - f13;
        this.f37670q.reset();
        this.f37670q.setTranslate(centerX, centerY);
        float[] fArr2 = this.f37726a;
        float[] copyOf = Arrays.copyOf(fArr2, fArr2.length);
        this.f37670q.mapPoints(copyOf);
        boolean u10 = u(copyOf);
        if (u10) {
            float[] o10 = o();
            f11 = -(o10[1] + o10[3]);
            f10 = -(o10[0] + o10[2]);
            max = 0.0f;
        } else {
            RectF rectF = new RectF(this.f37669p);
            this.f37670q.reset();
            this.f37670q.setRotate(getCurrentAngle());
            this.f37670q.mapRect(rectF);
            float[] c10 = g.c(this.f37726a);
            f10 = centerX;
            max = (Math.max(rectF.width() / c10[0], rectF.height() / c10[1]) * currentScale) - currentScale;
            f11 = centerY;
        }
        if (z10) {
            a aVar = new a(this, this.A, f12, f13, f10, f11, currentScale, max, u10);
            this.f37674u = aVar;
            post(aVar);
            return;
        }
        k(f10, f11);
        if (u10) {
            return;
        }
        B(currentScale + max, this.f37669p.centerX(), this.f37669p.centerY());
    }

    public void setImageToWrapCropBoundsAnimDuration(@IntRange(from = 100) long j10) {
        if (j10 > 0) {
            this.A = j10;
            return;
        }
        throw new IllegalArgumentException("Animation duration cannot be negative value.");
    }

    public void setMaxResultImageSizeX(@IntRange(from = 10) int i9) {
        this.f37678y = i9;
    }

    public void setMaxResultImageSizeY(@IntRange(from = 10) int i9) {
        this.f37679z = i9;
    }

    public void setMaxScaleMultiplier(float f10) {
        this.f37672s = f10;
    }

    public void setTargetAspectRatio(float f10) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            this.f37671r = f10;
            return;
        }
        if (f10 == 0.0f) {
            this.f37671r = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        } else {
            this.f37671r = f10;
        }
        c cVar = this.f37673t;
        if (cVar != null) {
            cVar.a(this.f37671r);
        }
    }

    protected boolean t() {
        return u(this.f37726a);
    }

    protected boolean u(float[] fArr) {
        this.f37670q.reset();
        this.f37670q.setRotate(-getCurrentAngle());
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        this.f37670q.mapPoints(copyOf);
        float[] b10 = g.b(this.f37669p);
        this.f37670q.mapPoints(b10);
        return g.d(copyOf).contains(g.d(b10));
    }

    public void v(float f10) {
        i(f10, this.f37669p.centerX(), this.f37669p.centerY());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void w(@NonNull TypedArray typedArray) {
        float abs = Math.abs(typedArray.getFloat(R$styleable.ucrop_UCropView_ucrop_aspect_ratio_x, 0.0f));
        float abs2 = Math.abs(typedArray.getFloat(R$styleable.ucrop_UCropView_ucrop_aspect_ratio_y, 0.0f));
        if (abs != 0.0f && abs2 != 0.0f) {
            this.f37671r = abs / abs2;
        } else {
            this.f37671r = 0.0f;
        }
    }

    public void x() {
        setImageToWrapCropBounds(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z(float f10, float f11, float f12, long j10) {
        if (f10 > getMaxScale()) {
            f10 = getMaxScale();
        }
        float currentScale = getCurrentScale();
        b bVar = new b(this, j10, currentScale, f10 - currentScale, f11, f12);
        this.f37675v = bVar;
        post(bVar);
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37669p = new RectF();
        this.f37670q = new Matrix();
        this.f37672s = 10.0f;
        this.f37675v = null;
        this.f37678y = 0;
        this.f37679z = 0;
        this.A = 500L;
    }
}
