package androidx.viewbinding;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class ViewBindings {
    private ViewBindings() {
    }

    @Nullable
    public static <T extends View> T findChildViewById(View view, @IdRes int i9) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                T t10 = (T) viewGroup.getChildAt(i10).findViewById(i9);
                if (t10 != null) {
                    return t10;
                }
            }
            return null;
        }
        return null;
    }
}
