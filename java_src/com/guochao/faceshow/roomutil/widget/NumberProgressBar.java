package com.guochao.faceshow.roomutil.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.faceshow.R$styleable;
import com.tencent.thumbplayer.api.TPOptionalID;
/* loaded from: classes4.dex */
public class NumberProgressBar extends View {
    private float A;
    private boolean B;
    private boolean C;
    private boolean D;

    /* renamed from: a  reason: collision with root package name */
    private long f26196a;

    /* renamed from: b  reason: collision with root package name */
    private long f26197b;

    /* renamed from: c  reason: collision with root package name */
    private int f26198c;

    /* renamed from: d  reason: collision with root package name */
    private int f26199d;

    /* renamed from: e  reason: collision with root package name */
    private int f26200e;

    /* renamed from: f  reason: collision with root package name */
    private float f26201f;

    /* renamed from: g  reason: collision with root package name */
    private float f26202g;

    /* renamed from: h  reason: collision with root package name */
    private float f26203h;

    /* renamed from: i  reason: collision with root package name */
    private String f26204i;

    /* renamed from: j  reason: collision with root package name */
    private String f26205j;

    /* renamed from: k  reason: collision with root package name */
    private final int f26206k;

    /* renamed from: l  reason: collision with root package name */
    private final int f26207l;

    /* renamed from: m  reason: collision with root package name */
    private final int f26208m;

    /* renamed from: n  reason: collision with root package name */
    private final float f26209n;

    /* renamed from: o  reason: collision with root package name */
    private final float f26210o;

    /* renamed from: p  reason: collision with root package name */
    private final float f26211p;

    /* renamed from: q  reason: collision with root package name */
    private final float f26212q;

    /* renamed from: r  reason: collision with root package name */
    private float f26213r;

    /* renamed from: s  reason: collision with root package name */
    private float f26214s;

    /* renamed from: t  reason: collision with root package name */
    private float f26215t;

    /* renamed from: u  reason: collision with root package name */
    private String f26216u;

    /* renamed from: v  reason: collision with root package name */
    private Paint f26217v;

    /* renamed from: w  reason: collision with root package name */
    private Paint f26218w;

    /* renamed from: x  reason: collision with root package name */
    private Paint f26219x;

    /* renamed from: y  reason: collision with root package name */
    private RectF f26220y;

    /* renamed from: z  reason: collision with root package name */
    private RectF f26221z;

    /* loaded from: classes4.dex */
    public enum ProgressTextVisibility {
        Visible,
        Invisible
    }

    public NumberProgressBar(Context context) {
        this(context, null);
    }

    private void a() {
        this.f26216u = String.format(TimeModel.NUMBER_FORMAT, Long.valueOf((getProgress() * 100) / getMax()));
        String str = this.f26205j + this.f26216u + this.f26204i;
        this.f26216u = str;
        this.f26213r = this.f26219x.measureText(str);
        if (getProgress() == 0) {
            this.C = false;
            this.f26214s = getPaddingLeft();
        } else {
            this.C = true;
            this.f26221z.left = getPaddingLeft();
            this.f26221z.top = (getHeight() / 2.0f) - (this.f26202g / 2.0f);
            this.f26221z.right = (((((getWidth() - getPaddingLeft()) - getPaddingRight()) / (((float) getMax()) * 1.0f)) * ((float) getProgress())) - this.A) + getPaddingLeft();
            this.f26221z.bottom = (getHeight() / 2.0f) + (this.f26202g / 2.0f);
            this.f26214s = this.f26221z.right + this.A;
        }
        this.f26215t = (int) ((getHeight() / 2.0f) - ((this.f26219x.descent() + this.f26219x.ascent()) / 2.0f));
        if (this.f26214s + this.f26213r >= getWidth() - getPaddingRight()) {
            float width = (getWidth() - getPaddingRight()) - this.f26213r;
            this.f26214s = width;
            this.f26221z.right = width - this.A;
        }
        float f10 = this.f26214s + this.f26213r + this.A;
        if (f10 >= getWidth() - getPaddingRight()) {
            this.B = false;
            return;
        }
        this.B = true;
        RectF rectF = this.f26220y;
        rectF.left = f10;
        rectF.right = getWidth() - getPaddingRight();
        this.f26220y.top = (getHeight() / 2.0f) + ((-this.f26203h) / 2.0f);
        this.f26220y.bottom = (getHeight() / 2.0f) + (this.f26203h / 2.0f);
    }

