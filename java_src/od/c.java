package od;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.request.h;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.FileUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import org.light.utils.FileUtils;
import s0.i;
import t0.f;
/* loaded from: classes4.dex */
public class c {

    /* loaded from: classes4.dex */
    class a extends i<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55615a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55616b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f55617c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ b f55618d;

        a(String str, String str2, String str3, b bVar) {
            this.f55615a = str;
            this.f55616b = str2;
            this.f55617c = str3;
            this.f55618d = bVar;
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable f fVar) {
            onResourceReady((Drawable) obj, (f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable f<? super Drawable> fVar) {
            try {
                if (TextUtils.isEmpty(this.f55615a)) {
                    String str = this.f55616b;
                    c.k(c.f(str, str), this.f55617c, drawable, this.f55618d);
                } else {
                    c.k(c.f(this.f55616b, this.f55615a), this.f55617c, drawable, this.f55618d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private static void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        File file = new File(str, str2);
        if (file.exists()) {
            file.delete();
        }
    }

    public static void d(String str, String str2, String str3, b<Drawable> bVar) {
        com.bumptech.glide.c.u(BaseApplication.getInstance()).r(str).a(new h().h(j.f4347a)).M0(new a(str2, str, str3, bVar));
    }

    private static String e(String str) {
        return f(null, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(String str, String str2) {
        if (!str2.endsWith(FileUtils.PIC_POSTFIX_JPEG) && !str2.endsWith(FileUtils.PIC_POSTFIX_PNG)) {
            if (!TextUtils.isEmpty(str)) {
                if (str.endsWith("jpg")) {
                    str2 = str2 + FileUtils.PIC_POSTFIX_JPEG;
                } else if (str.endsWith("png")) {
                    str2 = str2 + FileUtils.PIC_POSTFIX_PNG;
                } else {
                    str2 = "";
                }
            }
            return str2.replace(FileUtils.RES_PREFIX_STORAGE, "");
        }
        return str2.replace(FileUtils.RES_PREFIX_STORAGE, "");
    }

    public static Drawable g(String str, String str2) {
        try {
            return new BitmapDrawable(BaseApplication.getInstance().getResources(), BitmapFactory.decodeStream(new FileInputStream(str + File.separator + e(str2))));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Drawable h(String str, String str2, int i9) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str + File.separator + e(str2));
            int dp2px = DensityUtil.dp2px((float) i9);
            Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream);
            if (decodeStream != null && dp2px != decodeStream.getWidth() && dp2px != decodeStream.getHeight()) {
                return new BitmapDrawable(BaseApplication.getInstance().getResources(), Bitmap.createScaledBitmap(decodeStream, dp2px, dp2px, false));
            }
            return new BitmapDrawable(BaseApplication.getInstance().getResources(), decodeStream);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static boolean i() {
        return Build.VERSION.SDK_INT <= 23 || BaseApplication.getInstance().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static boolean j(String str, String str2) {
        return FileUtil.isFileExist(str + File.separator + e(str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(String str, String str2, Drawable drawable, b<Drawable> bVar) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            c(str2, str);
            if (TextUtils.isEmpty(str2)) {
                if (i()) {
                    FileUtil.saveBitmap(FilePathProvider.getPathPhoto(str), drawable, bVar);
                    return;
                }
                return;
            }
            FileUtil.saveBitmap(str2 + File.separator + str, drawable, bVar);
        }
    }
}
