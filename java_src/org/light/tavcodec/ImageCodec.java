package org.light.tavcodec;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import android.os.Build;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes7.dex */
public class ImageCodec {
    private static final int ALPHA_8 = 1;
    private static final int ARGB_8888_PREMULTIPLIED = 2;
    private static final int ARGB_8888_UNPREMULTIPLIED = 3;

    private static Bitmap CreateBitmapFromBytes(ByteBuffer byteBuffer, int i9) {
        try {
            return BitmapFactory.decodeStream(new ByteBufferInputStream(byteBuffer), null, MakeOptions(i9));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static Bitmap CreateBitmapFromPath(String str, int i9) {
        try {
            return BitmapFactory.decodeFile(str, MakeOptions(i9));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static int GetOrientationFromBytes(ByteBuffer byteBuffer) {
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                return new ExifInterface(new ByteBufferInputStream(byteBuffer)).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            }
            return 1;
        } catch (IOException e10) {
            e10.printStackTrace();
            return 1;
        }
    }

    private static int GetOrientationFromPath(String str) {
        try {
            return new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
        } catch (IOException e10) {
            e10.printStackTrace();
            return 1;
        }
    }

    private static int[] GetSizeFromBytes(ByteBuffer byteBuffer) {
        int[] iArr = {0, 0};
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeStream(new ByteBufferInputStream(byteBuffer), null, options);
            iArr[0] = options.outWidth;
            iArr[1] = options.outHeight;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return iArr;
    }

    private static int[] GetSizeFromPath(String str) {
        int[] iArr = {0, 0};
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
            iArr[0] = options.outWidth;
            iArr[1] = options.outHeight;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return iArr;
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
}