    private void b() {
        this.f26221z.left = getPaddingLeft();
        this.f26221z.top = (getHeight() / 2.0f) - (this.f26202g / 2.0f);
        this.f26221z.right = ((((getWidth() - getPaddingLeft()) - getPaddingRight()) / (((float) getMax()) * 1.0f)) * ((float) getProgress())) + getPaddingLeft();
        this.f26221z.bottom = (getHeight() / 2.0f) + (this.f26202g / 2.0f);
        RectF rectF = this.f26220y;
        rectF.left = this.f26221z.right;
        rectF.right = getWidth() - getPaddingRight();
        this.f26220y.top = (getHeight() / 2.0f) + ((-this.f26203h) / 2.0f);
        this.f26220y.bottom = (getHeight() / 2.0f) + (this.f26203h / 2.0f);
    }

    private void d() {
        Paint paint = new Paint(1);
        this.f26217v = paint;
        paint.setColor(this.f26198c);
        Paint paint2 = new Paint(1);
        this.f26218w = paint2;
        paint2.setColor(this.f26199d);
        Paint paint3 = new Paint(1);
        this.f26219x = paint3;
        paint3.setColor(this.f26200e);
        this.f26219x.setTextSize(this.f26201f);
    }

    private int e(int i9, boolean z10) {
        int paddingTop;
        int paddingBottom;
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        if (z10) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i10 = paddingTop + paddingBottom;
        if (mode == 1073741824) {
            return size;
        }
        int suggestedMinimumWidth = (z10 ? getSuggestedMinimumWidth() : getSuggestedMinimumHeight()) + i10;
        if (mode == Integer.MIN_VALUE) {
            if (z10) {
                return Math.max(suggestedMinimumWidth, size);
            }
            return Math.min(suggestedMinimumWidth, size);
        }
        return suggestedMinimumWidth;
    }

    public float c(float f10) {
        return (f10 * getResources().getDisplayMetrics().density) + 0.5f;
    }

    public float f(float f10) {
        return f10 * getResources().getDisplayMetrics().scaledDensity;
    }

    public long getMax() {
        return this.f26196a;
    }

    public String getPrefix() {
        return this.f26205j;
    }

    public long getProgress() {
        return this.f26197b;
    }

    public float getProgressTextSize() {
        return this.f26201f;
    }

    public boolean getProgressTextVisibility() {
        return this.D;
    }

    public int getReachedBarColor() {
        return this.f26198c;
    }

    public float getReachedBarHeight() {
        return this.f26202g;
    }

    public String getSuffix() {
        return this.f26204i;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max((int) this.f26201f, Math.max((int) this.f26202g, (int) this.f26203h));
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return (int) this.f26201f;
    }

    public int getTextColor() {
        return this.f26200e;
    }

    public int getUnreachedBarColor() {
        return this.f26199d;
    }

    public float getUnreachedBarHeight() {
        return this.f26203h;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.D) {
            a();
        } else {
            b();
        }
        if (this.C) {
            canvas.drawRect(this.f26221z, this.f26217v);
        }
        if (this.B) {
            canvas.drawRect(this.f26220y, this.f26218w);
        }
        if (this.D) {
            canvas.drawText(this.f26216u, this.f26214s, this.f26215t, this.f26219x);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        setMeasuredDimension(e(i9, true), e(i10, false));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f26200e = bundle.getInt("text_color");
            this.f26201f = bundle.getFloat("text_size");
            this.f26202g = bundle.getFloat("reached_bar_height");
            this.f26203h = bundle.getFloat("unreached_bar_height");
            this.f26198c = bundle.getInt("reached_bar_color");
            this.f26199d = bundle.getInt("unreached_bar_color");
            d();
            setMax(bundle.getLong("max"));
            setProgress(bundle.getLong("progress"));
            setPrefix(bundle.getString("prefix"));
            setSuffix(bundle.getString("suffix"));
            setProgressTextVisibility(bundle.getBoolean("text_visibility") ? ProgressTextVisibility.Visible : ProgressTextVisibility.Invisible);
            super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putInt("text_color", getTextColor());
        bundle.putFloat("text_size", getProgressTextSize());
        bundle.putFloat("reached_bar_height", getReachedBarHeight());
        bundle.putFloat("unreached_bar_height", getUnreachedBarHeight());
        bundle.putInt("reached_bar_color", getReachedBarColor());
        bundle.putInt("unreached_bar_color", getUnreachedBarColor());
        bundle.putLong("max", getMax());
        bundle.putLong("progress", getProgress());
        bundle.putString("suffix", getSuffix());
        bundle.putString("prefix", getPrefix());
        bundle.putBoolean("text_visibility", getProgressTextVisibility());
        return bundle;
    }

