package zf;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes5.dex */
public class a {
    public static int a(@NonNull BitmapFactory.Options options, int i9, int i10) {
        int i11 = options.outHeight;
        int i12 = options.outWidth;
        int i13 = 1;
        if (i11 > i10 || i12 > i9) {
            while (true) {
                if (i11 / i13 <= i10 && i12 / i13 <= i9) {
                    break;
                }
                i13 *= 2;
            }
        }
        return i13;
    }

    public static int b(@NonNull Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getSize(point);
        }
        int sqrt = (int) Math.sqrt(Math.pow(point.x, 2.0d) + Math.pow(point.y, 2.0d));
        Canvas canvas = new Canvas();
        int min = Math.min(canvas.getMaximumBitmapWidth(), canvas.getMaximumBitmapHeight());
        if (min > 0) {
            sqrt = Math.min(sqrt, min);
        }
        int b10 = c.b();
        if (b10 > 0) {
            sqrt = Math.min(sqrt, b10);
        }
        Log.d("BitmapLoadUtils", "maxBitmapSize: " + sqrt);
        return sqrt;
    }

    public static void c(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void d(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i9, int i10, wf.b bVar) {
        new yf.a(context, uri, uri2, i9, i10, bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static int e(int i9) {
        switch (i9) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    public static int f(int i9) {
        return (i9 == 2 || i9 == 7 || i9 == 4 || i9 == 5) ? -1 : 1;
    }

    public static int g(@NonNull Context context, @NonNull Uri uri) {
        int i9 = 0;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                return 0;
            }
            i9 = new f(openInputStream).c();
            c(openInputStream);
            return i9;
        } catch (IOException e10) {
            Log.e("BitmapLoadUtils", "getExifOrientation: " + uri.toString(), e10);
            return i9;
        }
    }

    public static Bitmap h(@NonNull Bitmap bitmap, @NonNull Matrix matrix) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            return !bitmap.sameAs(createBitmap) ? createBitmap : bitmap;
        } catch (OutOfMemoryError e10) {
            Log.e("BitmapLoadUtils", "transformBitmap: ", e10);
            return bitmap;
        }
    }
}
