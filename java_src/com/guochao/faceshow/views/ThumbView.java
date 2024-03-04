package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
/* loaded from: classes4.dex */
public class ThumbView extends View {

    /* renamed from: a  reason: collision with root package name */
    private final int f26830a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f26831b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f26832c;

    /* renamed from: d  reason: collision with root package name */
    private int f26833d;

    /* renamed from: e  reason: collision with root package name */
    private int f26834e;

    public ThumbView(Context context, int i9, Drawable drawable) {
        super(context);
        this.f26833d = i9;
        this.f26831b = drawable;
        this.f26830a = (int) TypedValue.applyDimension(1, 15.0f, context.getResources().getDisplayMetrics());
        setBackgroundDrawable(this.f26831b);
    }

    public boolean a(int i9, int i10) {
        Rect rect = new Rect();
        getHitRect(rect);
        int i11 = rect.left;
        int i12 = this.f26830a;
        rect.left = i11 - i12;
        rect.right += i12;
        rect.top -= i12;
        rect.bottom += i12;
        return rect.contains(i9, i10);
    }

    public int getRangeIndex() {
        return this.f26834e;
    }

    @Override // android.view.View
    public boolean isPressed() {
        return this.f26832c;
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f26833d, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i10), BasicMeasure.EXACTLY));
        this.f26831b.setBounds(0, 0, this.f26833d, getMeasuredHeight());
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        this.f26832c = z10;
    }

    public void setThumbDrawable(Drawable drawable) {
        this.f26831b = drawable;
    }

    public void setThumbWidth(int i9) {
        this.f26833d = i9;
    }

    public void setTickIndex(int i9) {
        this.f26834e = i9;
    }
}
