package butterknife.internal;

import android.util.TypedValue;
import android.view.View;
import androidx.annotation.IdRes;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final TypedValue f1386a = new TypedValue();

    public static <T> T a(View view, @IdRes int i9, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e10) {
            String e11 = e(view, i9);
            throw new IllegalStateException("View '" + e11 + "' with ID " + i9 + " for " + str + " was of the wrong type. See cause for more info.", e10);
        }
    }

    public static <T> T b(View view, @IdRes int i9, String str, Class<T> cls) {
        return (T) a(view.findViewById(i9), i9, str, cls);
    }

    public static View c(View view, @IdRes int i9, String str) {
        View findViewById = view.findViewById(i9);
        if (findViewById != null) {
            return findViewById;
        }
        String e10 = e(view, i9);
        throw new IllegalStateException("Required view '" + e10 + "' with ID " + i9 + " for " + str + " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation.");
    }

    public static <T> T d(View view, @IdRes int i9, String str, Class<T> cls) {
        return (T) a(c(view, i9, str), i9, str, cls);
    }

    private static String e(View view, @IdRes int i9) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i9);
    }
}
