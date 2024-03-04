package m0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f54406a = true;

    public static Drawable a(Context context, @DrawableRes int i9, @Nullable Resources.Theme theme) {
        return c(context, context, i9, theme);
    }

    public static Drawable b(Context context, Context context2, @DrawableRes int i9) {
        return c(context, context2, i9, null);
    }

    private static Drawable c(Context context, Context context2, @DrawableRes int i9, @Nullable Resources.Theme theme) {
        try {
            if (f54406a) {
                return e(context2, i9, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e10) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return ContextCompat.getDrawable(context2, i9);
            }
            throw e10;
        } catch (NoClassDefFoundError unused2) {
            f54406a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return d(context2, i9, theme);
    }

    private static Drawable d(Context context, @DrawableRes int i9, @Nullable Resources.Theme theme) {
        return ResourcesCompat.getDrawable(context.getResources(), i9, theme);
    }

    private static Drawable e(Context context, @DrawableRes int i9, @Nullable Resources.Theme theme) {
        if (theme != null) {
            context = new ContextThemeWrapper(context, theme);
        }
        return AppCompatResources.getDrawable(context, i9);
    }
}
