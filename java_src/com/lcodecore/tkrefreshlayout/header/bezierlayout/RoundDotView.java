package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.thumbplayer.api.TPOptionalID;
/* loaded from: classes4.dex */
public class RoundDotView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f27998a;

    /* renamed from: b  reason: collision with root package name */
    private float f27999b;

    /* renamed from: c  reason: collision with root package name */
    private int f28000c;

    /* renamed from: d  reason: collision with root package name */
    private int f28001d;

    public RoundDotView(Context context) {
        this(context, null, 0);
    }

    private void a() {
        Paint paint = new Paint();
        this.f27998a = paint;
        paint.setAntiAlias(true);
        this.f27998a.setColor(Color.rgb(114, 114, 114));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = (getMeasuredWidth() / this.f28000c) - 10;
        for (int i9 = 0; i9 < this.f28000c; i9++) {
            switch (i9) {
                case 0:
                    this.f27998a.setAlpha(35);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f28001d * 3)) - (((measuredWidth * 3) / 3) * 2), getMeasuredHeight() / 2, this.f27999b, this.f27998a);
                    break;
                case 1:
                    this.f27998a.setAlpha(105);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f28001d * 2)) - (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f27999b, this.f27998a);
                    break;
                case 2:
                    this.f27998a.setAlpha(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f28001d * 1)) - ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f27999b, this.f27998a);
                    break;
                case 3:
                    this.f27998a.setAlpha(255);
                    canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f27999b, this.f27998a);
                    break;
                case 4:
                    this.f27998a.setAlpha(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f28001d * 1) + ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f27999b, this.f27998a);
                    break;
                case 5:
                    this.f27998a.setAlpha(105);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f28001d * 2) + (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f27999b, this.f27998a);
                    break;
                case 6:
                    this.f27998a.setAlpha(35);
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f28001d * 3) + (((measuredWidth * 3) / 3) * 2), getMeasuredHeight() / 2, this.f27999b, this.f27998a);
                    break;
            }
        }
    }

    public void setCir_x(int i9) {
        this.f28001d = i9;
    }

    public RoundDotView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundDotView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f27999b = 15.0f;
        this.f28000c = 7;
        a();
    }
}
