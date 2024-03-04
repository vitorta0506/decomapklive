package androidx.databinding.adapters;

import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class ListenerUtil {
    private static final SparseArray<WeakHashMap<View, WeakReference<?>>> sListeners = new SparseArray<>();

    public static <T> T getListener(View view, int i9) {
        return (T) view.getTag(i9);
    }

    public static <T> T trackListener(View view, T t10, int i9) {
        T t11 = (T) view.getTag(i9);
        view.setTag(i9, t10);
        return t11;
    }
}
