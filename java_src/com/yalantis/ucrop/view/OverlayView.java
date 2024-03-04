package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.R$color;
import com.yalantis.ucrop.R$dimen;
import com.yalantis.ucrop.R$styleable;
import wf.d;
import zf.g;
/* loaded from: classes5.dex */
public class OverlayView extends View {
    private d A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final RectF f37700a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f37701b;

    /* renamed from: c  reason: collision with root package name */
    protected int f37702c;

    /* renamed from: d  reason: collision with root package name */
    protected int f37703d;

    /* renamed from: e  reason: collision with root package name */
    protected float[] f37704e;

    /* renamed from: f  reason: collision with root package name */
    protected float[] f37705f;

    /* renamed from: g  reason: collision with root package name */
    private int f37706g;

    /* renamed from: h  reason: collision with root package name */
    private int f37707h;

    /* renamed from: i  reason: collision with root package name */
    private float f37708i;

    /* renamed from: j  reason: collision with root package name */
    private float[] f37709j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f37710k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f37711l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f37712m;

    /* renamed from: n  reason: collision with root package name */
    private int f37713n;

    /* renamed from: o  reason: collision with root package name */
    private Path f37714o;

    /* renamed from: p  reason: collision with root package name */
    private Paint f37715p;

    /* renamed from: q  reason: collision with root package name */
    private Paint f37716q;

    /* renamed from: r  reason: collision with root package name */
    private Paint f37717r;

    /* renamed from: s  reason: collision with root package name */
    private Paint f37718s;

    /* renamed from: t  reason: collision with root package name */
    private int f37719t;

    /* renamed from: u  reason: collision with root package name */
    private float f37720u;

    /* renamed from: v  reason: collision with root package name */
    private float f37721v;

    /* renamed from: w  reason: collision with root package name */
    private int f37722w;

    /* renamed from: x  reason: collision with root package name */
    private int f37723x;

    /* renamed from: y  reason: collision with root package name */
    private int f37724y;

    /* renamed from: z  reason: collision with root package name */
    private int f37725z;

    public OverlayView(Context context) {
        this(context, null);
    }

    private int c(float f10, float f11) {
        double d10 = this.f37723x;
        int i9 = -1;
        for (int i10 = 0; i10 < 8; i10 += 2) {
            double sqrt = Math.sqrt(Math.pow(f10 - this.f37704e[i10], 2.0d) + Math.pow(f11 - this.f37704e[i10 + 1], 2.0d));
            if (sqrt < d10) {
                i9 = i10 / 2;
                d10 = sqrt;
            }
        }
        if (this.f37719t == 1 && i9 < 0 && this.f37700a.contains(f10, f11)) {
            return 4;
        }
        return i9;
    }

