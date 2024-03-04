package com.scwang.smartrefresh.layout.header;

import ae.b;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.scwang.smartrefresh.layout.R$string;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.g;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public class FalsifyHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected i f29418d;

    public FalsifyHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        i iVar = this.f29418d;
        if (iVar != null) {
            iVar.b(RefreshState.None);
            this.f29418d.b(RefreshState.RefreshFinish);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int b10 = b.b(5.0f);
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(-858993460);
            paint.setStrokeWidth(b.b(1.0f));
            float f10 = b10;
            paint.setPathEffect(new DashPathEffect(new float[]{f10, f10, f10, f10}, 1.0f));
            canvas.drawRect(f10, f10, getWidth() - b10, getBottom() - b10, paint);
            TextView textView = new TextView(getContext());
            textView.setText(getResources().getString(R$string.srl_component_falsify, getClass().getSimpleName(), Float.valueOf(b.c(getHeight()))));
            textView.setTextColor(-858993460);
            textView.setGravity(17);
            textView.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(getHeight(), BasicMeasure.EXACTLY));
            textView.layout(0, 0, getWidth(), getHeight());
            textView.draw(canvas);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        this.f29418d = iVar;
    }

    public FalsifyHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FalsifyHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
