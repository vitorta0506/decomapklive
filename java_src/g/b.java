package g;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.g;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import m.d;
import m.h;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class b {

    /* renamed from: e  reason: collision with root package name */
    private static final Object f39846e = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f39847a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39848b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.airbnb.lottie.b f39849c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, g> f39850d;

    public b(Drawable.Callback callback, String str, com.airbnb.lottie.b bVar, Map<String, g> map) {
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.f39848b = str + IOUtils.DIR_SEPARATOR_UNIX;
        } else {
            this.f39848b = str;
        }
        if (!(callback instanceof View)) {
            d.c("LottieDrawable must be inside of a view for images to work.");
            this.f39850d = new HashMap();
            this.f39847a = null;
            return;
        }
        this.f39847a = ((View) callback).getContext();
        this.f39850d = map;
        d(bVar);
    }

    private Bitmap c(String str, @Nullable Bitmap bitmap) {
        synchronized (f39846e) {
            this.f39850d.get(str).f(bitmap);
        }
        return bitmap;
    }

    @Nullable
    public Bitmap a(String str) {
        g gVar = this.f39850d.get(str);
        if (gVar == null) {
            return null;
        }
        Bitmap a10 = gVar.a();
        if (a10 != null) {
            return a10;
        }
        com.airbnb.lottie.b bVar = this.f39849c;
        if (bVar != null) {
            Bitmap a11 = bVar.a(gVar);
            if (a11 != null) {
                c(str, a11);
            }
            return a11;
        }
        String b10 = gVar.b();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (b10.startsWith("data:") && b10.indexOf("base64,") > 0) {
            try {
                byte[] decode = Base64.decode(b10.substring(b10.indexOf(44) + 1), 0);
                return c(str, BitmapFactory.decodeByteArray(decode, 0, decode.length, options));
            } catch (IllegalArgumentException e10) {
                d.d("data URL did not have correct base64 format.", e10);
                return null;
            }
        }
        try {
            if (!TextUtils.isEmpty(this.f39848b)) {
                AssetManager assets = this.f39847a.getAssets();
                try {
                    return c(str, h.l(BitmapFactory.decodeStream(assets.open(this.f39848b + b10), null, options), gVar.e(), gVar.c()));
                } catch (IllegalArgumentException e11) {
                    d.d("Unable to decode image.", e11);
                    return null;
                }
            }
            throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
        } catch (IOException e12) {
            d.d("Unable to open asset.", e12);
            return null;
        }
    }

    public boolean b(Context context) {
        return (context == null && this.f39847a == null) || this.f39847a.equals(context);
    }

    public void d(@Nullable com.airbnb.lottie.b bVar) {
        this.f39849c = bVar;
    }
}
