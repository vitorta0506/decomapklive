package com.scwang.smartrefresh.header;

import ae.b;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.header.fungame.FunGameView;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Random;
import wd.i;
/* loaded from: classes4.dex */
public class FunGameBattleCityHeader extends FunGameView {
    protected static int D4 = 3;
    protected int B3;
    protected boolean C4;
    protected SparseArray<Queue<RectF>> J;
    protected Queue<Point> K;
    protected Point L;
    protected Random M;
    protected float N;
    protected int O;
    protected int P;
    protected int Q;
    protected int R;
    protected int V1;
    protected int V2;
    protected int V3;

    /* renamed from: a1  reason: collision with root package name */
    protected int f29080a1;

    /* renamed from: a2  reason: collision with root package name */
    protected int f29081a2;

    public FunGameBattleCityHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    protected void A() {
        this.D = 0;
        this.B = this.f29222n;
        this.R = b.b(1.0f);
        this.f29080a1 = b.b(4.0f);
        this.B3 = 8;
        this.V3 = 0;
        this.C4 = true;
        this.O = this.C + this.Q + 60;
        this.P = 360;
        this.J = new SparseArray<>();
        for (int i9 = 0; i9 < D4; i9++) {
            this.J.put(i9, new LinkedList());
        }
        this.K = new LinkedList();
    }

    protected int B() {
        return this.M.nextInt(D4);
    }

    protected boolean C(int i9, float f10, float f11) {
        RectF peek = this.J.get(i9).peek();
        return peek != null && peek.contains(f10, f11);
    }

    protected boolean D(Point point) {
        int K = K(point.y);
        RectF peek = this.J.get(K).peek();
        if (peek == null || !peek.contains(point.x, point.y)) {
            return false;
        }
        int i9 = this.V3 + 1;
        this.V3 = i9;
        if (i9 == this.B3) {
            L();
        }
        this.J.get(K).poll();
        return true;
    }

    protected void E(Canvas canvas, Point point) {
        int i9 = point.x - this.f29080a1;
        point.x = i9;
        canvas.drawCircle(i9, point.y, this.N, this.f29234z);
    }

    protected void F(Canvas canvas, int i9) {
        this.f29234z.setColor(this.G);
        int i10 = this.f29081a2 + this.f29080a1;
        this.f29081a2 = i10;
        boolean z10 = false;
        if (i10 / this.P == 1) {
            this.f29081a2 = 0;
        }
        if (this.f29081a2 == 0) {
            Point point = new Point();
            int i11 = this.C;
            point.x = (i9 - i11) - this.Q;
            point.y = (int) (this.B + (i11 * 0.5f));
            this.K.offer(point);
        }
        for (Point point2 : this.K) {
            if (D(point2)) {
                this.L = point2;
            } else {
                if (point2.x + this.N <= 0.0f) {
                    z10 = true;
                }
                E(canvas, point2);
            }
        }
        if (z10) {
            this.K.poll();
        }
        this.K.remove(this.L);
        this.L = null;
    }

    protected void G(Canvas canvas, int i9) {
        this.f29234z.setColor(this.E);
        int i10 = this.V1 + this.R;
        this.V1 = i10;
        if (i10 / this.O == 1 || this.C4) {
            this.V1 = 0;
            this.C4 = false;
        }
        int B = B();
        boolean z10 = false;
        for (int i11 = 0; i11 < D4; i11++) {
            Queue<RectF> queue = this.J.get(i11);
            if (this.V1 == 0 && i11 == B) {
                queue.offer(J(i11));
            }
            Iterator<RectF> it = queue.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                RectF next = it.next();
                if (next.left >= i9) {
                    int i12 = this.V2 + 1;
                    this.V2 = i12;
                    if (i12 >= 8) {
                        this.D = 2;
                        z10 = true;
                        break;
                    }
                    z10 = true;
                } else {
                    I(canvas, next);
                }
            }
            if (this.D == 2) {
                break;
            }
            if (z10) {
                queue.poll();
                z10 = false;
            }
        }
        invalidate();
    }

    protected void H(Canvas canvas, int i9) {
        this.f29234z.setColor(this.F);
        boolean C = C(K((int) this.B), i9 - this.C, this.B);
        int K = K((int) (this.B + this.C));
        int i10 = this.C;
        boolean C2 = C(K, i9 - i10, this.B + i10);
        if (C || C2) {
            this.D = 2;
        }
        int i11 = this.C;
        float f10 = this.B;
        float f11 = this.f29222n;
        canvas.drawRect(i9 - i11, f10 + f11, i9, f10 + i11 + f11, this.f29234z);
        int i12 = this.C;
        int i13 = this.Q;
        float f12 = this.B;
        canvas.drawRect((i9 - i12) - i13, f12 + ((i12 - i13) * 0.5f), i9 - i12, f12 + ((i12 - i13) * 0.5f) + i13, this.f29234z);
    }

    protected void I(Canvas canvas, RectF rectF) {
        float f10 = rectF.left;
        int i9 = this.R;
        rectF.set(f10 + i9, rectF.top, rectF.right + i9, rectF.bottom);
        canvas.drawRect(rectF, this.f29234z);
        float f11 = rectF.top;
        int i10 = this.C;
        int i11 = this.Q;
        float f12 = f11 + ((i10 - i11) * 0.5f);
        float f13 = rectF.right;
        canvas.drawRect(f13, f12, f13 + i11, f12 + i11, this.f29234z);
    }

    protected RectF J(int i9) {
        int i10;
        float f10 = -(this.Q + this.C);
        float f11 = (i9 * i10) + this.f29222n;
        return new RectF(f10, f11, (this.Q * 2.5f) + f10, this.C + f11);
    }

    protected int K(int i9) {
        int i10 = this.f29213e;
        int i11 = D4;
        int i12 = i9 / (i10 / i11);
        if (i12 >= i11) {
            i12 = i11 - 1;
        }
        if (i12 < 0) {
            return 0;
        }
        return i12;
    }

    protected void L() {
        this.B3 += 8;
        this.R += b.b(1.0f);
        this.f29080a1 += b.b(1.0f);
        this.V3 = 0;
        int i9 = this.O;
        if (i9 > 12) {
            this.O = i9 - 12;
        }
        int i10 = this.P;
        if (i10 > 30) {
            this.P = i10 - 30;
        }
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView, com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        int i11 = i9 / D4;
        this.C = i11;
        int floor = (int) Math.floor((i11 * 0.33333334f) + 0.5f);
        this.Q = floor;
        this.N = (floor - (this.f29222n * 2.0f)) * 0.5f;
        super.g(iVar, i9, i10);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    protected void w(Canvas canvas, int i9, int i10) {
        H(canvas, i9);
        int i11 = this.D;
        if (i11 == 1 || i11 == 3 || i11 == 4) {
            G(canvas, i9);
            F(canvas, i9);
        }
        if (isInEditMode()) {
            int i12 = this.C;
            I(canvas, new RectF(i12, 0.0f, i12 * 2, i12));
            int i13 = this.C;
            I(canvas, new RectF(0.0f, i13, i13, i13 * 2));
            int i14 = this.C;
            I(canvas, new RectF(i14 * 3, i14 * 2, i14 * 4, i14 * 3));
        }
    }

    public FunGameBattleCityHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FunGameBattleCityHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.R = 1;
        this.f29080a1 = 4;
        this.C4 = true;
        this.M = new Random();
    }
}
