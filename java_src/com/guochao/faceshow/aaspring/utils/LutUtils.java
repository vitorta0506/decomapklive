package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.util.Log;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3.dex */
public class LutUtils {
    static final int COLOR_DISTORTION = 4;
    static final int COLUMN_DEPTH = 8;
    static final int ROW_DEPTH = 8;
    static final int X_DEPTH = 64;
    static final int Y_DEPTH = 64;

    public static Bitmap applyLutToBitmap(Context context, Bitmap bitmap, int i9) {
        try {
            InputStream open = context.getAssets().open("new_lookup.png");
            Bitmap decodeStream = BitmapFactory.decodeStream(open);
            open.close();
            return applyLutToBitmap(bitmap, decodeStream, i9);
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static int getLutIndex(int i9, int i10, int i11, int i12) {
        return ((((i12 / 8) * 64) + i11) * i9) + ((i12 % 8) * 64) + i10;
    }

    private static Bitmap setFilerLevel(Bitmap bitmap, int i9) {
        float f10;
        float f11;
        if (i9 == 1) {
            f10 = 0.6f;
            f11 = 0.5f;
        } else if (i9 == 3) {
            f10 = 1.4f;
            f11 = 2.0f;
        } else {
            f10 = 1.8f;
            f11 = 3.0f;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setRotate(0, f11);
        colorMatrix.setRotate(1, f11);
        colorMatrix.setRotate(2, f11);
        ColorMatrix colorMatrix2 = new ColorMatrix();
        colorMatrix2.setSaturation(f10);
        ColorMatrix colorMatrix3 = new ColorMatrix();
        colorMatrix3.postConcat(colorMatrix);
        colorMatrix3.postConcat(colorMatrix2);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix3));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    public static Bitmap applyLutToBitmap(Bitmap bitmap, Bitmap bitmap2, int i9) {
        if (i9 == 0) {
            return bitmap;
        }
        if (i9 != 2) {
            bitmap2 = setFilerLevel(bitmap2, i9);
        }
        Bitmap bitmap3 = bitmap2;
        long currentTimeMillis = System.currentTimeMillis();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int width2 = bitmap3.getWidth();
        int[] iArr2 = new int[bitmap3.getHeight() * width2];
        bitmap3.getPixels(iArr2, 0, width2, 0, 0, width2, bitmap3.getHeight());
        for (int i10 = 0; i10 < height; i10++) {
            for (int i11 = 0; i11 < width; i11++) {
                int i12 = (i10 * width) + i11;
                int lutIndex = getLutIndex(width2, Color.red(iArr[i12]) / 4, Color.green(iArr[i12]) / 4, Color.blue(iArr[i12]) / 4);
                iArr[i12] = Color.blue(iArr2[lutIndex]) | (Color.red(iArr2[lutIndex]) << 16) | ViewCompat.MEASURED_STATE_MASK | (Color.green(iArr2[lutIndex]) << 8);
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        Log.e("LutUtils", "time=" + (System.currentTimeMillis() - currentTimeMillis));
        return createBitmap;
    }
}
