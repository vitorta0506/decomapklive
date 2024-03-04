package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.TypedValue;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.BitmapUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.NavigationBarUtils;
/* loaded from: classes3.dex */
public abstract class f extends g {
    private boolean A;
    private Paint B;
    private Bitmap C;
    private Bitmap D;

    /* renamed from: y  reason: collision with root package name */
    private PointF f24314y;

    /* renamed from: z  reason: collision with root package name */
    private Rect f24315z;

    public f(la.a aVar, int i9, float f10, float f11) {
        super(aVar, i9, f10, f11);
        this.f24314y = new PointF();
        this.f24315z = new Rect();
        this.A = false;
        this.B = new Paint();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.g
    public void E(Canvas canvas) {
        int dp2px;
        int dp2px2;
        int i9;
        int i10;
        int i11;
        int i12;
        if (F()) {
            int save = canvas.save();
            canvas.scale(1.0f / k().getDoodleScale(), 1.0f / k().getDoodleScale(), g() - r().x, h() - r().y);
            this.f24315z.set(getBounds());
            ma.a.f(this.f24315z, k().getDoodleScale(), g() - r().x, h() - r().y);
            float unitSize = k().getUnitSize();
            Rect rect = this.f24315z;
            int i13 = g.f24316w;
            rect.left = (int) (rect.left - (i13 * unitSize));
            rect.top = (int) (rect.top - (i13 * unitSize));
            rect.right = (int) (rect.right + (i13 * unitSize));
            rect.bottom = (int) (rect.bottom + (i13 * unitSize));
            this.B.setColor(8947848);
            this.B.setShader(null);
            this.B.setStyle(Paint.Style.STROKE);
            this.B.setStrokeWidth(1.0f);
            canvas.drawRect(this.f24315z, this.B);
            if (K()) {
                this.B.setColor(Color.parseColor("#FFFFFF"));
            } else {
                this.B.setColor(Color.parseColor("#FFFFFF"));
            }
            this.B.setStyle(Paint.Style.STROKE);
            this.B.setStrokeWidth(1.0f * unitSize);
            canvas.drawRect(this.f24315z, this.B);
            this.B.setColor(1149798536);
            this.B.setStrokeWidth(unitSize * 0.8f);
            canvas.drawRect(this.f24315z, this.B);
            this.B.setColor(Color.parseColor("#FFFFFF"));
            this.B.setAntiAlias(true);
            this.B.setFilterBitmap(false);
            if (NavigationBarUtils.isPad(BaseApplication.getInstance())) {
                dp2px = (int) (DensityUtil.dp2px(20.0f) * k().getUnitSize());
                dp2px2 = (int) (DensityUtil.dp2px(20.0f) * k().getUnitSize());
                i11 = dp2px / 5;
                i12 = dp2px2 / 5;
                i9 = R.mipmap.im_textbox_close_large;
                i10 = R.mipmap.im_textbox_zoom_large;
            } else {
                dp2px = (int) (DensityUtil.dp2px(8.0f) * k().getUnitSize());
                dp2px2 = (int) (DensityUtil.dp2px(8.0f) * k().getUnitSize());
                i9 = R.mipmap.im_textbox_close;
                i10 = R.mipmap.im_textbox_zoom;
                i11 = 0;
                i12 = 0;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inTargetDensity = new TypedValue().density;
            options.inScaled = false;
            if (this.C == null) {
                this.C = BitmapUtils.imageScale(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), i9, options), dp2px, dp2px2);
            }
            Bitmap bitmap = this.C;
            canvas.drawBitmap(bitmap, this.f24315z.left - ((bitmap.getWidth() / 2) - i11), this.f24315z.top - ((this.C.getHeight() / 2) - i12), this.B);
            if (this.D == null) {
                this.D = BitmapUtils.imageScale(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), i10, options), dp2px, dp2px2);
            }
            Bitmap bitmap2 = this.D;
            canvas.drawBitmap(bitmap2, this.f24315z.right - ((bitmap2.getWidth() / 2) - i11), this.f24315z.bottom - ((this.D.getHeight() / 2) - i12), this.B);
            canvas.restoreToCount(save);
        }
    }

    public boolean I(float f10, float f11) {
        k();
        PointF r10 = r();
        PointF d10 = ma.a.d(this.f24314y, (int) (-m()), f10 - r10.x, f11 - r10.y, g() - r().x, h() - r().y);
        this.f24315z.set(getBounds());
        float unitSize = (k().getUnitSize() * 13.0f) / k().getDoodleScale();
        Rect rect = this.f24315z;
        int i9 = (int) (rect.left - unitSize);
        rect.left = i9;
        rect.top = (int) (rect.top - unitSize);
        return d10.x >= ((float) (i9 - DensityUtil.dp2px(10.0f))) && d10.x <= ((float) (this.f24315z.left + DensityUtil.dp2px(10.0f))) && d10.y >= ((float) (this.f24315z.top - DensityUtil.dp2px(10.0f))) && d10.y <= ((float) (this.f24315z.top + DensityUtil.dp2px(10.0f)));
    }

    public boolean J(float f10, float f11) {
        k();
        PointF r10 = r();
        PointF d10 = ma.a.d(this.f24314y, (int) (-m()), f10 - r10.x, f11 - r10.y, g() - r().x, h() - r().y);
        this.f24315z.set(getBounds());
        float unitSize = (k().getUnitSize() * 13.0f) / k().getDoodleScale();
        Rect rect = this.f24315z;
        rect.top = (int) (rect.top - unitSize);
        int i9 = (int) (rect.right + unitSize);
        rect.right = i9;
        rect.bottom = (int) (rect.bottom + unitSize);
        return d10.x >= ((float) (i9 - DensityUtil.dp2px(10.0f))) && d10.x <= ((float) (this.f24315z.right + DensityUtil.dp2px(10.0f))) && d10.y >= ((float) (this.f24315z.bottom - DensityUtil.dp2px(10.0f))) && d10.y <= ((float) (this.f24315z.bottom + DensityUtil.dp2px(10.0f)));
    }

    public boolean K() {
        return this.A;
    }

    public void L(boolean z10) {
        this.A = z10;
    }
}
