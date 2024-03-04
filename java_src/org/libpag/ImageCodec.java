package org.libpag;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes7.dex */
public class ImageCodec {
    private static final int ALPHA_8 = 1;
    private static final int ARGB_8888_PREMULTIPLIED = 2;
    private static final int ARGB_8888_UNPREMULTIPLIED = 3;

    private static ExifInterface GetExifInterfaceFromBytes(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                return new ExifInterface(byteArrayInputStream);
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static ExifInterface GetExifInterfaceFromPath(String str) {
        try {
            return new ExifInterface(str);
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static int[] GetSizeFromBytes(byte[] bArr) {
        int[] iArr = {0, 0};
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            return GetSizeFromOptions(GetExifInterfaceFromBytes(bArr), options);
        } catch (Exception e10) {
            e10.printStackTrace();
            return iArr;
        }
    }

    private static int[] GetSizeFromOptions(ExifInterface exifInterface, BitmapFactory.Options options) {
        int attributeInt;
        int i9 = options.outWidth;
        int i10 = options.outHeight;
        if (exifInterface != null && ((attributeInt = exifInterface.getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1)) == 5 || attributeInt == 6 || attributeInt == 7 || attributeInt == 8)) {
            i9 = options.outHeight;
            i10 = options.outWidth;
        }
        return new int[]{i9, i10};
    }

    private static int[] GetSizeFromPath(String str) {
        int[] iArr = {0, 0};
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
            return GetSizeFromOptions(GetExifInterfaceFromPath(str), options);
        } catch (Exception e10) {
            e10.printStackTrace();
            return iArr;
        }
    }

    private static BitmapFactory.Options MakeOptions(int i9) {
        if (i9 == 1) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.ALPHA_8;
            return options;
        } else if (i9 == 2) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return options2;
        } else if (i9 != 3) {
            return null;
        } else {
            BitmapFactory.Options options3 = new BitmapFactory.Options();
            options3.inPreferredConfig = Bitmap.Config.ARGB_8888;
            options3.inPremultiplied = false;
            return options3;
        }
    }

    private static void ReadPixels(Bitmap bitmap, ExifInterface exifInterface, ByteBuffer byteBuffer) {
        if (exifInterface != null) {
            int attributeInt = exifInterface.getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            Matrix matrix = new Matrix();
            switch (attributeInt) {
                case 0:
                case 1:
                    bitmap.copyPixelsToBuffer(byteBuffer);
                    return;
                case 2:
                    matrix.setScale(-1.0f, 1.0f);
                    break;
                case 3:
                    matrix.setRotate(180.0f);
                    break;
                case 4:
                    matrix.setRotate(180.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    break;
                case 5:
                    matrix.setRotate(90.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    break;
                case 6:
                    matrix.setRotate(90.0f);
                    break;
                case 7:
                    matrix.setRotate(-90.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    break;
                case 8:
                    matrix.setRotate(-90.0f);
                    break;
            }
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        }
        bitmap.copyPixelsToBuffer(byteBuffer);
    }

    private static boolean ReadPixelsFromBytes(byte[] bArr, int i9, ByteBuffer byteBuffer) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, MakeOptions(i9));
        if (decodeByteArray == null || decodeByteArray.getConfig() != Bitmap.Config.ARGB_8888) {
            return false;
        }
        ReadPixels(decodeByteArray, GetExifInterfaceFromBytes(bArr), byteBuffer);
        return true;
    }

    private static boolean ReadPixelsFromPath(String str, int i9, ByteBuffer byteBuffer) {
        Bitmap decodeFile = BitmapFactory.decodeFile(str, MakeOptions(i9));
        if (decodeFile == null || decodeFile.getConfig() != Bitmap.Config.ARGB_8888) {
            return false;
        }
        ReadPixels(decodeFile, GetExifInterfaceFromPath(str), byteBuffer);
        return true;
    }
}
