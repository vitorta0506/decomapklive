package com.tencent.thumbplayer.a;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.tencent.thumbplayer.core.common.TPVideoFrame;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public class a {
    public static Bitmap a(TPVideoFrame tPVideoFrame) {
        int i9;
        int i10;
        byte[][] bArr = tPVideoFrame.data;
        if (bArr.length <= 0 || (i9 = tPVideoFrame.height) == 0 || (i10 = tPVideoFrame.width) == 0) {
            return null;
        }
        return a(bArr[0], i10, i9, tPVideoFrame.rotation);
    }

    private static Bitmap a(byte[] bArr, int i9, int i10, int i11) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        Bitmap createBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.RGB_565);
        createBitmap.copyPixelsFromBuffer(wrap);
        if (i11 != 0) {
            Matrix matrix = new Matrix();
            matrix.postRotate(i11);
            return Bitmap.createBitmap(createBitmap, 0, 0, createBitmap.getWidth(), createBitmap.getHeight(), matrix, true);
        }
        return createBitmap;
    }

    public static Bitmap[] b(TPVideoFrame tPVideoFrame) {
        byte[][] bArr = tPVideoFrame.data;
        if (bArr.length <= 0 || tPVideoFrame.height == 0 || tPVideoFrame.width == 0) {
            return null;
        }
        Bitmap[] bitmapArr = new Bitmap[bArr.length];
        int i9 = 0;
        while (true) {
            byte[][] bArr2 = tPVideoFrame.data;
            if (i9 >= bArr2.length) {
                return bitmapArr;
            }
            bitmapArr[i9] = a(bArr2[i9], tPVideoFrame.width, tPVideoFrame.height, tPVideoFrame.rotation);
            i9++;
        }
    }
}
