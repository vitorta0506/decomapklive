package com.scwang.smartrefresh.header;

import ae.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.header.fungame.FunGameView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import wd.i;
/* loaded from: classes4.dex */
public class FunGameHitBlockHeader extends FunGameView {
    protected float J;
    protected float K;
    protected float L;
    protected Paint M;
    protected float N;
    protected float O;
    protected float P;
    protected float Q;
    protected List<Point> R;
    protected int V1;
    protected int V2;

    /* renamed from: a1  reason: collision with root package name */
    protected boolean f29082a1;

    /* renamed from: a2  reason: collision with root package name */
    protected int f29083a2;

    public FunGameHitBlockHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    protected void A() {
        this.P = this.O - (this.L * 3.0f);
        this.Q = (int) (this.f29213e * 0.5f);
        this.B = 1.0f;
        this.V1 = 30;
        this.f29082a1 = true;
        List<Point> list = this.R;
        if (list == null) {
            this.R = new ArrayList();
        } else {
            list.clear();
        }
    }

    protected boolean B(float f10, float f11) {
        int i9 = (int) ((((f10 - this.N) - this.L) - this.V2) / this.K);
        if (i9 == this.f29083a2) {
            i9--;
        }
        int i10 = (int) (f11 / this.J);
        if (i10 == 5) {
            i10--;
        }
        Point point = new Point();
        point.set(i9, i10);
        boolean z10 = false;
        Iterator<Point> it = this.R.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().equals(point.x, point.y)) {
                z10 = true;
                break;
            }
        }
        if (!z10) {
            this.R.add(point);
        }
        return !z10;
    }

    protected boolean C(float f10) {
        float f11 = f10 - this.B;
        return f11 >= 0.0f && f11 <= ((float) this.C);
    }

    protected void D(Canvas canvas, int i9) {
        int i10;
        this.f29234z.setColor(this.G);
        float f10 = this.P;
        if (f10 <= this.N + (this.f29083a2 * this.K) + ((i10 - 1) * 1.0f) + this.L && B(f10, this.Q)) {
            this.f29082a1 = false;
        }
        float f11 = this.P;
        float f12 = this.N;
        float f13 = this.L;
        if (f11 <= f12 + f13) {
            this.f29082a1 = false;
        }
        float f14 = this.O;
        if (f11 + f13 < f14 || f11 - f13 >= f14 + this.K) {
            if (f11 > i9) {
                this.D = 2;
            }
        } else if (C(this.Q)) {
            if (this.R.size() == this.f29083a2 * 5) {
                this.D = 2;
                return;
            }
            this.f29082a1 = true;
        }
        float f15 = this.Q;
        float f16 = this.L;
        if (f15 <= f16 + 1.0f) {
            this.V1 = 150;
        } else if (f15 >= (this.f29213e - f16) - 1.0f) {
            this.V1 = 210;
        }
        if (this.f29082a1) {
            this.P -= this.V2;
        } else {
            this.P += this.V2;
        }
        float tan = f15 - (((float) Math.tan(Math.toRadians(this.V1))) * this.V2);
        this.Q = tan;
        canvas.drawCircle(this.P, tan, this.L, this.f29234z);
        invalidate();
    }

    protected void E(Canvas canvas) {
        boolean z10;
        int i9 = 0;
        while (true) {
            int i10 = this.f29083a2;
            if (i9 >= i10 * 5) {
                return;
            }
            int i11 = i9 / i10;
            int i12 = i9 % i10;
            Iterator<Point> it = this.R.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                } else if (it.next().equals(i12, i11)) {
                    z10 = true;
                    break;
                }
            }
            if (!z10) {
                this.M.setColor(ColorUtils.setAlphaComponent(this.E, 255 / (i12 + 1)));
                float f10 = this.N;
                float f11 = this.K;
                float f12 = f10 + (i12 * (f11 + 1.0f));
                float f13 = i11;
                float f14 = this.J;
                float f15 = (f13 * (f14 + 1.0f)) + 1.0f;
                canvas.drawRect(f12, f15, f12 + f11, f15 + f14, this.M);
            }
            i9++;
        }
    }

    protected void F(Canvas canvas) {
        this.f29234z.setColor(this.F);
        float f10 = this.O;
        float f11 = this.B;
        canvas.drawRect(f10, f11, f10 + this.K, f11 + this.C, this.f29234z);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView, com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        int measuredWidth = getMeasuredWidth();
        float f10 = (i9 / 5) - 1.0f;
        this.J = f10;
        float f11 = measuredWidth;
        this.K = 0.01806f * f11;
        this.N = 0.08f * f11;
        this.O = f11 * 0.8f;
        this.C = (int) (f10 * 1.6f);
        super.g(iVar, i9, i10);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    protected void w(Canvas canvas, int i9, int i10) {
        E(canvas);
        F(canvas);
        int i11 = this.D;
        if (i11 == 1 || i11 == 3 || i11 == 4 || isInEditMode()) {
            D(canvas, i9);
        }
    }

    public FunGameHitBlockHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FunGameHitBlockHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FunGameHitBlockHeader);
        this.V2 = obtainStyledAttributes.getInt(R$styleable.FunGameHitBlockHeader_fghBallSpeed, b.b(3.0f));
        this.f29083a2 = obtainStyledAttributes.getInt(R$styleable.FunGameHitBlockHeader_fghBlockHorizontalNum, 3);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.M = paint;
        paint.setStyle(Paint.Style.FILL);
        this.L = b.b(4.0f);
    }
}
