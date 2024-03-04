package ma;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.Display;
import android.view.WindowManager;
import androidx.exifinterface.media.ExifInterface;
import com.guochao.faceshow.BaseApplication;
import java.io.InputStream;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config f54934a = Bitmap.Config.ARGB_8888;

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f54935b = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;

    public static int a(int i9, int i10) {
        if (i10 > 0 && i9 > i10) {
            int i11 = 2;
            while (i9 / (i11 * i11) > i10) {
                try {
                    i11 *= 2;
                } catch (Exception unused) {
                    return 1;
                }
            }
            return i11;
        }
        return 1;
    }

    public static final Bitmap b(Uri uri, int i9, int i10) {
        try {
            InputStream openInputStream = BaseApplication.getInstance().getContentResolver().openInputStream(uri);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(openInputStream, null, options);
            options.inSampleSize = a(options.outWidth * options.outHeight, i9 * i10 * 2);
            options.inJustDecodeBounds = false;
            return f(BitmapFactory.decodeStream(BaseApplication.getInstance().getContentResolver().openInputStream(uri), null, options), uri, true);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Bitmap c(Uri uri, Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        return b(uri, defaultDisplay.getWidth(), defaultDisplay.getHeight());
    }

    public static int d(Uri uri) {
        int i9 = 0;
        try {
            InputStream openInputStream = BaseApplication.getInstance().getContentResolver().openInputStream(uri);
            int attributeInt = new ExifInterface(openInputStream).getAttributeInt(ExifInterface.TAG_ORIENTATION, 0);
            if (attributeInt == 3) {
                i9 = 180;
            } else if (attributeInt == 6) {
                i9 = 90;
            } else if (attributeInt == 8) {
                i9 = 270;
            }
            openInputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return i9;
    }

    public static Bitmap e(Bitmap bitmap, int i9, boolean z10) {
        Matrix matrix = new Matrix();
        matrix.setRotate(i9, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (z10) {
                bitmap.recycle();
            }
            return createBitmap;
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Bitmap f(Bitmap bitmap, Uri uri, boolean z10) {
        int d10 = d(uri);
        return d10 != 0 ? e(bitmap, d10, z10) : bitmap;
    }
}
