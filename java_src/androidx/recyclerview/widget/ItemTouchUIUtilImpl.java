package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
/* loaded from: classes.dex */
class ItemTouchUIUtilImpl implements ItemTouchUIUtil {
    static final ItemTouchUIUtil INSTANCE = new ItemTouchUIUtilImpl();

    ItemTouchUIUtilImpl() {
    }

    private static float findMaxElevation(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f10 = 0.0f;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = recyclerView.getChildAt(i9);
            if (childAt != view) {
                float elevation = ViewCompat.getElevation(childAt);
                if (elevation > f10) {
                    f10 = elevation;
                }
            }
        }
        return f10;
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void clearView(View view) {
        int i9 = R.id.item_touch_helper_previous_elevation;
        Object tag = view.getTag(i9);
        if (tag instanceof Float) {
            ViewCompat.setElevation(view, ((Float) tag).floatValue());
        }
        view.setTag(i9, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f10, float f11, int i9, boolean z10) {
        if (z10) {
            int i10 = R.id.item_touch_helper_previous_elevation;
            if (view.getTag(i10) == null) {
                Float valueOf = Float.valueOf(ViewCompat.getElevation(view));
                ViewCompat.setElevation(view, findMaxElevation(recyclerView, view) + 1.0f);
                view.setTag(i10, valueOf);
            }
        }
        view.setTranslationX(f10);
        view.setTranslationY(f11);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f10, float f11, int i9, boolean z10) {
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onSelected(View view) {
    }
}
