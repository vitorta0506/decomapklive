package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Pair;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.R$styleable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class MagicTextView extends FaceCastTextViewBridge {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<a> f23868a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<a> f23869b;

    /* renamed from: c  reason: collision with root package name */
    private WeakHashMap<String, Pair<Canvas, Bitmap>> f23870c;

    /* renamed from: d  reason: collision with root package name */
    private Canvas f23871d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f23872e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f23873f;

    /* renamed from: g  reason: collision with root package name */
    private float f23874g;

    /* renamed from: h  reason: collision with root package name */
    private Integer f23875h;

    /* renamed from: i  reason: collision with root package name */
    private Paint.Join f23876i;

    /* renamed from: j  reason: collision with root package name */
    private float f23877j;

    /* renamed from: k  reason: collision with root package name */
    private int[] f23878k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23879l;

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        float f23880a;

        /* renamed from: b  reason: collision with root package name */
        float f23881b;

        /* renamed from: c  reason: collision with root package name */
        float f23882c;

        /* renamed from: d  reason: collision with root package name */
        int f23883d;

        public a(float f10, float f11, float f12, int i9) {
            this.f23880a = f10;
            this.f23881b = f11;
            this.f23882c = f12;
            this.f23883d = i9;
        }
    }

    public MagicTextView(Context context) {
        super(context);
        this.f23879l = false;
        e(null);
    }

    private void d() {
        String format = String.format("%dx%d", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
        Pair<Canvas, Bitmap> pair = this.f23870c.get(format);
        if (pair != null) {
            this.f23871d = (Canvas) pair.first;
            this.f23872e = (Bitmap) pair.second;
            return;
        }
        this.f23871d = new Canvas();
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        this.f23872e = createBitmap;
        this.f23871d.setBitmap(createBitmap);
        this.f23870c.put(format, new Pair<>(this.f23871d, this.f23872e));
    }

    public void a(float f10, float f11, float f12, int i9) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f23869b.add(new a(f10, f11, f12, i9));
    }

    public void b(float f10, float f11, float f12, int i9) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f23868a.add(new a(f10, f11, f12, i9));
    }

    public void c() {
        this.f23878k = new int[]{getCompoundPaddingLeft(), getCompoundPaddingRight(), getCompoundPaddingTop(), getCompoundPaddingBottom()};
        this.f23879l = true;
    }

    public void e(AttributeSet attributeSet) {
        this.f23868a = new ArrayList<>();
        this.f23869b = new ArrayList<>();
        if (this.f23870c == null) {
            this.f23870c = new WeakHashMap<>();
        }
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MagicTextView);
            String string = obtainStyledAttributes.getString(13);
            if (string != null) {
                setTypeface(Typeface.createFromAsset(getContext().getAssets(), String.format("fonts/%s.ttf", string)));
            }
            if (obtainStyledAttributes.hasValue(0)) {
                Drawable drawable = obtainStyledAttributes.getDrawable(0);
                if (drawable != null) {
                    setForegroundDrawable(drawable);
                } else {
                    setTextColor(obtainStyledAttributes.getColor(0, ViewCompat.MEASURED_STATE_MASK));
                }
            }
            if (obtainStyledAttributes.hasValue(1)) {
                a(obtainStyledAttributes.getFloat(4, 0.0f), obtainStyledAttributes.getFloat(2, 0.0f), obtainStyledAttributes.getFloat(3, 0.0f), obtainStyledAttributes.getColor(1, ViewCompat.MEASURED_STATE_MASK));
            }
            if (obtainStyledAttributes.hasValue(5)) {
                b(obtainStyledAttributes.getFloat(8, 0.0f), obtainStyledAttributes.getFloat(6, 0.0f), obtainStyledAttributes.getFloat(7, 0.0f), obtainStyledAttributes.getColor(5, ViewCompat.MEASURED_STATE_MASK));
            }
            if (obtainStyledAttributes.hasValue(11)) {
                float f10 = obtainStyledAttributes.getFloat(12, 1.0f);
                int color = obtainStyledAttributes.getColor(11, ViewCompat.MEASURED_STATE_MASK);
                float f11 = obtainStyledAttributes.getFloat(10, 10.0f);
                Paint.Join join = null;
                int i9 = obtainStyledAttributes.getInt(9, 0);
                if (i9 == 0) {
                    join = Paint.Join.MITER;
                } else if (i9 == 1) {
                    join = Paint.Join.BEVEL;
                } else if (i9 == 2) {
                    join = Paint.Join.ROUND;
                }
                f(f10, color, join, f11);
            }
        }
    }

    public void f(float f10, int i9, Paint.Join join, float f11) {
        this.f23874g = f10;
        this.f23875h = Integer.valueOf(i9);
        this.f23876i = join;
        this.f23877j = f11;
    }

    public void g() {
        this.f23879l = false;
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingBottom() {
        return !this.f23879l ? super.getCompoundPaddingBottom() : this.f23878k[3];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return !this.f23879l ? super.getCompoundPaddingLeft() : this.f23878k[0];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return !this.f23879l ? super.getCompoundPaddingRight() : this.f23878k[1];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingTop() {
        return !this.f23879l ? super.getCompoundPaddingTop() : this.f23878k[2];
    }

    @Override // android.view.View
    public Drawable getForeground() {
        Drawable drawable = this.f23873f;
        return drawable == null ? drawable : new ColorDrawable(getCurrentTextColor());
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.f23879l) {
            return;
        }
        super.invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c();
        Drawable background = getBackground();
        Drawable[] compoundDrawables = getCompoundDrawables();
        int currentTextColor = getCurrentTextColor();
        setCompoundDrawables(null, null, null, null);
        Iterator<a> it = this.f23868a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            setShadowLayer(next.f23880a, next.f23881b, next.f23882c, next.f23883d);
            super.onDraw(canvas);
        }
        setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        setTextColor(currentTextColor);
        Drawable drawable = this.f23873f;
        if (drawable != null && (drawable instanceof BitmapDrawable)) {
            d();
            super.onDraw(this.f23871d);
            ((BitmapDrawable) this.f23873f).getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            this.f23873f.setBounds(canvas.getClipBounds());
            this.f23873f.draw(this.f23871d);
            canvas.drawBitmap(this.f23872e, 0.0f, 0.0f, (Paint) null);
            this.f23871d.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        if (this.f23875h != null) {
            TextPaint paint = getPaint();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeJoin(this.f23876i);
            paint.setStrokeMiter(this.f23877j);
            setTextColor(this.f23875h.intValue());
            paint.setStrokeWidth(this.f23874g);
            super.onDraw(canvas);
            paint.setStyle(Paint.Style.FILL);
            setTextColor(currentTextColor);
        }
        if (this.f23869b.size() > 0) {
            d();
            TextPaint paint2 = getPaint();
            Iterator<a> it2 = this.f23869b.iterator();
            while (it2.hasNext()) {
                a next2 = it2.next();
                setTextColor(next2.f23883d);
                super.onDraw(this.f23871d);
                setTextColor(ViewCompat.MEASURED_STATE_MASK);
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                paint2.setMaskFilter(new BlurMaskFilter(next2.f23880a, BlurMaskFilter.Blur.NORMAL));
                this.f23871d.save();
                this.f23871d.translate(next2.f23881b, next2.f23882c);
                super.onDraw(this.f23871d);
                this.f23871d.restore();
                canvas.drawBitmap(this.f23872e, 0.0f, 0.0f, (Paint) null);
                this.f23871d.drawColor(0, PorterDuff.Mode.CLEAR);
                paint2.setXfermode(null);
                paint2.setMaskFilter(null);
                setTextColor(currentTextColor);
                setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
        }
        if (compoundDrawables != null) {
            setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
        }
        setBackgroundDrawable(background);
        setTextColor(currentTextColor);
        g();
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.f23879l) {
            return;
        }
        super.postInvalidate();
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.f23879l) {
            return;
        }
        super.requestLayout();
    }

    public void setForegroundDrawable(Drawable drawable) {
        this.f23873f = drawable;
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        if (this.f23879l) {
            return;
        }
        super.invalidate(rect);
    }

    @Override // android.view.View
    public void postInvalidate(int i9, int i10, int i11, int i12) {
        if (this.f23879l) {
            return;
        }
        super.postInvalidate(i9, i10, i11, i12);
    }

    @Override // android.view.View
    public void invalidate(int i9, int i10, int i11, int i12) {
        if (this.f23879l) {
            return;
        }
        super.invalidate(i9, i10, i11, i12);
    }

    public MagicTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23879l = false;
        e(attributeSet);
    }

    public MagicTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23879l = false;
        e(attributeSet);
    }
}
