package androidx.databinding.adapters;

import android.widget.AbsListView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;
@BindingMethods({@BindingMethod(attribute = "android:listSelector", method = "setSelector", type = AbsListView.class), @BindingMethod(attribute = "android:scrollingCache", method = "setScrollingCacheEnabled", type = AbsListView.class), @BindingMethod(attribute = "android:smoothScrollbar", method = "setSmoothScrollbarEnabled", type = AbsListView.class), @BindingMethod(attribute = "android:onMovedToScrapHeap", method = "setRecyclerListener", type = AbsListView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class AbsListViewBindingAdapter {

    /* loaded from: classes.dex */
    public interface OnScroll {
        void onScroll(AbsListView absListView, int i9, int i10, int i11);
    }

    /* loaded from: classes.dex */
    public interface OnScrollStateChanged {
        void onScrollStateChanged(AbsListView absListView, int i9);
    }

    @BindingAdapter(requireAll = false, value = {"android:onScroll", "android:onScrollStateChanged"})
    public static void setOnScroll(AbsListView absListView, final OnScroll onScroll, final OnScrollStateChanged onScrollStateChanged) {
        absListView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: androidx.databinding.adapters.AbsListViewBindingAdapter.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView2, int i9, int i10, int i11) {
                OnScroll onScroll2 = onScroll;
                if (onScroll2 != null) {
                    onScroll2.onScroll(absListView2, i9, i10, i11);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView2, int i9) {
                OnScrollStateChanged onScrollStateChanged2 = OnScrollStateChanged.this;
                if (onScrollStateChanged2 != null) {
                    onScrollStateChanged2.onScrollStateChanged(absListView2, i9);
                }
            }
        });
    }
}
