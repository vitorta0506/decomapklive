package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class LiveChatAutoBackgroundView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    Paint f23781a;

    /* renamed from: b  reason: collision with root package name */
    int f23782b;

    /* renamed from: c  reason: collision with root package name */
    int f23783c;

    /* renamed from: d  reason: collision with root package name */
    int f23784d;

    /* renamed from: e  reason: collision with root package name */
    TextView f23785e;

    /* renamed from: f  reason: collision with root package name */
    TextView f23786f;

    public LiveChatAutoBackgroundView(Context context) {
        super(context);
        this.f23782b = Color.parseColor("#66000000");
        a(context, null);
    }

    void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LiveChatAutoBackgroundView);
            this.f23782b = obtainStyledAttributes.getColor(0, Color.parseColor("#40000000"));
            obtainStyledAttributes.recycle();
        }
        setWillNotDraw(false);
        Paint paint = new Paint();
        this.f23781a = paint;
        paint.setColor(this.f23782b);
        this.f23781a.setStyle(Paint.Style.FILL);
        this.f23781a.setAntiAlias(true);
        this.f23781a.setDither(true);
        this.f23783c = DensityUtil.dp2px(6.0f);
        this.f23784d = DensityUtil.dp2px(6.0f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        TextView textView = this.f23785e;
        if ((textView != null && textView.getLayout() != null && this.f23785e.getLayout().getLineCount() > 1) || this.f23786f.getVisibility() == 0) {
            float f10 = measuredHeight;
            int i9 = this.f23784d;
            canvas.drawRoundRect(0.0f, 0.0f, measuredWidth, f10, i9, i9, this.f23781a);
        } else {
            int i10 = this.f23783c;
            canvas.drawRoundRect(0.0f, 0.0f, measuredWidth, measuredHeight, i10, i10, this.f23781a);
        }
        super.draw(canvas);
    }

    public int getPaintColor() {
        return this.f23782b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f23785e = (TextView) findViewById(R.id.chat_content);
        this.f23786f = (TextView) findViewById(R.id.translate_content);
    }

    public void setPaintColor(int i9) {
        if (this.f23782b == i9) {
            return;
        }
        this.f23782b = i9;
        this.f23781a.setColor(i9);
        invalidate();
    }

    public LiveChatAutoBackgroundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23782b = Color.parseColor("#66000000");
        a(context, attributeSet);
    }

    public LiveChatAutoBackgroundView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23782b = Color.parseColor("#66000000");
        a(context, attributeSet);
    }
}
