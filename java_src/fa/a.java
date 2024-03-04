package fa;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Hashtable;
/* loaded from: classes3.dex */
public class a {
    public static Bitmap a(String str, int i9, int i10, Bitmap bitmap) {
        Bitmap bitmap2;
        int i11;
        int i12;
        int i13;
        int i14;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i15 = i9 / 2;
        int i16 = i10 / 2;
        if (bitmap != null) {
            Matrix matrix = new Matrix();
            float min = Math.min(((i9 * 1.5f) / 5.0f) / bitmap.getWidth(), ((i10 * 1.5f) / 5.0f) / bitmap.getHeight());
            matrix.postScale(min, min);
            bitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } else {
            bitmap2 = null;
        }
        if (bitmap2 != null) {
            int width = bitmap2.getWidth();
            int height = bitmap2.getHeight();
            i13 = width;
            i14 = height;
            i11 = (i9 - width) / 2;
            i12 = (i10 - height) / 2;
        } else {
            i11 = i15;
            i12 = i16;
            i13 = 0;
            i14 = 0;
        }
        Hashtable hashtable = new Hashtable();
        hashtable.put(EncodeHintType.CHARACTER_SET, "utf-8");
        hashtable.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
        hashtable.put(EncodeHintType.MARGIN, 0);
        try {
            BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, i9, i10, hashtable);
            int[] iArr = new int[i9 * i10];
            for (int i17 = 0; i17 < i10; i17++) {
                for (int i18 = 0; i18 < i9; i18++) {
                    int i19 = ViewCompat.MEASURED_STATE_MASK;
                    if (i18 >= i11 && i18 < i11 + i13 && i17 >= i12 && i17 < i12 + i14) {
                        int pixel = bitmap2.getPixel(i18 - i11, i17 - i12);
                        if (pixel != 0) {
                            i19 = pixel;
                        } else if (!encode.get(i18, i17)) {
                            i19 = -1;
                        }
                        iArr[(i17 * i9) + i18] = i19;
                    } else if (encode.get(i18, i17)) {
                        iArr[(i17 * i9) + i18] = -16777216;
                    } else {
                        iArr[(i17 * i9) + i18] = -1;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
            createBitmap.setPixels(iArr, 0, i9, 0, 0, i9, i10);
            return createBitmap;
        } catch (WriterException e10) {
            System.out.print(e10);
            return null;
        }
    }

    public static Bitmap b(Context context, Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, (bitmap.getWidth() / 2 < bitmap.getHeight() / 2 ? bitmap.getWidth() : bitmap.getHeight()) / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        float width = bitmap.getWidth() * 0.03787879f;
        paint.setStrokeWidth(width);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2 < bitmap.getHeight() / 2 ? bitmap.getWidth() / 2 : (bitmap.getHeight() / 2) - (width / 2.0f), paint);
        return createBitmap;
    }
}
