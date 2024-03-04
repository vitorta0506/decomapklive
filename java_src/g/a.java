package g;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import h.h;
import java.util.HashMap;
import java.util.Map;
import m.d;
/* loaded from: classes.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private final AssetManager f39844d;

    /* renamed from: a  reason: collision with root package name */
    private final h<String> f39841a = new h<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<h<String>, Typeface> f39842b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Typeface> f39843c = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private String f39845e = ".ttf";

    public a(Drawable.Callback callback, @Nullable com.airbnb.lottie.a aVar) {
        if (!(callback instanceof View)) {
            d.c("LottieDrawable must be inside of a view for images to work.");
            this.f39844d = null;
            return;
        }
        this.f39844d = ((View) callback).getContext().getAssets();
    }

    private Typeface a(String str) {
        Typeface typeface = this.f39843c.get(str);
        if (typeface != null) {
            return typeface;
        }
        Typeface createFromAsset = Typeface.createFromAsset(this.f39844d, "fonts/" + str + this.f39845e);
        this.f39843c.put(str, createFromAsset);
        return createFromAsset;
    }

    private Typeface d(Typeface typeface, String str) {
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        int i9 = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
        return typeface.getStyle() == i9 ? typeface : Typeface.create(typeface, i9);
    }

    public Typeface b(String str, String str2) {
        this.f39841a.b(str, str2);
        Typeface typeface = this.f39842b.get(this.f39841a);
        if (typeface != null) {
            return typeface;
        }
        Typeface d10 = d(a(str), str2);
        this.f39842b.put(this.f39841a, d10);
        return d10;
    }

    public void c(@Nullable com.airbnb.lottie.a aVar) {
    }
}
