package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class VoiceWaveView extends View {

    /* renamed from: a  reason: collision with root package name */
    Paint f24133a;

    /* renamed from: b  reason: collision with root package name */
    Paint f24134b;

    /* renamed from: c  reason: collision with root package name */
    private RectF f24135c;

    /* renamed from: d  reason: collision with root package name */
    private int f24136d;

    /* renamed from: e  reason: collision with root package name */
    private int f24137e;

    /* renamed from: f  reason: collision with root package name */
    Bitmap f24138f;

    /* renamed from: g  reason: collision with root package name */
    Bitmap f24139g;

    /* renamed from: h  reason: collision with root package name */
    int f24140h;

    public VoiceWaveView(Context context) {
        super(context);
        this.f24136d = 100;
        this.f24137e = -1;
        this.f24140h = 40;
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f24133a = paint;
        paint.setAntiAlias(true);
        this.f24133a.setColor(getResources().getColor(R.color.color_app_primary));
        Paint paint2 = new Paint();
        this.f24134b = paint2;
        paint2.setColor(Color.parseColor("#331B8DF1"));
        this.f24140h = DensityUtil.dp2px(getContext(), 12.0f);
        this.f24138f = BitmapFactory.decodeResource(getResources(), R.mipmap.icon_im_yuyin_point2);
        this.f24139g = BitmapFactory.decodeResource(getResources(), R.mipmap.icon_im_yuyin_point);
    }

    public void b() {
        this.f24137e = -1;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f24135c == null) {
            this.f24135c = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
        int i9 = this.f24137e;
        if (i9 != -1) {
            int i10 = this.f24140h / 2;
        }
        if (i9 == -1) {
            canvas.drawBitmap(this.f24138f, (getWidth() - this.f24138f.getWidth()) / 2, (getHeight() - this.f24138f.getHeight()) / 2, this.f24133a);
        } else {
            canvas.drawBitmap(this.f24139g, (getWidth() - this.f24139g.getWidth()) / 2, (getHeight() - this.f24139g.getHeight()) / 2, this.f24133a);
        }
    }

    public void setMax(int i9) {
        this.f24136d = i9;
    }

    public void setWave(int i9) {
        this.f24137e = i9;
        invalidate();
    }

    public VoiceWaveView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24136d = 100;
        this.f24137e = -1;
        this.f24140h = 40;
        a();
    }

    public VoiceWaveView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24136d = 100;
        this.f24137e = -1;
        this.f24140h = 40;
        a();
    }
}
