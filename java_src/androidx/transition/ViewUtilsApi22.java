package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(22)
/* loaded from: classes.dex */
class ViewUtilsApi22 extends ViewUtilsApi21 {
    private static boolean sTryHiddenSetLeftTopRightBottom = true;

    @Override // androidx.transition.ViewUtilsBase
    public void setLeftTopRightBottom(@NonNull View view, int i9, int i10, int i11, int i12) {
        if (sTryHiddenSetLeftTopRightBottom) {
            try {
                view.setLeftTopRightBottom(i9, i10, i11, i12);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSetLeftTopRightBottom = false;
            }
        }
    }
}
