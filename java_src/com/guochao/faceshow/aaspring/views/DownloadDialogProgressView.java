package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class DownloadDialogProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    Paint f23553a;

    /* renamed from: b  reason: collision with root package name */
    private int f23554b;

    /* renamed from: c  reason: collision with root package name */
    private int f23555c;

    /* renamed from: d  reason: collision with root package name */
    RectF f23556d;

    /* renamed from: e  reason: collision with root package name */
    int f23557e;

    public DownloadDialogProgressView(Context context) {
        super(context);
        this.f23554b = 100;
        this.f23555c = 0;
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f23553a = paint;
        paint.setColor(getResources().getColor(R.color.white));
        this.f23553a.setStrokeWidth(DensityUtil.dp2px(getContext(), 2.0f));
        this.f23553a.setStyle(Paint.Style.STROKE);
        this.f23553a.setAntiAlias(true);
        this.f23557e = DensityUtil.dp2px(getContext(), 1.0f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f23556d == null) {
            int i9 = this.f23557e;
            this.f23556d = new RectF(i9, i9, getWidth() - this.f23557e, getHeight() - this.f23557e);
        }
        canvas.drawArc(this.f23556d, 270.0f, (this.f23555c * 360.0f) / this.f23554b, false, this.f23553a);
    }

    public void setProgress(int i9) {
        this.f23555c = i9;
        invalidate();
    }

    public DownloadDialogProgressView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23554b = 100;
        this.f23555c = 0;
        a();
    }

    public DownloadDialogProgressView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23554b = 100;
        this.f23555c = 0;
        a();
    }
}
