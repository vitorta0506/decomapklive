package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
/* loaded from: classes3.dex */
public class t {
    public static int a(float f10, float f11) {
        int round = Math.round(f10 * 1000000.0f);
        int round2 = Math.round(f11 * 1000000.0f);
        if (round > round2) {
            return 1;
        }
        return round < round2 ? -1 : 0;
    }

    public static int b(Context context, float f10) {
        if (context == null || a(0.0f, f10) == 0) {
            return 0;
        }
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void c(Canvas canvas, Paint paint, Bitmap bitmap, Rect rect) {
        try {
            if (NinePatch.isNinePatchChunk(bitmap.getNinePatchChunk())) {
                d(canvas, bitmap, rect);
                return;
            }
        } catch (Exception unused) {
        }
        canvas.drawBitmap(bitmap, rect.left, rect.top, paint);
    }

    public static void d(Canvas canvas, Bitmap bitmap, Rect rect) {
        NinePatch.isNinePatchChunk(bitmap.getNinePatchChunk());
        new NinePatch(bitmap, bitmap.getNinePatchChunk(), null).draw(canvas, rect);
    }

    public static Bitmap e(int i9, int i10, Drawable drawable) {
        Bitmap bitmap;
        try {
            if ((drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null && bitmap.getHeight() > 0) {
                Matrix matrix = new Matrix();
                matrix.postScale((i9 * 1.0f) / bitmap.getWidth(), (i10 * 1.0f) / bitmap.getHeight());
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            }
            Bitmap createBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Bitmap f(Context context, int i9, int i10, int i11) {
        if (context == null || i9 <= 0 || i10 <= 0 || i11 == 0) {
            return null;
        }
        return e(i9, i10, context.getResources().getDrawable(i11, null));
    }

    public static Rect g(String str, float f10) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTextSize(f10);
        paint.getTextBounds(str, 0, str.length(), rect);
        paint.reset();
        return rect;
    }

    public static float h(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return 0.0f;
        }
    }

    public static boolean i(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }
}
