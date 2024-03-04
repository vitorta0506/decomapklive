package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes3.dex */
public class HollowTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private Paint f23766a;

    /* renamed from: b  reason: collision with root package name */
    private PorterDuffXfermode f23767b;

    public HollowTextView(Context context) {
        this(context, null);
    }

    private void init() {
        Paint paint = new Paint(1);
        this.f23766a = paint;
        paint.setColor(Color.parseColor("#e6ffffff"));
        this.f23767b = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.f23766a);
        getPaint().setXfermode(this.f23767b);
        super.onDraw(canvas);
        canvas.restore();
    }

    public HollowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HollowTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        init();
    }
}
