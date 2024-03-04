package com.guochao.faceshow.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class TCEditerUtil {
    public static int calculateInSampleSize(BitmapFactory.Options options, int i9, int i10) {
        int i11 = options.outHeight;
        int i12 = options.outWidth;
        if (i11 > i10 || i12 > i9) {
            int round = Math.round(i11 / i10);
            int round2 = Math.round(i12 / i9);
            return round < round2 ? round : round2;
        }
        return 1;
    }

    public static Bitmap decodeSampledBitmapFromFile(String str, int i9, int i10) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i9, i10);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static String generateVideoPath() {
        File file = new File(BaseApplication.getInstance().getExternalCacheDir() + File.separator + TCConstants.DEFAULT_MEDIA_PACK_FOLDER);
        if (!file.exists()) {
            file.mkdirs();
        }
        String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");
        String format = String.format("TXVideo_%s.mp4", simpleDateFormat.format(new Date(Long.valueOf(valueOf + "000").longValue())));
        return file + FileUtils.RES_PREFIX_STORAGE + format;
    }

    public static int[] getSize(String str) {
        if (TextUtils.isEmpty(str)) {
            return new int[2];
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return new int[]{options.outWidth, options.outHeight};
    }

    public static Bitmap zoomImg(Bitmap bitmap, int i9, int i10) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i9 / width, i10 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }
}
