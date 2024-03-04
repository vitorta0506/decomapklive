package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class VipBackgroundView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private int[] f24100a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f24101b;

    /* renamed from: c  reason: collision with root package name */
    private int f24102c;

    /* renamed from: d  reason: collision with root package name */
    Paint f24103d;

    /* renamed from: e  reason: collision with root package name */
    Paint f24104e;

    /* renamed from: f  reason: collision with root package name */
    RectF f24105f;

    /* renamed from: g  reason: collision with root package name */
    private int f24106g;

    /* renamed from: h  reason: collision with root package name */
    private int f24107h;

    public VipBackgroundView(@NonNull Context context) {
        super(context);
        this.f24100a = new int[]{Color.parseColor("#FFF76B"), Color.parseColor("#FFB92E")};
        this.f24101b = new int[2];
        this.f24103d = new Paint();
        this.f24104e = new Paint();
        this.f24105f = new RectF();
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        setWillNotDraw(false);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.VipBackgroundView);
            try {
                this.f24106g = obtainStyledAttributes.getDimensionPixelSize(6, DensityUtil.dp2px(1.0f));
                int color = obtainStyledAttributes.getColor(5, Color.parseColor("#FFF76B"));
                int color2 = obtainStyledAttributes.getColor(4, 0);
                if (color2 == 0) {
                    color2 = color;
                }
                int[] iArr = this.f24100a;
                iArr[0] = color;
                iArr[1] = color2;
                int color3 = obtainStyledAttributes.getColor(3, Color.parseColor("#665A1900"));
                int color4 = obtainStyledAttributes.getColor(2, 0);
                if (color4 == 0) {
                    color4 = color3;
                }
                int[] iArr2 = this.f24101b;
                iArr2[0] = color3;
                iArr2[1] = color4;
                this.f24102c = obtainStyledAttributes.getInt(1, 1);
                this.f24107h = obtainStyledAttributes.getDimensionPixelSize(0, DensityUtil.dp2px(20.0f));
            } catch (Exception unused) {
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
            obtainStyledAttributes.recycle();
        }
        this.f24103d.setStyle(Paint.Style.STROKE);
        this.f24103d.setAntiAlias(true);
        this.f24103d.setDither(true);
        this.f24103d.setStrokeWidth(this.f24106g);
        this.f24104e.setAntiAlias(true);
        this.f24104e.setDither(true);
        this.f24104e.setColor(Color.parseColor("#665A1900"));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getBackground() != null) {
            return;
        }
        int i9 = this.f24102c;
        if (i9 == 1) {
            RectF rectF = this.f24105f;
            int i10 = this.f24106g;
            rectF.set(i10, i10, getMeasuredWidth() - this.f24106g, getMeasuredHeight() - this.f24106g);
        } else if (i9 == 2) {
            RectF rectF2 = this.f24105f;
            int i11 = this.f24106g;
            rectF2.set(i11, i11, (getMeasuredWidth() - this.f24106g) + this.f24107h, getMeasuredHeight() - this.f24106g);
        } else if (i9 == 3) {
            RectF rectF3 = this.f24105f;
            int i12 = this.f24106g;
            rectF3.set(i12 - this.f24107h, i12, getMeasuredWidth() - this.f24106g, getMeasuredHeight() - this.f24106g);
        }
        this.f24103d.setShader(new LinearGradient(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.f24100a, (float[]) null, Shader.TileMode.MIRROR));
        RectF rectF4 = this.f24105f;
        int i13 = this.f24107h;
        canvas.drawRoundRect(rectF4, i13, i13, this.f24103d);
        this.f24103d.setShader(null);
        int[] iArr = this.f24101b;
        if (iArr[0] == iArr[1]) {
            this.f24104e.setColor(iArr[0]);
            RectF rectF5 = this.f24105f;
            int i14 = this.f24107h;
            canvas.drawRoundRect(rectF5, i14, i14, this.f24104e);
            return;
        }
        this.f24104e.setShader(new LinearGradient(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.f24101b, (float[]) null, Shader.TileMode.MIRROR));
        RectF rectF6 = this.f24105f;
        int i15 = this.f24107h;
        canvas.drawRoundRect(rectF6, i15, i15, this.f24104e);
        this.f24104e.setShader(null);
    }

    public void setStrokeWidth(int i9) {
        if (this.f24106g != i9) {
            this.f24106g = i9;
            invalidate();
        }
    }

    public VipBackgroundView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24100a = new int[]{Color.parseColor("#FFF76B"), Color.parseColor("#FFB92E")};
        this.f24101b = new int[2];
        this.f24103d = new Paint();
        this.f24104e = new Paint();
        this.f24105f = new RectF();
        a(attributeSet);
    }

    public VipBackgroundView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24100a = new int[]{Color.parseColor("#FFF76B"), Color.parseColor("#FFB92E")};
        this.f24101b = new int[2];
        this.f24103d = new Paint();
        this.f24104e = new Paint();
        this.f24105f = new RectF();
        a(attributeSet);
    }
}
