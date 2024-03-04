package com.meizu.cloud.pushsdk.c.h;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.NetworkOnMainThreadException;
import android.widget.ImageView;
import com.meizu.cloud.pushsdk.c.a.c;
import com.meizu.cloud.pushsdk.c.c.k;
import com.meizu.cloud.pushsdk.c.g.g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
/* loaded from: classes4.dex */
public class b {
    public static int a(int i9, int i10, int i11, int i12) {
        double min = Math.min(i9 / i11, i10 / i12);
        float f10 = 1.0f;
        while (true) {
            float f11 = 2.0f * f10;
            if (f11 > min) {
                return (int) f10;
            }
            f10 = f11;
        }
    }

    private static int a(int i9, int i10, int i11, int i12, ImageView.ScaleType scaleType) {
        if (i9 == 0 && i10 == 0) {
            return i11;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i9 == 0 ? i11 : i9;
        } else if (i9 == 0) {
            return (int) (i11 * (i10 / i12));
        } else if (i10 == 0) {
            return i9;
        } else {
            double d10 = i12 / i11;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d11 = i10;
                return ((double) i9) * d10 < d11 ? (int) (d11 / d10) : i9;
            }
            double d12 = i10;
            return ((double) i9) * d10 > d12 ? (int) (d12 / d10) : i9;
        }
    }

    public static c<Bitmap> a(k kVar, int i9, int i10, Bitmap.Config config, ImageView.ScaleType scaleType) {
        Bitmap bitmap;
        byte[] bArr = new byte[0];
        try {
            bArr = g.a(kVar.b().a()).i();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (i9 == 0 && i10 == 0) {
            options.inPreferredConfig = config;
            bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i11 = options.outWidth;
            int i12 = options.outHeight;
            int a10 = a(i9, i10, i11, i12, scaleType);
            int a11 = a(i10, i9, i12, i11, scaleType);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i11, i12, a10, a11);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (a(decodeByteArray, a10, a11)) {
                bitmap = Bitmap.createScaledBitmap(decodeByteArray, a10, a11, true);
                decodeByteArray.recycle();
            } else {
                bitmap = decodeByteArray;
            }
        }
        return bitmap == null ? c.a(b(new com.meizu.cloud.pushsdk.c.b.a(kVar))) : c.a(bitmap);
    }

    public static com.meizu.cloud.pushsdk.c.b.a a(com.meizu.cloud.pushsdk.c.b.a aVar) {
        aVar.a("connectionError");
        aVar.a(0);
        aVar.b(aVar.getMessage());
        return aVar;
    }

    public static com.meizu.cloud.pushsdk.c.b.a a(com.meizu.cloud.pushsdk.c.b.a aVar, com.meizu.cloud.pushsdk.c.a.b bVar, int i9) {
        com.meizu.cloud.pushsdk.c.b.a a10 = bVar.a(aVar);
        a10.a(i9);
        a10.a("responseFromServerError");
        return a10;
    }

    public static com.meizu.cloud.pushsdk.c.b.a a(Exception exc) {
        com.meizu.cloud.pushsdk.c.b.a aVar = new com.meizu.cloud.pushsdk.c.b.a(exc);
        aVar.a(exc instanceof NetworkOnMainThreadException ? "networkOnMainThreadError" : "connectionError");
        aVar.a(0);
        return aVar;
    }

    public static String a(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        return contentTypeFor == null ? "application/octet-stream" : contentTypeFor;
    }

    public static void a(k kVar, String str, String str2) throws IOException {
        FileOutputStream fileOutputStream;
        byte[] bArr = new byte[2048];
        InputStream inputStream = null;
        try {
            InputStream b10 = kVar.b().b();
            try {
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                fileOutputStream = new FileOutputStream(new File(file, str2));
                while (true) {
                    try {
                        int read = b10.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = b10;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
                fileOutputStream.flush();
                try {
                    b10.close();
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
                try {
                    fileOutputStream.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    private static boolean a(Bitmap bitmap, int i9, int i10) {
        if (bitmap == null) {
            return false;
        }
        return bitmap.getWidth() > i9 || bitmap.getHeight() > i10;
    }

    public static com.meizu.cloud.pushsdk.c.b.a b(com.meizu.cloud.pushsdk.c.b.a aVar) {
        aVar.a(0);
        aVar.a("parseError");
        aVar.b(aVar.getMessage());
        return aVar;
    }
}