    private void e(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R$styleable.ucrop_UCropView_ucrop_frame_stroke_size, getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_frame_stoke_width));
        int color = typedArray.getColor(R$styleable.ucrop_UCropView_ucrop_frame_color, getResources().getColor(R$color.ucrop_color_default_crop_frame));
        this.f37717r.setStrokeWidth(dimensionPixelSize);
        this.f37717r.setColor(color);
        this.f37717r.setStyle(Paint.Style.STROKE);
        this.f37718s.setStrokeWidth(dimensionPixelSize * 3);
        this.f37718s.setColor(color);
        this.f37718s.setStyle(Paint.Style.STROKE);
    }

    private void f(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R$styleable.ucrop_UCropView_ucrop_grid_stroke_size, getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_grid_stoke_width));
        int color = typedArray.getColor(R$styleable.ucrop_UCropView_ucrop_grid_color, getResources().getColor(R$color.ucrop_color_default_crop_grid));
        this.f37716q.setStrokeWidth(dimensionPixelSize);
        this.f37716q.setColor(color);
        this.f37706g = typedArray.getInt(R$styleable.ucrop_UCropView_ucrop_grid_row_count, 2);
        this.f37707h = typedArray.getInt(R$styleable.ucrop_UCropView_ucrop_grid_column_count, 2);
    }

    private void i(float f10, float f11) {
        this.f37701b.set(this.f37700a);
        int i9 = this.f37722w;
        if (i9 == 0) {
            RectF rectF = this.f37701b;
            RectF rectF2 = this.f37700a;
            rectF.set(f10, f11, rectF2.right, rectF2.bottom);
        } else if (i9 == 1) {
            RectF rectF3 = this.f37701b;
            RectF rectF4 = this.f37700a;
            rectF3.set(rectF4.left, f11, f10, rectF4.bottom);
        } else if (i9 == 2) {
            RectF rectF5 = this.f37701b;
            RectF rectF6 = this.f37700a;
            rectF5.set(rectF6.left, rectF6.top, f10, f11);
        } else if (i9 == 3) {
            RectF rectF7 = this.f37701b;
            RectF rectF8 = this.f37700a;
            rectF7.set(f10, rectF8.top, rectF8.right, f11);
        } else if (i9 == 4) {
            this.f37701b.offset(f10 - this.f37720u, f11 - this.f37721v);
            if (this.f37701b.left <= getLeft() || this.f37701b.top <= getTop() || this.f37701b.right >= getRight() || this.f37701b.bottom >= getBottom()) {
                return;
            }
            this.f37700a.set(this.f37701b);
            j();
            postInvalidate();
            return;
        }
        boolean z10 = this.f37701b.height() >= ((float) this.f37724y);
        boolean z11 = this.f37701b.width() >= ((float) this.f37724y);
        RectF rectF9 = this.f37700a;
        rectF9.set(z11 ? this.f37701b.left : rectF9.left, z10 ? this.f37701b.top : rectF9.top, z11 ? this.f37701b.right : rectF9.right, z10 ? this.f37701b.bottom : rectF9.bottom);
        if (z10 || z11) {
            j();
            postInvalidate();
        }
    }

    private void j() {
        this.f37704e = g.b(this.f37700a);
        this.f37705f = g.a(this.f37700a);
        this.f37709j = null;
        this.f37714o.reset();
        this.f37714o.addCircle(this.f37700a.centerX(), this.f37700a.centerY(), Math.min(this.f37700a.width(), this.f37700a.height()) / 2.0f, Path.Direction.CW);
    }

    protected void a(@NonNull Canvas canvas) {
        if (this.f37711l) {
            if (this.f37709j == null && !this.f37700a.isEmpty()) {
                this.f37709j = new float[(this.f37706g * 4) + (this.f37707h * 4)];
                int i9 = 0;
                for (int i10 = 0; i10 < this.f37706g; i10++) {
                    float[] fArr = this.f37709j;
                    int i11 = i9 + 1;
                    RectF rectF = this.f37700a;
                    fArr[i9] = rectF.left;
                    int i12 = i11 + 1;
                    float f10 = i10 + 1.0f;
                    float height = rectF.height() * (f10 / (this.f37706g + 1));
                    RectF rectF2 = this.f37700a;
                    fArr[i11] = height + rectF2.top;
                    float[] fArr2 = this.f37709j;
                    int i13 = i12 + 1;
                    fArr2[i12] = rectF2.right;
                    i9 = i13 + 1;
                    fArr2[i13] = (rectF2.height() * (f10 / (this.f37706g + 1))) + this.f37700a.top;
                }
                for (int i14 = 0; i14 < this.f37707h; i14++) {
                    float[] fArr3 = this.f37709j;
                    int i15 = i9 + 1;
                    float f11 = i14 + 1.0f;
                    float width = this.f37700a.width() * (f11 / (this.f37707h + 1));
                    RectF rectF3 = this.f37700a;
                    fArr3[i9] = width + rectF3.left;
                    float[] fArr4 = this.f37709j;
                    int i16 = i15 + 1;
                    fArr4[i15] = rectF3.top;
                    int i17 = i16 + 1;
                    float width2 = rectF3.width() * (f11 / (this.f37707h + 1));
                    RectF rectF4 = this.f37700a;
                    fArr4[i16] = width2 + rectF4.left;
                    i9 = i17 + 1;
                    this.f37709j[i17] = rectF4.bottom;
                }
            }
            float[] fArr5 = this.f37709j;
            if (fArr5 != null) {
                canvas.drawLines(fArr5, this.f37716q);
            }
        }
        if (this.f37710k) {
            canvas.drawRect(this.f37700a, this.f37717r);
        }
        if (this.f37719t != 0) {
            canvas.save();
            this.f37701b.set(this.f37700a);
            RectF rectF5 = this.f37701b;
            int i18 = this.f37725z;
            rectF5.inset(i18, -i18);
            canvas.clipRect(this.f37701b, Region.Op.DIFFERENCE);
            this.f37701b.set(this.f37700a);
            RectF rectF6 = this.f37701b;
            int i19 = this.f37725z;
            rectF6.inset(-i19, i19);
            canvas.clipRect(this.f37701b, Region.Op.DIFFERENCE);
            canvas.drawRect(this.f37700a, this.f37718s);
            canvas.restore();
        }
    }

    protected void b(@NonNull Canvas canvas) {
        canvas.save();
        if (this.f37712m) {
            canvas.clipPath(this.f37714o, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.f37700a, Region.Op.DIFFERENCE);
        }
        canvas.drawColor(this.f37713n);
        canvas.restore();
        if (this.f37712m) {
            canvas.drawCircle(this.f37700a.centerX(), this.f37700a.centerY(), Math.min(this.f37700a.width(), this.f37700a.height()) / 2.0f, this.f37715p);
        }
    }

    protected void d() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g(@NonNull TypedArray typedArray) {
        this.f37712m = typedArray.getBoolean(R$styleable.ucrop_UCropView_ucrop_circle_dimmed_layer, false);
        int color = typedArray.getColor(R$styleable.ucrop_UCropView_ucrop_dimmed_color, getResources().getColor(R$color.ucrop_color_default_dimmed));
        this.f37713n = color;
        this.f37715p.setColor(color);
        this.f37715p.setStyle(Paint.Style.STROKE);
        this.f37715p.setStrokeWidth(1.0f);
        e(typedArray);
        this.f37710k = typedArray.getBoolean(R$styleable.ucrop_UCropView_ucrop_show_frame, true);
        f(typedArray);
        this.f37711l = typedArray.getBoolean(R$styleable.ucrop_UCropView_ucrop_show_grid, true);
    }

    @NonNull
    public RectF getCropViewRect() {
        return this.f37700a;
    }

    public int getFreestyleCropMode() {
        return this.f37719t;
    }

    public d getOverlayViewChangeListener() {
        return this.A;
    }

    public void h() {
        int i9 = this.f37702c;
        float f10 = this.f37708i;
        int i10 = (int) (i9 / f10);
        int i11 = this.f37703d;
        if (i10 > i11) {
            int i12 = (int) (i11 * f10);
            int i13 = (i9 - i12) / 2;
            this.f37700a.set(getPaddingLeft() + i13, getPaddingTop(), getPaddingLeft() + i12 + i13, getPaddingTop() + this.f37703d);
        } else {
            int i14 = (i11 - i10) / 2;
            this.f37700a.set(getPaddingLeft(), getPaddingTop() + i14, getPaddingLeft() + this.f37702c, getPaddingTop() + i10 + i14);
        }
        d dVar = this.A;
        if (dVar != null) {
            dVar.a(this.f37700a);
        }
        j();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        b(canvas);
        a(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (z10) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            this.f37702c = (getWidth() - getPaddingRight()) - paddingLeft;
            this.f37703d = (getHeight() - getPaddingBottom()) - paddingTop;
            if (this.B) {
                this.B = false;
                setTargetAspectRatio(this.f37708i);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f37700a.isEmpty() && this.f37719t != 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if ((motionEvent.getAction() & 255) == 0) {
                int c10 = c(x10, y10);
                this.f37722w = c10;
                boolean z10 = c10 != -1;
                if (!z10) {
                    this.f37720u = -1.0f;
                    this.f37721v = -1.0f;
                } else if (this.f37720u < 0.0f) {
                    this.f37720u = x10;
                    this.f37721v = y10;
                }
                return z10;
            } else if ((motionEvent.getAction() & 255) == 2 && motionEvent.getPointerCount() == 1 && this.f37722w != -1) {
                float min = Math.min(Math.max(x10, getPaddingLeft()), getWidth() - getPaddingRight());
                float min2 = Math.min(Math.max(y10, getPaddingTop()), getHeight() - getPaddingBottom());
                i(min, min2);
                this.f37720u = min;
                this.f37721v = min2;
                return true;
            } else if ((motionEvent.getAction() & 255) == 1) {
                this.f37720u = -1.0f;
                this.f37721v = -1.0f;
                this.f37722w = -1;
                d dVar = this.A;
                if (dVar != null) {
                    dVar.a(this.f37700a);
                }
            }
        }
        return false;
    }

    public void setCircleDimmedLayer(boolean z10) {
        this.f37712m = z10;
    }

    public void setCropFrameColor(@ColorInt int i9) {
        this.f37717r.setColor(i9);
    }

    public void setCropFrameStrokeWidth(@IntRange(from = 0) int i9) {
        this.f37717r.setStrokeWidth(i9);
    }

    public void setCropGridColor(@ColorInt int i9) {
        this.f37716q.setColor(i9);
    }

    public void setCropGridColumnCount(@IntRange(from = 0) int i9) {
        this.f37707h = i9;
        this.f37709j = null;
    }

    public void setCropGridCornerColor(@ColorInt int i9) {
        this.f37718s.setColor(i9);
    }

    public void setCropGridRowCount(@IntRange(from = 0) int i9) {
        this.f37706g = i9;
        this.f37709j = null;
    }

    public void setCropGridStrokeWidth(@IntRange(from = 0) int i9) {
        this.f37716q.setStrokeWidth(i9);
    }

    public void setDimmedColor(@ColorInt int i9) {
        this.f37713n = i9;
    }

    @Deprecated
    public void setFreestyleCropEnabled(boolean z10) {
        this.f37719t = z10 ? 1 : 0;
    }

    public void setFreestyleCropMode(int i9) {
        this.f37719t = i9;
        postInvalidate();
    }

    public void setOverlayViewChangeListener(d dVar) {
        this.A = dVar;
    }

    public void setShowCropFrame(boolean z10) {
        this.f37710k = z10;
    }

    public void setShowCropGrid(boolean z10) {
        this.f37711l = z10;
    }

    public void setTargetAspectRatio(float f10) {
        this.f37708i = f10;
        if (this.f37702c > 0) {
            h();
            postInvalidate();
            return;
        }
        this.B = true;
    }

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37700a = new RectF();
        this.f37701b = new RectF();
        this.f37709j = null;
        this.f37714o = new Path();
        this.f37715p = new Paint(1);
        this.f37716q = new Paint(1);
        this.f37717r = new Paint(1);
        this.f37718s = new Paint(1);
        this.f37719t = 0;
        this.f37720u = -1.0f;
        this.f37721v = -1.0f;
        this.f37722w = -1;
        this.f37723x = getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_rect_corner_touch_threshold);
        this.f37724y = getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_rect_min_size);
        this.f37725z = getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_rect_corner_touch_area_line_length);
        d();
    }
}
