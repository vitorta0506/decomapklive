package com.guochao.faceshow.aaspring.views.doodle;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class DoodleView extends FrameLayout implements la.a {
    private float A;
    private boolean B;
    private int B3;
    private boolean C;
    private c C4;
    private float D;
    private b D4;
    private float E;
    private Matrix E4;
    private Path F;
    private View.OnTouchListener F4;
    private float G;
    private View.OnClickListener G4;
    private Paint H;
    private int H4;
    private Paint I;
    private int J;
    private boolean K;
    private float L;
    private int M;
    private la.h N;
    private Map<la.e, la.h> O;
    private RectF P;
    private PointF Q;
    private boolean R;
    private List<la.c> V1;
    private Bitmap V2;
    private Canvas V3;

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f24203a;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f24204a1;

    /* renamed from: a2  reason: collision with root package name */
    private List<la.c> f24205a2;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f24206b;

    /* renamed from: c  reason: collision with root package name */
    private j f24207c;

    /* renamed from: d  reason: collision with root package name */
    private float f24208d;

    /* renamed from: e  reason: collision with root package name */
    private int f24209e;

    /* renamed from: f  reason: collision with root package name */
    private int f24210f;

    /* renamed from: g  reason: collision with root package name */
    private float f24211g;

    /* renamed from: h  reason: collision with root package name */
    private float f24212h;

    /* renamed from: i  reason: collision with root package name */
    private float f24213i;

    /* renamed from: j  reason: collision with root package name */
    private float f24214j;

    /* renamed from: k  reason: collision with root package name */
    private float f24215k;

    /* renamed from: l  reason: collision with root package name */
    private float f24216l;

    /* renamed from: m  reason: collision with root package name */
    private float f24217m;

    /* renamed from: n  reason: collision with root package name */
    private float f24218n;

    /* renamed from: o  reason: collision with root package name */
    private float f24219o;

    /* renamed from: p  reason: collision with root package name */
    private float f24220p;

    /* renamed from: q  reason: collision with root package name */
    private float f24221q;

    /* renamed from: r  reason: collision with root package name */
    private la.b f24222r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f24223s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f24224t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f24225u;

    /* renamed from: v  reason: collision with root package name */
    private List<la.c> f24226v;

    /* renamed from: w  reason: collision with root package name */
    private List<la.c> f24227w;

    /* renamed from: x  reason: collision with root package name */
    private la.e f24228x;

    /* renamed from: y  reason: collision with root package name */
    private la.g f24229y;

    /* renamed from: z  reason: collision with root package name */
    private float f24230z;

    /* loaded from: classes3.dex */
    class a extends AsyncTask<Void, Void, Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f24231a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.views.doodle.DoodleView$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC0236a implements Runnable {
            RunnableC0236a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DoodleView.this.f24204a1 = false;
                if (DoodleView.this.f24206b) {
                    DoodleView.this.E(false);
                }
                DoodleView.this.c();
            }
        }

        a(boolean z10) {
            this.f24231a = z10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Bitmap doInBackground(Void... voidArr) {
            Bitmap copy;
            if (DoodleView.this.f24206b) {
                DoodleView.this.E(true);
                copy = DoodleView.this.V2;
            } else {
                copy = DoodleView.this.f24203a.copy(DoodleView.this.f24203a.getConfig(), true);
                Canvas canvas = new Canvas(copy);
                for (la.c cVar : DoodleView.this.f24226v) {
                    cVar.draw(canvas);
                }
            }
            return ma.b.e(copy, DoodleView.this.M, true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(Bitmap bitmap) {
            DoodleView.this.f24207c.b(Boolean.valueOf(this.f24231a), DoodleView.this, bitmap, new RunnableC0236a());
        }
    }

    /* loaded from: classes3.dex */
    private class b extends View {
        public b(Context context) {
            super(context);
        }

        private void a(Canvas canvas) {
            canvas.translate(DoodleView.this.getAllTranX(), DoodleView.this.getAllTranY());
            float allScale = DoodleView.this.getAllScale();
            canvas.scale(allScale, allScale);
            if (DoodleView.this.f24223s) {
                canvas.drawBitmap(DoodleView.this.f24203a, 0.0f, 0.0f, (Paint) null);
            } else {
                canvas.drawBitmap(DoodleView.this.f24206b ? DoodleView.this.V2 : DoodleView.this.f24203a, 0.0f, 0.0f, (Paint) null);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int save = canvas.save();
            canvas.rotate(DoodleView.this.M, getWidth() / 2, getHeight() / 2);
            a(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c extends View {
        public c(Context context) {
            super(context);
            setLayerType(1, null);
        }

        private void a(Canvas canvas) {
            boolean z10;
            if (DoodleView.this.f24223s) {
                return;
            }
            canvas.translate(DoodleView.this.getAllTranX(), DoodleView.this.getAllTranY());
            float allScale = DoodleView.this.getAllScale();
            canvas.scale(allScale, allScale);
            Bitmap bitmap = DoodleView.this.f24206b ? DoodleView.this.V2 : DoodleView.this.f24203a;
            int save = canvas.save();
            List<la.c> list = DoodleView.this.f24226v;
            if (DoodleView.this.f24206b) {
                if (DoodleView.this.V1.size() == 0) {
                    DoodleView.this.V1.addAll(list);
                } else {
                    for (la.c cVar : list) {
                        if (!DoodleView.this.V1.contains(cVar)) {
                            DoodleView.this.V1.add(cVar);
                        }
                    }
                }
                list = DoodleView.this.V1;
            }
            if (DoodleView.this.f24224t) {
                z10 = false;
            } else {
                z10 = true;
                canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList.clear();
            arrayList2.clear();
            for (la.c cVar2 : list) {
                if (cVar2.getPen() == DoodlePen.MOSAIC) {
                    arrayList.add(cVar2);
                }
                if (cVar2.getPen() == DoodlePen.TEXT) {
                    arrayList2.add(cVar2);
                }
            }
            DoodleView.this.V1.removeAll(arrayList);
            DoodleView.this.V1.addAll(0, arrayList);
            DoodleView.this.V1.removeAll(arrayList2);
            DoodleView.this.V1.addAll(arrayList2);
            list.removeAll(arrayList);
            list.addAll(0, arrayList);
            list.removeAll(arrayList2);
            list.addAll(arrayList2);
            for (la.c cVar3 : list) {
                if (!cVar3.j()) {
                    if (z10) {
                        canvas.restore();
                    }
                    cVar3.draw(canvas);
                    if (z10) {
                        canvas.save();
                        canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    }
                } else {
                    cVar3.draw(canvas);
                }
            }
            for (la.c cVar4 : list) {
                if (!cVar4.j()) {
                    if (z10) {
                        canvas.restore();
                    }
                    cVar4.p(canvas);
                    if (z10) {
                        canvas.save();
                        canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    }
                } else {
                    cVar4.p(canvas);
                }
            }
            canvas.restoreToCount(save);
            if (DoodleView.this.f24228x != null) {
                DoodleView.this.f24228x.drawHelpers(canvas, DoodleView.this);
            }
            if (DoodleView.this.f24229y != null) {
                DoodleView.this.f24229y.drawHelpers(canvas, DoodleView.this);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int save = canvas.save();
            canvas.rotate(DoodleView.this.M, getWidth() / 2, getHeight() / 2);
            a(canvas);
            canvas.restoreToCount(save);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            la.h hVar = (la.h) DoodleView.this.O.get(DoodleView.this.f24228x);
            if (hVar != null) {
                return hVar.onTouchEvent(motionEvent);
            }
            if (DoodleView.this.N != null) {
                return DoodleView.this.N.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public DoodleView(Context context, Bitmap bitmap, boolean z10, j jVar) {
        this(context, bitmap, z10, jVar, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(boolean z10) {
        List<la.c> arrayList;
        if (this.f24206b) {
            z();
            if (z10) {
                arrayList = this.f24226v;
            } else {
                arrayList = new ArrayList(this.f24226v);
                arrayList.removeAll(this.V1);
            }
            for (la.c cVar : arrayList) {
                cVar.draw(this.V3);
            }
        }
    }

    private void F() {
        t(8);
        c();
    }

    private void t(int i9) {
        this.B3 = i9 | this.B3;
    }

    private void u(la.c cVar) {
        if (cVar != null) {
            if (this == cVar.k()) {
                if (!this.f24226v.contains(cVar)) {
                    la.e pen = cVar.getPen();
                    DoodlePen doodlePen = DoodlePen.MOSAIC;
                    if (pen == doodlePen) {
                        this.f24226v.add(0, cVar);
                    } else {
                        this.f24226v.add(cVar);
                    }
                    cVar.e();
                    if (cVar.getPen() == doodlePen) {
                        this.f24205a2.add(0, cVar);
                    } else {
                        this.f24205a2.add(cVar);
                    }
                    t(4);
                    c();
                    return;
                }
                throw new RuntimeException("the item has been added");
            }
            throw new RuntimeException("the object Doodle is illegal");
        }
        throw new RuntimeException("item is null");
    }

    private void v(int i9) {
        this.B3 = (~i9) & this.B3;
    }

    private void w(List<la.c> list) {
        if (this.f24206b) {
            for (la.c cVar : list) {
                cVar.draw(this.V3);
            }
        }
    }

    private boolean x(int i9) {
        return (i9 & this.B3) != 0;
    }

    private void y() {
        int width = this.f24203a.getWidth();
        float f10 = width;
        float width2 = (f10 * 1.0f) / getWidth();
        float height = this.f24203a.getHeight();
        float height2 = (height * 1.0f) / getHeight();
        if (width2 > height2) {
            this.f24208d = 1.0f / width2;
            this.f24210f = getWidth();
            this.f24209e = (int) (height * this.f24208d);
        } else {
            float f11 = 1.0f / height2;
            this.f24208d = f11;
            this.f24210f = (int) (f10 * f11);
            this.f24209e = getHeight();
        }
        this.f24211g = (getWidth() - this.f24210f) / 2.0f;
        this.f24212h = (getHeight() - this.f24209e) / 2.0f;
        this.E = Math.min(getWidth(), getHeight()) / 4;
        Path path = new Path();
        this.F = path;
        float f12 = this.E;
        path.addCircle(f12, f12, f12, Path.Direction.CCW);
        this.J = (int) ((Math.min(getWidth(), getHeight()) / 2) - this.E);
        float dp2px = DensityUtil.dp2px(getContext(), 1.0f) / this.f24208d;
        this.L = dp2px;
        if (!this.f24225u) {
            this.f24221q = dp2px * 6.0f;
        }
        this.f24218n = 0.0f;
        this.f24217m = 0.0f;
        this.f24216l = 1.0f;
        z();
        F();
    }

    private void z() {
        if (this.f24206b) {
            Bitmap bitmap = this.V2;
            if (bitmap != null) {
                bitmap.recycle();
            }
            Bitmap bitmap2 = this.f24203a;
            this.V2 = bitmap2.copy(bitmap2.getConfig(), true);
            this.V3 = new Canvas(this.V2);
        }
    }

    public boolean A() {
        return this.R;
    }

    public boolean B() {
        return this.f24206b;
    }

    public void C(la.c cVar) {
        if (this.f24206b) {
            this.V1.add(cVar);
            if (this.f24226v.contains(cVar)) {
                t(2);
            }
            c();
        }
    }

    public void D(la.c cVar) {
        if (this.f24206b) {
            if (this.V1.remove(cVar)) {
                if (this.f24226v.contains(cVar)) {
                    t(2);
                } else {
                    d(cVar);
                }
            }
            c();
        }
    }

    public void G(la.c cVar) {
        if (this.f24226v.remove(cVar)) {
            ArrayList<la.c> arrayList = new ArrayList();
            for (la.c cVar2 : this.V1) {
                if (cVar.equals(cVar2)) {
                    arrayList.add(cVar);
                }
            }
            this.f24205a2.remove(arrayList);
            for (la.c cVar3 : arrayList) {
                this.H4--;
                this.V1.remove(cVar3);
                cVar3.l();
            }
            t(2);
            c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
        if (r3 > r0) goto L3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void H(float r3, float r4, float r5) {
        /*
            r2 = this;
            float r0 = r2.f24219o
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 >= 0) goto L8
        L6:
            r3 = r0
            goto Lf
        L8:
            float r0 = r2.f24220p
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 <= 0) goto Lf
            goto L6
        Lf:
            float r0 = r2.J(r4)
            float r1 = r2.K(r5)
            r2.f24216l = r3
            float r3 = r2.L(r0, r4)
            r2.f24217m = r3
            float r3 = r2.M(r1, r5)
            r2.f24218n = r3
            r3 = 8
            r2.t(r3)
            r2.c()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.doodle.DoodleView.H(float, float, float):void");
    }

    public void I(float f10, float f11) {
        this.f24217m = f10;
        this.f24218n = f11;
        F();
    }

    public final float J(float f10) {
        return (f10 * getAllScale()) + getAllTranX();
    }

    public final float K(float f10) {
        return (f10 * getAllScale()) + getAllTranY();
    }

    public final float L(float f10, float f11) {
        return ((((-f11) * getAllScale()) + f10) - this.f24211g) - this.f24214j;
    }

    public final float M(float f10, float f11) {
        return ((((-f11) * getAllScale()) + f10) - this.f24212h) - this.f24215k;
    }

    public final float N(float f10) {
        return (f10 - getAllTranX()) / getAllScale();
    }

    public final float O(float f10) {
        return (f10 - getAllTranY()) / getAllScale();
    }

    public boolean P() {
        return Q(1);
    }

    public boolean Q(int i9) {
        if (this.f24226v.size() > 0) {
            ArrayList<la.c> arrayList = new ArrayList();
            for (la.c cVar : this.f24226v) {
                if (cVar.getPosition() == this.H4 - 1) {
                    arrayList.add(cVar);
                }
            }
            for (la.c cVar2 : arrayList) {
                if (!(cVar2 instanceof h)) {
                    G(cVar2);
                    this.f24227w.add(0, cVar2);
                }
            }
            return true;
        }
        return false;
    }

    @Override // la.a
    public boolean a() {
        return this.f24224t;
    }

    @Override // la.a
    public void b(boolean z10) {
        if (this.f24204a1) {
            return;
        }
        this.f24204a1 = true;
        new a(z10).execute(new Void[0]);
    }

    @Override // la.a
    public void c() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.invalidate();
            this.C4.invalidate();
            return;
        }
        super.postInvalidate();
        this.C4.postInvalidate();
    }

    public void clear() {
        ArrayList arrayList = new ArrayList(this.f24226v);
        this.f24226v.clear();
        this.f24227w.clear();
        this.V1.clear();
        this.f24205a2.clear();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((la.c) arrayList.get(size)).l();
        }
        t(2);
        c();
    }

    @Override // la.a
    public void d(la.c cVar) {
        cVar.b(this.H4);
        this.H4++;
        u(cVar);
        this.f24227w.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f24203a.isRecycled()) {
            return;
        }
        if (x(2)) {
            LogUtils.d("DoodleView", "FLAG_RESET_BACKGROUND");
            v(2);
            v(4);
            v(8);
            E(false);
            this.f24205a2.clear();
            this.D4.invalidate();
        } else if (x(4)) {
            LogUtils.d("DoodleView", "FLAG_DRAW_PENDINGS_TO_BACKGROUND");
            v(4);
            v(8);
            w(this.f24205a2);
            this.f24205a2.clear();
            this.D4.invalidate();
        } else if (x(8)) {
            LogUtils.d("DoodleView", "FLAG_REFRESH_BACKGROUND");
            v(8);
            this.D4.invalidate();
        }
        int save = canvas.save();
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
        if (this.K && this.B && this.G > 0.0f) {
            canvas.save();
            float unitSize = getUnitSize();
            float f10 = this.A;
            if (f10 <= this.E * 2.0f) {
                this.D = getHeight() - (this.E * 2.0f);
            } else if (f10 >= getHeight() - (this.E * 2.0f)) {
                this.D = 0.0f;
            }
            canvas.translate(this.J, this.D);
            canvas.clipPath(this.F);
            canvas.drawColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.save();
            float f11 = this.G / this.f24216l;
            canvas.scale(f11, f11);
            float f12 = this.E;
            canvas.translate((-this.f24230z) + (f12 / f11), (-this.A) + (f12 / f11));
            super.dispatchDraw(canvas);
            canvas.translate(getAllTranX(), getAllTranY());
            float allScale = getAllScale();
            canvas.scale(allScale, allScale);
            float f13 = unitSize / 2.0f;
            this.I.setStrokeWidth(f13);
            float f14 = this.f24221q;
            float f15 = (f14 / 2.0f) - f13;
            float f16 = f15 - f13;
            if (f15 <= 1.0f) {
                f16 = 0.5f;
                this.I.setStrokeWidth(f14);
                f15 = 1.0f;
            }
            this.I.setColor(-1442840576);
            ma.a.b(canvas, N(this.f24230z), O(this.A), f15, this.I);
            this.I.setColor(-1426063361);
            ma.a.b(canvas, N(this.f24230z), O(this.A), f16, this.I);
            canvas.restore();
            float f17 = this.E;
            ma.a.b(canvas, f17, f17, f17, this.H);
            canvas.restore();
            canvas.save();
            canvas.translate(this.J, this.D);
            float width = (this.E / 2.0f) / getWidth();
            canvas.scale(width, width);
            float f18 = 1.0f / width;
            float f19 = -f18;
            canvas.clipRect(f19, f19, getWidth() + f18, getHeight() + f18);
            canvas.drawColor(-2004318072);
            canvas.save();
            float f20 = this.f24216l;
            float f21 = this.f24217m;
            float f22 = this.f24218n;
            this.f24216l = 1.0f;
            this.f24218n = 0.0f;
            this.f24217m = 0.0f;
            super.dispatchDraw(canvas);
            this.f24216l = f20;
            this.f24217m = f21;
            this.f24218n = f22;
            canvas.restore();
            this.I.setStrokeWidth(f18);
            this.I.setColor(-1442840576);
            ma.a.c(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.I);
            this.I.setColor(-1426063361);
            ma.a.c(canvas, f18, f18, getWidth() - f18, getHeight() - f18, this.I);
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.F4;
        if (onTouchListener == null || !onTouchListener.onTouch(this, motionEvent)) {
            this.f24230z = motionEvent.getX();
            this.A = motionEvent.getY();
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            this.E4.reset();
            this.E4.setRotate(-this.M, getWidth() / 2, getHeight() / 2);
            obtain.transform(this.E4);
            boolean onTouchEvent = this.C4.onTouchEvent(obtain);
            obtain.recycle();
            return onTouchEvent;
        }
        return true;
    }

    @Override // la.a
    public List<la.c> getAllItem() {
        return new ArrayList(this.f24226v);
    }

    public List<la.c> getAllRedoItem() {
        return new ArrayList(this.f24227w);
    }

    public float getAllScale() {
        return this.f24208d * this.f24213i * this.f24216l;
    }

    public float getAllTranX() {
        return this.f24211g + this.f24214j + this.f24217m;
    }

    public float getAllTranY() {
        return this.f24212h + this.f24215k + this.f24218n;
    }

    @Override // la.a
    public Bitmap getBitmap() {
        return this.f24203a;
    }

    public int getCenterHeight() {
        return this.f24209e;
    }

    public float getCenterScale() {
        return this.f24208d;
    }

    public int getCenterWidth() {
        return this.f24210f;
    }

    public float getCentreTranX() {
        return this.f24211g;
    }

    public float getCentreTranY() {
        return this.f24212h;
    }

    @Override // la.a
    public la.b getColor() {
        return this.f24222r;
    }

    public la.h getDefaultTouchDetector() {
        return this.N;
    }

    public Bitmap getDoodleBitmap() {
        return this.f24203a;
    }

    public RectF getDoodleBound() {
        float f10 = this.f24213i;
        float f11 = this.f24216l;
        float f12 = this.f24210f * f10 * f11;
        float f13 = this.f24209e * f10 * f11;
        int i9 = this.M;
        if (i9 % 90 == 0) {
            if (i9 == 0) {
                this.Q.x = J(0.0f);
                this.Q.y = K(0.0f);
            } else {
                if (i9 == 90) {
                    this.Q.x = J(0.0f);
                    this.Q.y = K(this.f24203a.getHeight());
                } else if (i9 == 180) {
                    this.Q.x = J(this.f24203a.getWidth());
                    this.Q.y = K(this.f24203a.getHeight());
                } else if (i9 == 270) {
                    this.Q.x = J(this.f24203a.getWidth());
                    this.Q.y = K(0.0f);
                }
                f13 = f12;
                f12 = f13;
            }
            PointF pointF = this.Q;
            ma.a.d(pointF, this.M, pointF.x, pointF.y, getWidth() / 2, getHeight() / 2);
            RectF rectF = this.P;
            PointF pointF2 = this.Q;
            float f14 = pointF2.x;
            float f15 = pointF2.y;
            rectF.set(f14, f15, f12 + f14, f13 + f15);
        } else {
            float J = J(0.0f);
            float K = K(0.0f);
            float J2 = J(this.f24203a.getWidth());
            float K2 = K(this.f24203a.getHeight());
            float J3 = J(0.0f);
            float K3 = K(this.f24203a.getHeight());
            float J4 = J(this.f24203a.getWidth());
            float K4 = K(0.0f);
            ma.a.d(this.Q, this.M, J, K, getWidth() / 2, getHeight() / 2);
            PointF pointF3 = this.Q;
            float f16 = pointF3.x;
            float f17 = pointF3.y;
            ma.a.d(pointF3, this.M, J2, K2, getWidth() / 2, getHeight() / 2);
            PointF pointF4 = this.Q;
            float f18 = pointF4.x;
            float f19 = pointF4.y;
            ma.a.d(pointF4, this.M, J3, K3, getWidth() / 2, getHeight() / 2);
            PointF pointF5 = this.Q;
            float f20 = pointF5.x;
            float f21 = pointF5.y;
            ma.a.d(pointF5, this.M, J4, K4, getWidth() / 2, getHeight() / 2);
            PointF pointF6 = this.Q;
            float f22 = pointF6.x;
            float f23 = pointF6.y;
            this.P.left = Math.min(Math.min(f16, f18), Math.min(f20, f22));
            this.P.top = Math.min(Math.min(f17, f19), Math.min(f21, f23));
            this.P.right = Math.max(Math.max(f16, f18), Math.max(f20, f22));
            this.P.bottom = Math.max(Math.max(f17, f19), Math.max(f21, f23));
        }
        return this.P;
    }

    public float getDoodleMaxScale() {
        return this.f24220p;
    }

    public float getDoodleMinScale() {
        return this.f24219o;
    }

    @Override // la.a
    public int getDoodleRotation() {
        return this.M;
    }

    @Override // la.a
    public float getDoodleScale() {
        return this.f24216l;
    }

    public float getDoodleTranslationX() {
        return this.f24217m;
    }

    public float getDoodleTranslationY() {
        return this.f24218n;
    }

    public int getEditItemCount() {
        int i9 = 0;
        for (la.c cVar : this.f24226v) {
            if (cVar instanceof e) {
                i9++;
            }
        }
        return i9;
    }

    @Override // la.a
    public int getItemCount() {
        return this.f24226v.size();
    }

    @Override // la.a
    public la.e getPen() {
        return this.f24228x;
    }

    public int getRedoItemCount() {
        return this.f24227w.size();
    }

    public float getRotateScale() {
        return this.f24213i;
    }

    public float getRotateTranX() {
        return this.f24214j;
    }

    public float getRotateTranY() {
        return this.f24215k;
    }

    @Override // la.a
    public la.g getShape() {
        return this.f24229y;
    }

    @Override // la.a
    public float getSize() {
        return this.f24221q;
    }

    @Override // la.a
    public float getUnitSize() {
        LogUtils.e("mDoodleSizeUnit", this.L + "");
        return this.L;
    }

    public float getZoomerScale() {
        return this.G;
    }

    @Override // android.view.View
    public void invalidate() {
        c();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        y();
        if (this.f24225u) {
            return;
        }
        this.f24207c.a(this);
        this.f24225u = true;
    }

    public void setColor(la.b bVar) {
        this.f24222r = bVar;
        c();
    }

    public void setDefaultTouchDetector(la.h hVar) {
        this.N = hVar;
    }

    @Override // la.a
    public void setDoodleMaxScale(float f10) {
        this.f24220p = f10;
        H(this.f24216l, 0.0f, 0.0f);
    }

    @Override // la.a
    public void setDoodleMinScale(float f10) {
        this.f24219o = f10;
        H(this.f24216l, 0.0f, 0.0f);
    }

    public void setDoodleRotation(int i9) {
        this.M = i9;
        int i10 = i9 % 360;
        this.M = i10;
        if (i10 < 0) {
            this.M = i10 + 360;
        }
        RectF doodleBound = getDoodleBound();
        float width = (((int) (doodleBound.width() / getAllScale())) * 1.0f) / getWidth();
        float height = (((int) (doodleBound.height() / getAllScale())) * 1.0f) / getHeight();
        float f10 = width > height ? 1.0f / width : 1.0f / height;
        this.f24218n = 0.0f;
        this.f24217m = 0.0f;
        this.f24215k = 0.0f;
        this.f24214j = 0.0f;
        this.f24216l = 1.0f;
        this.f24213i = 1.0f;
        float width2 = this.f24203a.getWidth() / 2;
        float J = J(width2);
        float height2 = this.f24203a.getHeight() / 2;
        float K = K(height2);
        this.f24213i = f10 / this.f24208d;
        float L = L(J, width2);
        float M = M(K, height2);
        this.f24214j = L;
        this.f24215k = M;
        F();
    }

    public void setDoodleTranslationX(float f10) {
        this.f24217m = f10;
        F();
    }

    public void setDoodleTranslationY(float f10) {
        this.f24218n = f10;
        F();
    }

    public void setEditMode(boolean z10) {
        this.R = z10;
        c();
    }

    @Override // la.a
    public void setIsDrawableOutside(boolean z10) {
        this.f24224t = z10;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.G4 = onClickListener;
        super.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.F4 = onTouchListener;
        super.setOnTouchListener(onTouchListener);
    }

    public void setPen(la.e eVar) {
        if (eVar != null) {
            this.f24228x = eVar;
            c();
            return;
        }
        throw new RuntimeException("Pen can't be null");
    }

    public void setScrollingDoodle(boolean z10) {
        this.K = z10;
        c();
    }

    @Override // la.a
    public void setShape(la.g gVar) {
        if (gVar != null) {
            this.f24229y = gVar;
            c();
            return;
        }
        throw new RuntimeException("Shape can't be null");
    }

    public void setShowOriginal(boolean z10) {
        this.f24223s = z10;
        F();
    }

    public void setSize(float f10) {
        this.f24221q = f10;
        c();
    }

    @Override // la.a
    public void setZoomerScale(float f10) {
        this.G = f10;
        c();
    }

    public DoodleView(Context context, Bitmap bitmap, boolean z10, j jVar, la.h hVar) {
        super(context);
        this.f24213i = 1.0f;
        this.f24216l = 1.0f;
        this.f24217m = 0.0f;
        this.f24218n = 0.0f;
        this.f24219o = 0.25f;
        this.f24220p = 5.0f;
        this.f24224t = false;
        this.f24225u = false;
        this.f24226v = new ArrayList();
        this.f24227w = new ArrayList();
        this.B = false;
        this.C = true;
        this.G = 0.0f;
        this.K = false;
        this.L = 1.0f;
        this.M = 0;
        this.O = new HashMap();
        this.P = new RectF();
        this.Q = new PointF();
        this.R = false;
        this.f24204a1 = false;
        this.V1 = new ArrayList();
        this.f24205a2 = new ArrayList();
        this.B3 = 0;
        this.E4 = new Matrix();
        this.H4 = 0;
        setClipChildren(false);
        this.f24203a = bitmap;
        if (bitmap.getConfig() != Bitmap.Config.RGB_565) {
            LogUtils.i("DoodleView", "the bitmap may contain alpha, which will cause eraser don't work well.");
        }
        this.f24207c = jVar;
        if (jVar == null) {
            throw new RuntimeException("IDoodleListener is null!!!");
        }
        if (bitmap != null) {
            this.f24206b = z10;
            this.f24216l = 1.0f;
            this.f24222r = new DoodleColor((int) SupportMenu.CATEGORY_MASK);
            this.f24228x = DoodlePen.BRUSH;
            this.f24229y = DoodleShape.HAND_WRITE;
            Paint paint = new Paint();
            this.H = paint;
            paint.setColor(-1426063361);
            this.H.setStyle(Paint.Style.STROKE);
            this.H.setAntiAlias(true);
            this.H.setStrokeJoin(Paint.Join.ROUND);
            this.H.setStrokeCap(Paint.Cap.ROUND);
            this.H.setStrokeWidth(DensityUtil.dp2px(getContext(), 10.0f));
            Paint paint2 = new Paint();
            this.I = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            this.I.setAntiAlias(true);
            this.I.setStrokeJoin(Paint.Join.ROUND);
            this.I.setStrokeCap(Paint.Cap.ROUND);
            this.N = hVar;
            this.C4 = new c(context);
            b bVar = new b(context);
            this.D4 = bVar;
            addView(bVar, new ViewGroup.LayoutParams(-1, -1));
            addView(this.C4, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        throw new RuntimeException("Bitmap is null!!!");
    }
}
