package com.guochao.faceshow.aaspring.danmu;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.guochao.faceshow.aaspring.danmu.c;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class DanmuView extends View implements c {

    /* renamed from: a  reason: collision with root package name */
    private int f16324a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16325b;

    /* renamed from: c  reason: collision with root package name */
    private List<b> f16326c;

    /* renamed from: d  reason: collision with root package name */
    private c.a f16327d;

    /* renamed from: e  reason: collision with root package name */
    private c.b f16328e;

    /* renamed from: f  reason: collision with root package name */
    private List<b> f16329f;

    /* renamed from: g  reason: collision with root package name */
    v7.b f16330g;

    /* renamed from: h  reason: collision with root package name */
    private List<b> f16331h;

    /* renamed from: i  reason: collision with root package name */
    List<b> f16332i;

    /* renamed from: j  reason: collision with root package name */
    TextPaint f16333j;

    /* renamed from: k  reason: collision with root package name */
    a f16334k;

    /* renamed from: l  reason: collision with root package name */
    v7.a f16335l;

    /* renamed from: m  reason: collision with root package name */
    b f16336m;

    public DanmuView(Context context) {
        super(context);
        this.f16324a = 2;
        this.f16325b = false;
        this.f16326c = new ArrayList();
        this.f16329f = new CopyOnWriteArrayList();
        this.f16331h = new ArrayList();
        this.f16332i = new ArrayList();
        this.f16333j = new TextPaint();
        f();
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public void a(b bVar) {
        if (this.f16331h.size() > 0) {
            d(this.f16331h.remove(0));
        }
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public void b(Canvas canvas, List<b> list) {
        this.f16329f.removeAll(this.f16332i);
        this.f16332i.clear();
        if (!this.f16329f.isEmpty()) {
            invalidate();
        }
        if (this.f16328e != null && this.f16329f.isEmpty() && this.f16331h.isEmpty()) {
            this.f16328e.onDanmuShowEnd(this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public void c(b bVar) {
        this.f16332i.add(bVar);
    }

    public void d(b bVar) {
        if (g()) {
            if (this.f16329f.isEmpty()) {
                this.f16329f.add(bVar);
                getDrawer().b(bVar);
                invalidate();
                return;
            }
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            boolean z10 = false;
            for (int i9 = 0; i9 < this.f16324a; i9++) {
                sparseBooleanArray.put(i9, true);
            }
            for (int i10 = 0; i10 < this.f16329f.size(); i10++) {
                b bVar2 = this.f16329f.get(i10);
                if (sparseBooleanArray.get(bVar2.f16351g - 1)) {
                    Bitmap bitmap = bVar2.f16348d;
                    if (bitmap != null) {
                        sparseBooleanArray.put(bVar2.f16351g - 1, bVar2.f16350f >= ((float) bitmap.getWidth()));
                    } else {
                        sparseBooleanArray.put(bVar2.f16351g - 1, false);
                    }
                }
            }
            int i11 = 0;
            while (true) {
                if (i11 >= this.f16324a) {
                    break;
                } else if (sparseBooleanArray.get(i11)) {
                    bVar.f16351g = i11 + 1;
                    this.f16329f.add(bVar);
                    z10 = true;
                    break;
                } else {
                    i11++;
                }
            }
            if (z10) {
                return;
            }
            this.f16331h.add(bVar);
        }
    }

    public void e() {
        List<b> list = this.f16329f;
        if (list != null) {
            list.clear();
        }
        List<b> list2 = this.f16331h;
        if (list2 != null) {
            list2.clear();
        }
        List<b> list3 = this.f16332i;
        if (list3 != null) {
            list3.clear();
        }
    }

    void f() {
        this.f16333j.setColor(SupportMenu.CATEGORY_MASK);
        this.f16333j.setAntiAlias(true);
        this.f16333j.setTextSize(30.0f);
    }

    public boolean g() {
        return this.f16325b;
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public v7.a getConfig() {
        if (this.f16335l == null) {
            this.f16335l = new v7.a();
        }
        return this.f16335l;
    }

    public a getDanmuDrawer() {
        return this.f16334k;
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public v7.b getDanmuProvider() {
        return this.f16330g;
    }

    public v7.c getDrawer() {
        if (this.f16334k == null) {
            a aVar = new a(this);
            this.f16334k = aVar;
            aVar.c(getResources().getDisplayMetrics().widthPixels / 5.0f);
        }
        return this.f16334k;
    }

    public int getMaxLine() {
        return this.f16324a;
    }

    public c.a getOnDanmuClickListener() {
        return this.f16327d;
    }

    public List<b> getOnScreenDanmus() {
        return this.f16329f;
    }

    public int getSurfaceHeight() {
        return getMeasuredHeight();
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public int getSurfaceWidth() {
        return getMeasuredWidth();
    }

    public void h() {
        getDrawer().pause();
    }

    public void i() {
        this.f16332i.clear();
        this.f16331h.clear();
        this.f16329f.clear();
    }

    public void j() {
        getDrawer().resume();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f16326c.clear();
        this.f16326c.addAll(this.f16329f);
        getDrawer().a(canvas, this.f16326c);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        this.f16325b = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Bitmap bitmap;
        Bitmap bitmap2;
        b bVar;
        if (this.f16327d == null) {
            return super.onTouchEvent(motionEvent);
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            for (int i9 = 0; i9 < this.f16329f.size(); i9++) {
                b bVar2 = this.f16329f.get(i9);
                float f10 = bVar2.f16350f;
                if (bVar2.f16357m == 1) {
                    f10 = bVar2.f16349e - f10;
                }
                float width = f10 - (bVar2.f16348d != null ? bitmap.getWidth() : 0);
                float width2 = (bVar2.f16348d != null ? bitmap2.getWidth() : 0) + width;
                int i10 = bVar2.f16351g - 1;
                Bitmap bitmap3 = bVar2.f16348d;
                float height = i10 * ((bitmap3 != null ? bitmap3.getHeight() : 0) + getConfig().a());
                int i11 = bVar2.f16351g;
                Bitmap bitmap4 = bVar2.f16348d;
                float height2 = i11 * ((bitmap4 != null ? bitmap4.getHeight() : 0) + getConfig().a());
                if (x10 > width && width2 > x10 && y10 > height && height2 > y10) {
                    this.f16336m = bVar2;
                    boolean a10 = this.f16327d.a(bVar2, motionEvent);
                    Log.i("DanmuView", "touch down " + bVar2.f16346b.toString());
                    return a10;
                }
            }
        } else if (action == 1 && (bVar = this.f16336m) != null) {
            boolean b10 = this.f16327d.b(bVar, motionEvent);
            this.f16336m = null;
            return b10;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setDanmuConfig(v7.a aVar) {
    }

    public void setDanmuDrawer(a aVar) {
        this.f16334k = aVar;
    }

    public void setDanmuProvider(v7.b bVar) {
        this.f16330g = bVar;
    }

    public void setMaxLine(int i9) {
        this.f16324a = i9;
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public void setOnDanmuClickListener(c.a aVar) {
        this.f16327d = aVar;
    }

    @Override // com.guochao.faceshow.aaspring.danmu.c
    public void setOnDanmuStateListener(c.b bVar) {
        this.f16328e = bVar;
    }

    public DanmuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16324a = 2;
        this.f16325b = false;
        this.f16326c = new ArrayList();
        this.f16329f = new CopyOnWriteArrayList();
        this.f16331h = new ArrayList();
        this.f16332i = new ArrayList();
        this.f16333j = new TextPaint();
        f();
    }

    public DanmuView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f16324a = 2;
        this.f16325b = false;
        this.f16326c = new ArrayList();
        this.f16329f = new CopyOnWriteArrayList();
        this.f16331h = new ArrayList();
        this.f16332i = new ArrayList();
        this.f16333j = new TextPaint();
        f();
    }
}
