package ea;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import java.io.FileNotFoundException;
import java.util.Hashtable;
import java.util.Vector;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private Uri f38502a;

    /* renamed from: b  reason: collision with root package name */
    private long f38503b = 0;

    /* renamed from: c  reason: collision with root package name */
    private long f38504c = 0;

    public d(Uri uri) {
        this.f38502a = uri;
    }

    private static int a(BitmapFactory.Options options, int i9, int i10) {
        int i11 = options.outHeight;
        int i12 = options.outWidth;
        int i13 = 1;
        while (true) {
            i12 >>= 1;
            if (i12 < i9 || (i11 = i11 >> 1) < i10) {
                break;
            }
            i13 <<= 1;
        }
        return i13;
    }

    private static Bitmap b(String str, int i9, int i10) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = a(options, i9, i10);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public Result c() {
        Bitmap bitmap;
        this.f38503b = System.currentTimeMillis();
        LogUtils.e("DecodeHandler", "开始解码：time=" + this.f38503b);
        Result result = null;
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(BaseApplication.getInstance().getContentResolver().openInputStream(this.f38502a), null, options);
                options.inSampleSize = a(options, 400, 400);
                options.inJustDecodeBounds = false;
                bitmap = BitmapFactory.decodeStream(BaseApplication.getInstance().getContentResolver().openInputStream(this.f38502a), null, options);
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
                bitmap = null;
            }
        } else {
            bitmap = b(f.b(BaseApplication.getInstance(), this.f38502a), 400, 400);
        }
        if (bitmap == null) {
            return null;
        }
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        Hashtable hashtable = new Hashtable(2);
        Vector vector = new Vector();
        vector.addAll(b.f38492d);
        vector.addAll(b.f38493e);
        vector.addAll(b.f38494f);
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, vector);
        multiFormatReader.setHints(hashtable);
        try {
            result = multiFormatReader.decodeWithState(new BinaryBitmap(new HybridBinarizer(new a(bitmap))));
            Log.i("解析结果", result.getText());
            this.f38504c = System.currentTimeMillis();
            LogUtils.e("DecodeHandler", "解码成功：time=" + this.f38504c + "耗时：" + (this.f38504c - this.f38503b));
            return result;
        } catch (Exception e11) {
            e11.printStackTrace();
            Log.i("解析的图片结果", "失败");
            this.f38504c = System.currentTimeMillis();
            LogUtils.e("DecodeHandler", "解码失败：time=" + this.f38504c + "耗时：" + (this.f38504c - this.f38503b));
            return result;
        }
    }
}
