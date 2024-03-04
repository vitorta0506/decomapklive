package jc;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.tencent.bugly.BuglyStrategy;
import java.security.MessageDigest;
import java.util.Objects;
/* loaded from: classes4.dex */
public class c extends gi.a {

    /* renamed from: b  reason: collision with root package name */
    private String f53202b;

    public c(String str) {
        this.f53202b = str;
    }

    @Override // gi.a
    protected Bitmap a(@NonNull Context context, @NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        float f10;
        float f11;
        Bitmap d10 = dVar.d(i9, i10, bitmap.getConfig());
        Canvas canvas = new Canvas(d10);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        new TextPaint().setColor(-1);
        new BitmapFactory.Options().inSampleSize = 3;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(BaseApplication.getInstance()).inflate(R.layout.layout_watermark, (ViewGroup) null);
        linearLayout.setGravity(16);
        TextView textView = (TextView) linearLayout.findViewById(R.id.title);
        if (!BaseConfig.isChinese()) {
            textView.setText("BuzzCast \r\nID:" + this.f53202b);
        } else {
            textView.setText("在么 \r\nID:" + this.f53202b);
        }
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH, Integer.MIN_VALUE));
        int measuredWidth = linearLayout.getMeasuredWidth();
        int measuredHeight = linearLayout.getMeasuredHeight();
        linearLayout.layout(0, 0, measuredWidth, measuredHeight);
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        canvas2.drawColor(0);
        linearLayout.draw(canvas2);
        float f12 = -1.0f;
        if (DensityUtil.dp2px(3.0f) + measuredWidth <= i9) {
            if (DensityUtil.dp2px(8.0f) + measuredHeight > i10) {
                f10 = (measuredHeight * 1.0f) / 2.0f;
                f11 = i10;
            }
            if (f12 > 0.0f && f12 < 1.0f) {
                createBitmap = Bitmap.createScaledBitmap(createBitmap, (int) (measuredWidth * f12), (int) (measuredHeight * f12), false);
            }
            canvas.drawBitmap(createBitmap, (i9 - createBitmap.getWidth()) - DensityUtil.dp2px(2.0f), (i10 - createBitmap.getHeight()) - DensityUtil.dp2px(5.0f), (Paint) null);
            return d10;
        }
        f10 = (measuredWidth * 1.0f) / 2.0f;
        f11 = i9;
        f12 = f10 / f11;
        if (f12 > 0.0f) {
            createBitmap = Bitmap.createScaledBitmap(createBitmap, (int) (measuredWidth * f12), (int) (measuredHeight * f12), false);
        }
        canvas.drawBitmap(createBitmap, (i9 - createBitmap.getWidth()) - DensityUtil.dp2px(2.0f), (i10 - createBitmap.getHeight()) - DensityUtil.dp2px(5.0f), (Paint) null);
        return d10;
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        return (obj instanceof c) && Objects.equals(((c) obj).f53202b, this.f53202b);
    }

    @Override // e0.b
    public int hashCode() {
        return Objects.hashCode("com.image.glide.transform.FaceCastWaterMarkTransformation1" + this.f53202b);
    }

    public String toString() {
        return "FaceCastWaterMarkTransformation{mUserId='" + this.f53202b + "'}";
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(("com.image.glide.transform.FaceCastWaterMarkTransformation1" + this.f53202b).getBytes());
    }
}
