package com.guochao.faceshow.aaspring.danmu;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;
/* loaded from: classes3.dex */
public class a implements v7.c {

    /* renamed from: a  reason: collision with root package name */
    c f16337a;

    /* renamed from: b  reason: collision with root package name */
    private float f16338b;

    /* renamed from: c  reason: collision with root package name */
    int f16339c;

    /* renamed from: f  reason: collision with root package name */
    Paint f16342f;

    /* renamed from: d  reason: collision with root package name */
    SparseArray<View> f16340d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    float f16341e = 0.3f;

    /* renamed from: g  reason: collision with root package name */
    boolean f16343g = false;

    /* renamed from: h  reason: collision with root package name */
    Matrix f16344h = new Matrix();

    public a(c cVar) {
        this.f16337a = cVar;
        this.f16338b = cVar.getConfig().b();
        this.f16339c = this.f16337a.getConfig().a();
        Paint paint = new Paint();
        this.f16342f = paint;
        paint.setDither(true);
        this.f16342f.setAntiAlias(true);
    }

    @Override // v7.c
    public void a(Canvas canvas, List<b> list) {
        System.currentTimeMillis();
        for (int i9 = 0; i9 < list.size(); i9++) {
            b bVar = list.get(i9);
            if (!bVar.f16355k) {
                if (bVar.f16348d == null || bVar.f16353i) {
                    b(bVar);
                }
                long d10 = bVar.d();
                long c10 = bVar.c();
                long currentTimeMillis = System.currentTimeMillis();
                long j10 = currentTimeMillis - d10;
                if (!this.f16343g) {
                    c10 += j10;
                }
                bVar.f16350f = this.f16341e * ((float) c10);
                bVar.k(currentTimeMillis);
                bVar.j(c10);
                if (bVar.f16357m == 1) {
                    if (bVar.f16350f >= bVar.f16348d.getWidth() && !bVar.f16354j) {
                        this.f16337a.a(bVar);
                        bVar.f16354j = true;
                    }
                } else if (bVar.f16350f >= this.f16337a.getSurfaceWidth() + bVar.f16348d.getWidth() && !bVar.f16354j) {
                    this.f16337a.a(bVar);
                    bVar.f16354j = true;
                }
                if (bVar.f16350f >= this.f16337a.getSurfaceWidth() + bVar.f16348d.getWidth()) {
                    bVar.a();
                    this.f16337a.c(bVar);
                } else {
                    float f10 = bVar.f16350f;
                    canvas.save();
                    if (bVar.f16357m == 1) {
                        canvas.translate(this.f16337a.getSurfaceWidth() - f10, (bVar.f16348d.getHeight() + this.f16339c) * (bVar.f16351g - 1));
                    } else {
                        canvas.translate(f10 - bVar.f16348d.getWidth(), (bVar.f16348d.getHeight() + this.f16339c) * (bVar.f16351g - 1));
                    }
                    canvas.drawBitmap(bVar.f16348d, this.f16344h, this.f16342f);
                    canvas.restore();
                }
            }
        }
        this.f16337a.b(canvas, list);
    }

    @Override // v7.c
    public void b(b bVar) {
        View view = this.f16340d.get(bVar.f16345a);
        v7.b danmuProvider = this.f16337a.getDanmuProvider();
        if (view == null) {
            view = danmuProvider.onCreateView(bVar.f16345a);
            view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            this.f16340d.put(bVar.f16345a, view);
        }
        danmuProvider.onBindView(view, bVar);
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        Bitmap createBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        bVar.f16348d = createBitmap;
        if (bVar.f16347c == 0) {
            bVar.f16347c = System.currentTimeMillis();
        }
        int surfaceWidth = this.f16337a.getSurfaceWidth() + createBitmap.getWidth();
        bVar.f16349e = surfaceWidth;
        bVar.f16354j = false;
        bVar.f16352h = false;
        bVar.m(surfaceWidth / this.f16341e);
        if (bVar.d() == 0) {
            bVar.k(bVar.f16347c);
        }
        if (bVar.f16351g == 0) {
            bVar.f16351g = 1;
        }
        bVar.f16353i = false;
    }

    public void c(float f10) {
        this.f16341e = f10 / 1000.0f;
    }

    @Override // v7.c
    public void pause() {
        this.f16343g = true;
    }

    @Override // v7.c
    public void resume() {
        this.f16343g = false;
    }
}