    public void setMax(long j10) {
        if (j10 > 0) {
            this.f26196a = j10;
            invalidate();
        }
    }

    public void setPrefix(String str) {
        if (str == null) {
            this.f26205j = "";
        } else {
            this.f26205j = str;
        }
    }

    public void setProgress(long j10) {
        if (j10 > getMax() || j10 < 0) {
            return;
        }
        this.f26197b = j10;
        invalidate();
    }

    public void setProgressTextColor(int i9) {
        this.f26200e = i9;
        this.f26219x.setColor(i9);
        invalidate();
    }

    public void setProgressTextSize(float f10) {
        this.f26201f = f10;
        this.f26219x.setTextSize(f10);
        invalidate();
    }

    public void setProgressTextVisibility(ProgressTextVisibility progressTextVisibility) {
        this.D = progressTextVisibility == ProgressTextVisibility.Visible;
        invalidate();
    }

    public void setReachedBarColor(int i9) {
        this.f26198c = i9;
        this.f26217v.setColor(i9);
        invalidate();
    }

    public void setReachedBarHeight(float f10) {
        this.f26202g = f10;
    }

    public void setSuffix(String str) {
        if (str == null) {
            this.f26204i = "";
        } else {
            this.f26204i = str;
        }
    }

    public void setUnreachedBarColor(int i9) {
        this.f26199d = i9;
        this.f26218w.setColor(i9);
        invalidate();
    }

    public void setUnreachedBarHeight(float f10) {
        this.f26203h = f10;
    }

    public NumberProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NumberProgressBar(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26196a = 100L;
        this.f26197b = 0L;
        this.f26204i = "%";
        this.f26205j = "";
        int rgb = Color.rgb(66, (int) TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, 241);
        this.f26206k = rgb;
        int rgb2 = Color.rgb(66, (int) TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, 241);
        this.f26207l = rgb2;
        int rgb3 = Color.rgb(204, 204, 204);
        this.f26208m = rgb3;
        this.f26220y = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.f26221z = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.B = true;
        this.C = true;
        this.D = true;
        float c10 = c(1.5f);
        this.f26211p = c10;
        float c11 = c(1.0f);
        this.f26212q = c11;
        float f10 = f(10.0f);
        this.f26210o = f10;
        float c12 = c(3.0f);
        this.f26209n = c12;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.NumberProgressBar, i9, 0);
        this.f26198c = obtainStyledAttributes.getColor(3, rgb2);
        this.f26199d = obtainStyledAttributes.getColor(9, rgb3);
        this.f26200e = obtainStyledAttributes.getColor(4, rgb);
        this.f26201f = obtainStyledAttributes.getDimension(6, f10);
        this.f26202g = obtainStyledAttributes.getDimension(2, c10);
        this.f26203h = obtainStyledAttributes.getDimension(8, c11);
        this.A = obtainStyledAttributes.getDimension(5, c12);
        if (obtainStyledAttributes.getInt(7, 0) != 0) {
            this.D = false;
        }
        setProgress(obtainStyledAttributes.getInt(0, 0));
        setMax(obtainStyledAttributes.getInt(1, 100));
        obtainStyledAttributes.recycle();
        d();
    }
}
