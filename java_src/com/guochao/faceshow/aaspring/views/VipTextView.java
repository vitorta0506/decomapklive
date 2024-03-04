package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class VipTextView extends FaceCastTextViewBridge {

    /* renamed from: a  reason: collision with root package name */
    private Rect f24132a;

    public VipTextView(Context context) {
        super(context);
        this.f24132a = new Rect();
        init();
    }

    private void init() {
        setTextColor(Color.parseColor("#ffb423"));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        TextPaint paint = getPaint();
        float measuredWidth = getMeasuredWidth();
        String charSequence = getText().toString();
        paint.getTextBounds(charSequence, 0, charSequence.length(), this.f24132a);
        paint.setShader(null);
        paint.setColor(Color.parseColor("#A05400"));
        canvas.drawText(charSequence, (getMeasuredWidth() / 2.0f) - (this.f24132a.width() / 2.0f), ((getMeasuredHeight() / 2.0f) + (this.f24132a.height() / 2.0f)) - DensityUtil.dp2px(3.0f), paint);
        paint.setShader(new LinearGradient(0.0f, 0.0f, measuredWidth, getMeasuredHeight(), Color.parseColor("#ffeac8"), Color.parseColor("#ffb423"), Shader.TileMode.CLAMP));
        paint.setColor(Color.parseColor("#ffb423"));
        canvas.drawText(charSequence, (getMeasuredWidth() / 2.0f) - (this.f24132a.width() / 2.0f), ((getMeasuredHeight() / 2.0f) + (this.f24132a.height() / 2.0f)) - DensityUtil.dp2px(4.0f), paint);
    }

    public VipTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24132a = new Rect();
        init();
    }

    public VipTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24132a = new Rect();
        init();
    }
}
