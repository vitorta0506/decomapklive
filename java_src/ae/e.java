package ae;

import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ScrollingView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes4.dex */
public abstract class e {
    public static void a(View view, int i9) {
        if (view instanceof ScrollView) {
            ((ScrollView) view).fling(i9);
        } else if (view instanceof AbsListView) {
            ((AbsListView) view).fling(i9);
        } else if (view instanceof WebView) {
            ((WebView) view).flingScroll(0, i9);
        } else if (view instanceof NestedScrollView) {
            ((NestedScrollView) view).fling(i9);
        } else if (view instanceof RecyclerView) {
            ((RecyclerView) view).fling(0, i9);
        }
    }

    public static boolean b(View view) {
        return c(view) || (view instanceof ViewPager) || (view instanceof NestedScrollingParent);
    }

    public static boolean c(View view) {
        return (view instanceof AbsListView) || (view instanceof ScrollView) || (view instanceof ScrollingView) || (view instanceof WebView) || (view instanceof NestedScrollingChild);
    }

    public static int d(View view) {
        int makeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i9 = layoutParams.height;
        if (i9 > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9, BasicMeasure.EXACTLY);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, makeMeasureSpec);
        return view.getMeasuredHeight();
    }

    public static void e(@NonNull AbsListView absListView, int i9) {
        absListView.scrollListBy(i9);
    }
}
