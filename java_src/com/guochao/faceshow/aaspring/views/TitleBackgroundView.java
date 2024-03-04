package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class TitleBackgroundView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f24078a;

    /* renamed from: b  reason: collision with root package name */
    Paint f24079b;

    /* renamed from: c  reason: collision with root package name */
    float f24080c;

    public TitleBackgroundView(@NonNull Context context) {
        super(context);
        this.f24078a = true;
        this.f24079b = new Paint();
        a();
    }

    private void a() {
        setWillNotDraw(false);
        this.f24079b.setColor(getResources().getColor(R.color.color_ugc_divider));
        this.f24079b.setAntiAlias(true);
        this.f24079b.setStyle(Paint.Style.FILL);
        if (isInEditMode()) {
            return;
        }
        Paint paint = this.f24079b;
        float dp2px = DensityUtil.dp2px(0.75f);
        this.f24080c = dp2px;
        paint.setStrokeWidth(dp2px);
    }

    public void b(int i9, int i10) {
        this.f24079b.setColor(i9);
        Paint paint = this.f24079b;
        float f10 = i10;
        this.f24080c = f10;
        paint.setStrokeWidth(f10);
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (getBackground() == null || !this.f24078a) {
            return;
        }
        canvas.drawLine(0.0f, getMeasuredHeight() - this.f24080c, getMeasuredWidth(), getMeasuredHeight(), this.f24079b);
    }

    public void setBottomEnable(boolean z10) {
        if (this.f24078a != z10) {
            this.f24078a = z10;
            invalidate();
        }
    }

    public TitleBackgroundView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24078a = true;
        this.f24079b = new Paint();
        a();
    }

    public TitleBackgroundView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24078a = true;
        this.f24079b = new Paint();
        a();
    }
}
