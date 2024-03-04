package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class BorderImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    Paint f23522a;

    /* renamed from: b  reason: collision with root package name */
    int f23523b;

    /* renamed from: c  reason: collision with root package name */
    int f23524c;

    public BorderImageView(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        Paint paint = new Paint();
        this.f23522a = paint;
        paint.setColor(this.f23524c);
        this.f23522a.setStyle(Paint.Style.STROKE);
        int dp2px = DensityUtil.dp2px(2.0f);
        this.f23523b = dp2px;
        this.f23522a.setStrokeWidth(dp2px);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = this.f23523b / 2.0f;
        float measuredWidth = getMeasuredWidth() - f10;
        float measuredHeight = getMeasuredHeight() - f10;
        int i9 = this.f23523b;
        canvas.drawRoundRect(f10, f10, measuredWidth, measuredHeight, i9, i9, this.f23522a);
    }

    public BorderImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BorderImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23524c = Color.parseColor("#9671F0");
        a();
    }
}
