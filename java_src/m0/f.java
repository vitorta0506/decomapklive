package m0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import java.util.List;
/* loaded from: classes.dex */
public class f implements e0.f<Uri, Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f54408a;

    public f(Context context) {
        this.f54408a = context.getApplicationContext();
    }

    @NonNull
    private Context d(Uri uri, String str) {
        if (str.equals(this.f54408a.getPackageName())) {
            return this.f54408a;
        }
        try {
            return this.f54408a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            if (str.contains(this.f54408a.getPackageName())) {
                return this.f54408a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e10);
        }
    }

    @DrawableRes
    private int e(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e10);
        }
    }

    @DrawableRes
    private int f(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    @DrawableRes
    private int g(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return f(context, uri);
        }
        if (pathSegments.size() == 1) {
            return e(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @Override // e0.f
    @Nullable
    /* renamed from: c */
    public u<Drawable> b(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        Context d10 = d(uri, uri.getAuthority());
        return e.c(b.b(this.f54408a, d10, g(d10, uri)));
    }

    @Override // e0.f
    /* renamed from: h */
    public boolean a(@NonNull Uri uri, @NonNull e0.e eVar) {
        return uri.getScheme().equals("android.resource");
    }
}
