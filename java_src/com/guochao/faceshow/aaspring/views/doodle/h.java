package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class h extends f {
    private final Paint E;
    private final Paint F;
    private Rect G;
    private String H;
    private TextPaint I;
    RectF J;
    private float K;
    private boolean L;
    private int M;
    private boolean N;
    private boolean O;
    private boolean P;
    private List<k> Q;

    public h(la.a aVar, String str, float f10, la.b bVar, int i9, float f11, float f12) {
        super(aVar, -aVar.getDoodleRotation(), f11, f12);
        this.E = new Paint();
        this.F = new Paint();
        this.G = new Rect();
        this.I = new TextPaint();
        this.J = new RectF();
        this.L = true;
        this.O = true;
        this.P = true;
        this.Q = new ArrayList();
        A(DoodlePen.TEXT);
        this.M = i9;
        this.K = f12;
        this.H = str;
        setSize(f10);
        setColor(bVar);
        StaticLayout staticLayout = new StaticLayout(this.H, this.I, k().getBitmap().getWidth() / 2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        if (staticLayout.getLineCount() == 1) {
            TextPaint textPaint = this.I;
            String str2 = this.H;
            textPaint.getTextBounds(str2, 0, str2.length(), this.G);
            this.G.bottom += DensityUtil.dp2px(5.0f);
            Rect rect = this.G;
            rect.offset(0, rect.height() - DensityUtil.dp2px(5.0f));
        } else {
            staticLayout.getLineBounds(0, this.G);
            Rect rect2 = this.G;
            int lineCount = staticLayout.getLineCount();
            Rect rect3 = this.G;
            rect2.bottom = lineCount * rect3.bottom;
            rect3.offset(0, 0);
        }
        n(f11 - (this.G.width() / 2), f12 - (this.G.height() / 2));
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.g
    public void G(Rect rect) {
        if (TextUtils.isEmpty(this.H)) {
            return;
        }
        this.I.setTextSize(v());
        this.I.setStyle(Paint.Style.FILL);
        this.I.setAntiAlias(true);
        StaticLayout staticLayout = new StaticLayout(this.H, this.I, k().getBitmap().getWidth() / 2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        if (staticLayout.getLineCount() == 1) {
            TextPaint textPaint = this.I;
            String str = this.H;
            textPaint.getTextBounds(str, 0, str.length(), rect);
            rect.bottom += DensityUtil.dp2px(5.0f);
            rect.offset(0, rect.height() - DensityUtil.dp2px(5.0f));
        } else {
            staticLayout.getLineBounds(0, rect);
            rect.bottom = staticLayout.getLineCount() * rect.bottom;
            rect.offset(0, 0);
        }
        if (this.O) {
            k kVar = new k();
            float m10 = m();
            PointF pointF = new PointF();
            pointF.x = r().x - (rect.width() / 2);
            pointF.y = r().y - (rect.height() / 2);
            float f10 = f();
            Rect bounds = getBounds();
            kVar.h(m10);
            kVar.f(pointF);
            kVar.i(f10);
            kVar.g(bounds);
            this.Q.add(kVar);
            this.O = false;
        }
    }

    public int M() {
        return this.M;
    }

    public boolean N() {
        return this.N;
    }

    public List<k> O() {
        return this.Q;
    }

    public String P() {
        return this.H;
    }

    public int Q() {
        return this.E.getColor();
    }

    public boolean R() {
        if (this.P) {
            List<k> list = this.Q;
            list.remove(list.size() - 1);
            this.P = false;
        }
        if (this.Q.size() > 0) {
            List<k> list2 = this.Q;
            k remove = list2.remove(list2.size() - 1);
            this.G = remove.b();
            if (!TextUtils.isEmpty(remove.e())) {
                W(remove.e());
                w();
            }
            PointF a10 = remove.a();
            i(remove.d());
            d(remove.c());
            n(a10.x, a10.y);
            G(this.G);
            return true;
        }
        return false;
    }

    public void S(int i9) {
        this.M = i9;
    }

    public void T(boolean z10) {
        this.N = z10;
    }

    public void U(boolean z10) {
        this.P = z10;
    }

    public void V(k kVar) {
        this.Q.add(kVar);
    }

    public void W(String str) {
        this.H = str;
        G(this.G);
        B(r().x + (this.G.width() / 2));
        C(r().y + (this.G.height() / 2));
        H(getBounds());
        w();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b
    public void s(Canvas canvas) {
        getColor().config(this, this.E);
        int i9 = this.M;
        if (i9 != 0) {
            this.F.setColor(i9);
            this.F.setStyle(Paint.Style.FILL);
            this.J.set(this.G);
            float unitSize = k().getUnitSize();
            RectF rectF = this.J;
            float f10 = rectF.left;
            int i10 = g.f24317x;
            rectF.left = f10 - ((i10 * unitSize) / f());
            this.J.top -= (i10 * unitSize) / f();
            this.J.right += (i10 * unitSize) / f();
            this.J.bottom += (i10 * unitSize) / f();
            canvas.drawRoundRect(this.J, DensityUtil.dp2px(8.0f), DensityUtil.dp2px(8.0f), this.F);
        }
        this.I.setColor(this.E.getColor());
        this.I.setTextSize(v());
        this.I.setStyle(Paint.Style.FILL);
        this.I.setAntiAlias(true);
        StaticLayout staticLayout = new StaticLayout(this.H, this.I, k().getBitmap().getWidth() / 2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        if (staticLayout.getLineCount() == 1) {
            this.E.setTextSize(v());
            this.E.setStyle(Paint.Style.FILL);
            canvas.save();
            canvas.translate(0.0f, getBounds().height() / f());
            canvas.drawText(this.H, 0.0f, 0.0f, this.E);
            canvas.restore();
            return;
        }
        canvas.save();
        canvas.translate(0.0f, 0.0f);
        staticLayout.draw(canvas);
        canvas.restore();
    }
}
