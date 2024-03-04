package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class RecordProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f26721a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f26722b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f26723c;

    /* renamed from: d  reason: collision with root package name */
    private int f26724d;

    /* renamed from: e  reason: collision with root package name */
    private int f26725e;

    /* renamed from: f  reason: collision with root package name */
    private int f26726f;

    /* renamed from: g  reason: collision with root package name */
    private int f26727g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f26728h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26729i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f26730j;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<b> f26731k;

    /* renamed from: l  reason: collision with root package name */
    private b f26732l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f26733m;

    /* renamed from: n  reason: collision with root package name */
    private int f26734n;

    /* renamed from: o  reason: collision with root package name */
    private int f26735o;

    /* renamed from: p  reason: collision with root package name */
    private int f26736p;

    /* renamed from: q  reason: collision with root package name */
    private Runnable f26737q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecordProgressView recordProgressView = RecordProgressView.this;
            recordProgressView.f26728h = !recordProgressView.f26728h;
            RecordProgressView.this.f26730j.postDelayed(RecordProgressView.this.f26737q, 500L);
            RecordProgressView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public int f26739a;

        /* renamed from: b  reason: collision with root package name */
        public int f26740b;

        private b() {
        }

        /* synthetic */ b(RecordProgressView recordProgressView, a aVar) {
            this();
        }
    }

    public RecordProgressView(Context context) {
        super(context);
        this.f26728h = false;
        this.f26729i = false;
        this.f26737q = new a();
        h();
    }

    private void h() {
        this.f26721a = new Paint();
        this.f26722b = new Paint();
        this.f26723c = new Paint();
        this.f26721a.setAntiAlias(true);
        this.f26722b.setAntiAlias(true);
        this.f26723c.setAntiAlias(true);
        this.f26721a.setStrokeWidth(DensityUtil.dp2px(4.0f));
        this.f26722b.setStrokeWidth(DensityUtil.dp2px(4.0f));
        this.f26723c.setStrokeWidth(DensityUtil.dp2px(4.0f));
        this.f26721a.setStyle(Paint.Style.STROKE);
        this.f26722b.setStyle(Paint.Style.STROKE);
        this.f26723c.setStyle(Paint.Style.STROKE);
        this.f26724d = getResources().getColor(R.color.transparent);
        this.f26725e = ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_app_primary);
        this.f26726f = ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_app_primary_80);
        this.f26727g = getResources().getColor(R.color.white);
        this.f26721a.setColor(this.f26725e);
        this.f26722b.setColor(this.f26726f);
        this.f26723c.setColor(this.f26727g);
        this.f26731k = new ArrayList<>();
        this.f26732l = new b(this, null);
        this.f26733m = false;
        this.f26730j = new Handler();
        k();
    }

    private void k() {
        Handler handler = this.f26730j;
        if (handler != null) {
            handler.postDelayed(this.f26737q, 500L);
        }
    }

    private void l() {
        Handler handler = this.f26730j;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void e() {
        this.f26729i = false;
        int i9 = this.f26736p;
        b bVar = this.f26732l;
        this.f26736p = i9 + bVar.f26739a;
        this.f26731k.add(bVar);
        b bVar2 = new b(this, null);
        bVar2.f26740b = 3;
        bVar2.f26739a = 0;
        this.f26731k.add(bVar2);
        this.f26732l = new b(this, null);
        k();
        invalidate();
    }

    public void f() {
        if (this.f26731k.size() >= 2) {
            for (int size = this.f26731k.size(); size > 1; size -= 2) {
                ArrayList<b> arrayList = this.f26731k;
                arrayList.get(arrayList.size() - 2).f26740b = 2;
                this.f26733m = true;
                ArrayList<b> arrayList2 = this.f26731k;
                arrayList2.remove(arrayList2.size() - 1);
                ArrayList<b> arrayList3 = this.f26731k;
                this.f26736p -= arrayList3.remove(arrayList3.size() - 1).f26739a;
                invalidate();
            }
        }
    }

    public void g() {
        ArrayList<b> arrayList;
        ArrayList<b> arrayList2;
        if (this.f26731k.size() >= 2) {
            this.f26731k.remove(arrayList.size() - 1);
            this.f26736p -= this.f26731k.remove(arrayList2.size() - 1).f26739a;
        }
        invalidate();
    }

    public void i() {
        Handler handler = this.f26730j;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f26730j = null;
        }
    }

    public void j() {
        if (this.f26731k.size() >= 2) {
            ArrayList<b> arrayList = this.f26731k;
            arrayList.get(arrayList.size() - 2).f26740b = 2;
            this.f26733m = true;
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Iterator<b> it = this.f26731k.iterator();
        float f10 = 0.0f;
        int i9 = 0;
        int i10 = 0;
        float f11 = 0.0f;
        while (it.hasNext()) {
            b next = it.next();
            float f12 = ((next.f26739a + i10) / this.f26734n) * 360.0f;
            int i11 = next.f26740b;
            if (i11 == 1) {
                canvas.drawArc(this.f26721a.getStrokeWidth() / 2.0f, this.f26721a.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.f26721a.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.f26721a.getStrokeWidth() / 2.0f), -90.0f, f12, false, this.f26721a);
            } else if (i11 == 2) {
                canvas.drawArc(this.f26722b.getStrokeWidth() / 2.0f, this.f26722b.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.f26722b.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.f26722b.getStrokeWidth() / 2.0f), f11 - 90.0f, f12 - ((i10 / this.f26734n) * 360.0f), false, this.f26722b);
            } else if (i11 == 3) {
                canvas.drawArc(this.f26723c.getStrokeWidth() / 2.0f, this.f26723c.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.f26723c.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.f26723c.getStrokeWidth() / 2.0f), (f11 - 90.0f) - 2.0f, 2.0f, false, this.f26723c);
            }
            i10 += next.f26739a;
            f11 = f12;
        }
        b bVar = this.f26732l;
        if (bVar != null && bVar.f26739a != 0) {
            canvas.drawArc(this.f26721a.getStrokeWidth() / 2.0f, this.f26721a.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.f26721a.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.f26721a.getStrokeWidth() / 2.0f), -90.0f, ((this.f26732l.f26739a + i10) / this.f26734n) * 360.0f, false, this.f26721a);
            f11 += (this.f26732l.f26739a / this.f26734n) * 360.0f;
        }
        if (i10 + this.f26732l.f26739a < this.f26735o) {
            canvas.drawArc(this.f26723c.getStrokeWidth() / 2.0f, this.f26723c.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.f26723c.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.f26723c.getStrokeWidth() / 2.0f), ((this.f26735o / this.f26734n) * 360.0f) - 90.0f, 2.0f, false, this.f26723c);
        }
        if (this.f26728h || this.f26729i) {
            canvas.drawArc(this.f26723c.getStrokeWidth() / 2.0f, this.f26723c.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.f26723c.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.f26723c.getStrokeWidth() / 2.0f), f11 - 90.0f, 2.0f, false, this.f26723c);
        }
        Iterator<b> it2 = this.f26731k.iterator();
        while (it2.hasNext()) {
            b next2 = it2.next();
            float f13 = ((next2.f26739a + i9) / this.f26734n) * 360.0f;
            if (next2.f26740b == 3) {
                canvas.drawArc(this.f26723c.getStrokeWidth() / 2.0f, this.f26723c.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.f26723c.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.f26723c.getStrokeWidth() / 2.0f), (f10 - 90.0f) - 2.0f, 2.0f, false, this.f26723c);
            }
            i9 += next2.f26739a;
            f10 = f13;
        }
    }

    public void setMaxDuration(int i9) {
        this.f26734n = i9;
    }

    public void setMinDuration(int i9) {
        this.f26735o = i9;
    }

    public void setProgress(int i9) {
        this.f26729i = true;
        l();
        if (this.f26733m) {
            Iterator<b> it = this.f26731k.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                b next = it.next();
                if (next.f26740b == 2) {
                    next.f26740b = 1;
                    this.f26733m = false;
                    break;
                }
            }
        }
        b bVar = this.f26732l;
        bVar.f26740b = 1;
        bVar.f26739a = i9 - this.f26736p;
        invalidate();
    }

    public RecordProgressView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26728h = false;
        this.f26729i = false;
        this.f26737q = new a();
        h();
    }

    public RecordProgressView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26728h = false;
        this.f26729i = false;
        this.f26737q = new a();
        h();
    }
}
