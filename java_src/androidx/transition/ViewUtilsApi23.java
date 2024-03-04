package androidx.transition;

import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(23)
/* loaded from: classes.dex */
class ViewUtilsApi23 extends ViewUtilsApi22 {
    private static boolean sTryHiddenSetTransitionVisibility = true;

    @Override // androidx.transition.ViewUtilsBase
    public void setTransitionVisibility(@NonNull View view, int i9) {
        if (Build.VERSION.SDK_INT == 28) {
            super.setTransitionVisibility(view, i9);
        } else if (sTryHiddenSetTransitionVisibility) {
            try {
                view.setTransitionVisibility(i9);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSetTransitionVisibility = false;
            }
        }
    }
}
