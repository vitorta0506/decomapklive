package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class NestedScrollingParentHelper {
    private int mNestedScrollAxesNonTouch;
    private int mNestedScrollAxesTouch;

    public NestedScrollingParentHelper(@NonNull ViewGroup viewGroup) {
    }

    public int getNestedScrollAxes() {
        return this.mNestedScrollAxesTouch | this.mNestedScrollAxesNonTouch;
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i9) {
        onNestedScrollAccepted(view, view2, i9, 0);
    }

    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i9, int i10) {
        if (i10 == 1) {
            this.mNestedScrollAxesNonTouch = i9;
        } else {
            this.mNestedScrollAxesTouch = i9;
        }
    }

    public void onStopNestedScroll(@NonNull View view, int i9) {
        if (i9 == 1) {
            this.mNestedScrollAxesNonTouch = 0;
        } else {
            this.mNestedScrollAxesTouch = 0;
        }
    }
}
