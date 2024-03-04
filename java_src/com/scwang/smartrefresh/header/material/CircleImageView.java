package com.scwang.smartrefresh.header.material;

import android.content.Context;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.widget.ImageView;
/* loaded from: classes4.dex */
public class CircleImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    int f29241a;

    public CircleImageView(Context context, int i9) {
        super(context);
        float f10 = getResources().getDisplayMetrics().density;
        this.f29241a = (int) (3.5f * f10);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        setElevation(f10 * 4.0f);
        shapeDrawable.getPaint().setColor(i9);
        setBackground(shapeDrawable);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
    }
}
