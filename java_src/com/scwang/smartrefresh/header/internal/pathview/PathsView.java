package com.scwang.smartrefresh.header.internal.pathview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import sd.b;
/* loaded from: classes4.dex */
public class PathsView extends View {

    /* renamed from: a  reason: collision with root package name */
    protected b f29240a;

    public PathsView(Context context) {
        this(context, null);
    }

    public void a(int... iArr) {
        this.f29240a.f(iArr);
    }

    public boolean b(String... strArr) {
        return this.f29240a.g(strArr);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f29240a.draw(canvas);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getTag() instanceof String) {
            b(getTag().toString());
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        this.f29240a.setBounds(getPaddingLeft(), getPaddingTop(), Math.max((i11 - i9) - getPaddingRight(), getPaddingLeft()), Math.max((i12 - i10) - getPaddingTop(), getPaddingTop()));
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        b bVar = this.f29240a;
        super.setMeasuredDimension(View.resolveSize(bVar.getBounds().width() + getPaddingLeft() + getPaddingRight(), i9), View.resolveSize(bVar.getBounds().height() + getPaddingTop() + getPaddingBottom(), i10));
    }

    public PathsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29240a = new b();
        this.f29240a = new b();
    }
}
