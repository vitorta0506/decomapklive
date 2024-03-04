package com.guochao.faceshow.aaspring.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes3.dex */
public class BitmapUtils {
    public static Bitmap composeBitmap(Bitmap bitmap, Bitmap bitmap2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(bitmap2, (width - bitmap2.getWidth()) >> 1, (height - bitmap2.getHeight()) >> 1, (Paint) null);
        canvas.save();
        canvas.restore();
        return createBitmap;
    }

    public static Bitmap createRepeater(int i9, Bitmap bitmap) {
        int height = ((i9 + bitmap.getHeight()) - 1) / bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight() * height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        for (int i10 = 0; i10 < height; i10++) {
            canvas.drawBitmap(bitmap, 0.0f, bitmap.getHeight() * i10, (Paint) null);
        }
        return createBitmap;
    }

    public static Bitmap getBitmapByColor(int i9, int i10) {
        Bitmap createBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
        int[] iArr = new int[i9 * i10];
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < i9; i12++) {
                iArr[(i11 * i9) + i12] = -1;
            }
        }
        createBitmap.setPixels(iArr, 0, i9, 0, 0, i9, i10);
        return createBitmap;
    }

    public static Bitmap imageScale(Bitmap bitmap, int i9, int i10) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i9 / width, i10 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    public static boolean isGif(Uri uri) {
        try {
            return isGif(BaseApplication.getInstance().getContentResolver().openInputStream(uri));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static byte[] makeNinePatchChunk(Bitmap bitmap) {
        return makeNinePatchChunk(bitmap.getWidth(), bitmap.getHeight());
    }

    public static Bitmap makeRoundCorner(Bitmap bitmap) {
        int i9;
        int i10;
        float f10;
        int i11;
        int i12;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f11 = height / 2;
        if (width > height) {
            i12 = (width - height) / 2;
            i10 = height;
            i9 = i12 + height;
            f10 = f11;
            i11 = 0;
        } else {
            if (height > width) {
                i11 = (height - width) / 2;
                f10 = width / 2;
                i9 = width;
                i10 = i11 + width;
            } else {
                i9 = width;
                i10 = height;
                f10 = f11;
                i11 = 0;
            }
            i12 = 0;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(i12, i11, i9, i10);
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f10, f10, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    @Nullable
    public static Bitmap mirror(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Matrix matrix = new Matrix();
        matrix.postScale(-1.0f, 1.0f);
        canvas.drawBitmap(Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true), new Rect(0, 0, width, height), new Rect(0, 0, width, height), (Paint) null);
        return createBitmap;
    }

    public static Bitmap toHorizontalMirror(int i9, Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(-1.0f, 1.0f);
        return createRepeater(i9, Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true));
    }

    public static byte[] makeNinePatchChunk(int i9, int i10) {
        int i11 = i9 / 2;
        int[] iArr = {i11, i11 + 1};
        int i12 = i10 / 2;
        int[] iArr2 = {i12, i12 + 1};
        ByteBuffer order = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder());
        order.put((byte) 1);
        order.put((byte) 2);
        order.put((byte) 2);
        order.put((byte) 9);
        order.putInt(0);
        order.putInt(0);
        order.putInt(0);
        order.putInt(0);
        order.putInt(0);
        order.putInt(0);
        order.putInt(0);
        order.putInt(iArr[0]);
        order.putInt(iArr[1]);
        order.putInt(iArr2[0]);
        order.putInt(iArr2[1]);
        for (int i13 = 0; i13 < 9; i13++) {
            order.putInt(1);
        }
        return order.array();
    }

    public static boolean isGif(String str) {
        try {
            return isGif(new FileInputStream(str));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private static boolean isGif(InputStream inputStream) {
        boolean z10 = false;
        try {
            try {
                inputStream.skip(inputStream.available() - 1);
                int[] iArr = {inputStream.read(), inputStream.read(), inputStream.read(), inputStream.read(), inputStream.read()};
                if (iArr[0] == 71 && iArr[1] == 73 && iArr[2] == 70 && iArr[3] == 56) {
                    if (iArr[4] == 59) {
                        z10 = true;
                    }
                }
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return z10;
            } catch (IOException e11) {
                e11.printStackTrace();
                return false;
            }
        } catch (Exception unused) {
            inputStream.close();
            return false;
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException e12) {
                e12.printStackTrace();
            }
            throw th2;
        }
    }
}
