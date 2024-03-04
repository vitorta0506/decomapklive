package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class ColorfulProgress extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f26566a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f26567b;

    /* renamed from: c  reason: collision with root package name */
    private RectF f26568c;

    /* renamed from: d  reason: collision with root package name */
    private RectF f26569d;

    /* renamed from: e  reason: collision with root package name */
    private float f26570e;

    /* renamed from: f  reason: collision with root package name */
    private List<a> f26571f;

    /* renamed from: g  reason: collision with root package name */
    private float f26572g;

    /* renamed from: h  reason: collision with root package name */
    private s f26573h;

    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f26574a;

        /* renamed from: b  reason: collision with root package name */
        public float f26575b;

        /* renamed from: c  reason: collision with root package name */
        private float f26576c;
    }

    public ColorfulProgress(Context context) {
        super(context);
        c();
    }

    private void a(Canvas canvas) {
        for (a aVar : this.f26571f) {
            this.f26567b.setColor(aVar.f26574a);
            RectF rectF = this.f26569d;
            rectF.left = aVar.f26575b;
            rectF.top = 0.0f;
            rectF.bottom = this.f26570e;
            rectF.right = aVar.f26576c == -1.0f ? this.f26572g : aVar.f26576c;
            RectF rectF2 = this.f26569d;
            float f10 = rectF2.left;
            float f11 = rectF2.right;
            if (f10 > f11) {
                rectF2.left = f11;
                rectF2.right = f10;
            }
            canvas.drawRect(rectF2, this.f26567b);
        }
    }

    private void b(Canvas canvas) {
        canvas.drawRect(this.f26568c, this.f26566a);
    }

    private void c() {
        this.f26566a = new Paint();
        this.f26567b = new Paint();
        this.f26568c = new RectF();
        this.f26569d = new RectF();
        this.f26566a.setAntiAlias(true);
        this.f26567b.setAntiAlias(true);
        this.f26566a.setColor(getResources().getColor(R.color.transparent));
        this.f26571f = new ArrayList();
    }

    public int getMarkListSize() {
        return this.f26571f.size();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        b(canvas);
        a(canvas);
    }

    public void setCurPosition(float f10) {
        this.f26572g = f10;
        invalidate();
    }

    public void setVideoProgressController(s sVar) {
        this.f26573h = sVar;
    }

    public ColorfulProgress(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public ColorfulProgress(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        c();
    }
}
