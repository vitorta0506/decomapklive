package com.guochao.faceshow.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes4.dex */
public class TCReversalSeekBar extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f26808a;

    /* renamed from: b  reason: collision with root package name */
    private int f26809b;

    /* renamed from: c  reason: collision with root package name */
    private int f26810c;

    /* renamed from: d  reason: collision with root package name */
    private int f26811d;

    /* renamed from: e  reason: collision with root package name */
    private int f26812e;

    /* renamed from: f  reason: collision with root package name */
    private int f26813f;

    /* renamed from: g  reason: collision with root package name */
    private int f26814g;

    /* renamed from: h  reason: collision with root package name */
    private int f26815h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f26816i;

    /* renamed from: j  reason: collision with root package name */
    private Paint f26817j;

    /* renamed from: k  reason: collision with root package name */
    private Paint f26818k;

    /* renamed from: l  reason: collision with root package name */
    private float f26819l;

    /* renamed from: m  reason: collision with root package name */
    private float f26820m;

    /* renamed from: n  reason: collision with root package name */
    private float f26821n;

    /* renamed from: o  reason: collision with root package name */
    private float f26822o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f26823p;

    /* renamed from: q  reason: collision with root package name */
    private float f26824q;

    /* renamed from: r  reason: collision with root package name */
    private float f26825r;

    /* renamed from: s  reason: collision with root package name */
    private Drawable f26826s;

    /* renamed from: t  reason: collision with root package name */
    private int f26827t;

    /* renamed from: u  reason: collision with root package name */
    private float f26828u;

    /* renamed from: v  reason: collision with root package name */
    private a f26829v;

    /* loaded from: classes4.dex */
    public interface a {
        void a();

        void b(float f10);

        void c();
    }

    public TCReversalSeekBar(Context context) {
        super(context);
        this.f26824q = 0.0f;
        h(null);
    }

    private void a() {
        float d10 = d(this.f26824q);
        this.f26819l = d10;
        this.f26820m = this.f26826s.getIntrinsicWidth() + d10;
        this.f26821n = 0.0f;
        this.f26822o = this.f26809b;
    }

    private void b() {
        float f10 = this.f26819l;
        if (f10 == 0.0f) {
            c(1.0f);
        } else if (this.f26820m == this.f26808a) {
            c(0.0f);
        } else {
            float f11 = f10 + this.f26827t;
            int i9 = this.f26815h;
            if (f11 == i9) {
                c(0.0f);
            } else {
                c((Math.abs(i9 - f11) / this.f26815h) * 1.0f);
            }
        }
    }

    private void c(float f10) {
        this.f26828u = f10;
        a aVar = this.f26829v;
        if (aVar != null) {
            aVar.b(f10);
        }
    }

    private float d(float f10) {
        return this.f26819l + f10;
    }

    private boolean e(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        motionEvent.getY();
        if (x10 < this.f26819l - 100.0f || x10 > this.f26820m + 100.0f) {
            return false;
        }
        a aVar = this.f26829v;
        if (aVar != null) {
            aVar.c();
        }
        this.f26823p = true;
        this.f26825r = x10;
        return true;
    }

    private boolean f(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        motionEvent.getY();
        if (this.f26823p) {
            this.f26824q = x10 - this.f26825r;
            a();
            if (this.f26820m - this.f26827t <= this.f26810c) {
                this.f26819l = 0.0f;
                this.f26820m = 0.0f + this.f26826s.getIntrinsicWidth();
            }
            if (this.f26819l + this.f26827t >= this.f26811d) {
                int i9 = this.f26808a;
                this.f26820m = i9;
                this.f26819l = i9 - this.f26826s.getIntrinsicWidth();
            }
            invalidate();
            b();
            this.f26825r = x10;
            return true;
        }
        return false;
    }

    private boolean g(MotionEvent motionEvent) {
        motionEvent.getX();
        motionEvent.getY();
        if (this.f26823p) {
            this.f26823p = false;
            a aVar = this.f26829v;
            if (aVar != null) {
                aVar.a();
                return true;
            }
            return true;
        }
        return false;
    }

    private void h(AttributeSet attributeSet) {
        int parseColor = Color.parseColor("#FF4081");
        int parseColor2 = Color.parseColor("#BBBBBB");
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.TCReversalSeekBar);
            Drawable drawable = obtainStyledAttributes.getDrawable(1);
            this.f26826s = drawable;
            this.f26827t = drawable.getIntrinsicWidth() / 2;
            parseColor = obtainStyledAttributes.getColor(3, Color.parseColor("#FF4081"));
            int color = obtainStyledAttributes.getColor(0, Color.parseColor("#BBBBBB"));
            this.f26828u = obtainStyledAttributes.getFloat(2, 0.0f);
            obtainStyledAttributes.recycle();
            parseColor2 = color;
        }
        Paint paint = new Paint();
        this.f26816i = paint;
        paint.setColor(parseColor2);
        Paint paint2 = new Paint();
        this.f26817j = paint2;
        paint2.setColor(SupportMenu.CATEGORY_MASK);
        Paint paint3 = new Paint();
        this.f26818k = paint3;
        paint3.setColor(parseColor);
    }

    public float getProgress() {
        return this.f26828u;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = new RectF();
        rectF.left = this.f26810c;
        rectF.right = this.f26811d;
        rectF.top = this.f26812e;
        rectF.bottom = this.f26813f;
        if (q7.a.e().j()) {
            rectF.sort();
        }
        int i9 = this.f26814g;
        canvas.drawRoundRect(rectF, i9, i9, this.f26816i);
        RectF rectF2 = new RectF();
        rectF2.left = this.f26810c;
        rectF2.top = this.f26812e;
        rectF2.right = this.f26820m - this.f26827t;
        rectF2.bottom = this.f26813f;
        if (q7.a.e().j()) {
            rectF2.sort();
        }
        int i10 = this.f26814g;
        canvas.drawRoundRect(rectF2, i10, i10, this.f26818k);
        Rect rect = new Rect();
        rect.left = (int) this.f26819l;
        rect.top = (int) this.f26821n;
        rect.right = (int) this.f26820m;
        rect.bottom = (int) this.f26822o;
        this.f26826s.setBounds(rect);
        this.f26826s.draw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        this.f26808a = i9;
        this.f26809b = i10;
        int i13 = this.f26827t;
        this.f26810c = i13;
        int i14 = i9 - i13;
        this.f26811d = i14;
        this.f26812e = 18;
        this.f26813f = i10 - 18;
        this.f26814g = i10 / 2;
        this.f26815h = i9;
        float f10 = (i9 - ((i14 - i13) * this.f26828u)) - i13;
        this.f26819l = f10;
        this.f26825r = f10;
        a();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action == 2) {
                        return f(motionEvent);
                    }
                    if (action != 3) {
                        return false;
                    }
                }
                return g(motionEvent);
            }
            return e(motionEvent);
        }
        return false;
    }

    public void setOnSeekProgressListener(a aVar) {
        this.f26829v = aVar;
    }

    public void setProgress(float f10) {
        if (f10 >= 0.0f && f10 <= 1.0d) {
            this.f26828u = f10;
            return;
        }
        throw new IllegalArgumentException("progress must between 0 and 1");
    }

    public TCReversalSeekBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26824q = 0.0f;
        h(attributeSet);
    }

    public TCReversalSeekBar(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26824q = 0.0f;
        h(attributeSet);
    }
}
