package nc;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.lang.reflect.Field;
/* loaded from: classes4.dex */
public class b {
    private static int a(RecyclerView.LayoutParams layoutParams) {
        try {
            Field declaredField = RecyclerView.LayoutParams.class.getDeclaredField("mDecorInsets");
            declaredField.setAccessible(true);
            return ((Rect) declaredField.get(layoutParams)).top;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean b(AbsListView absListView) {
        return absListView != null && absListView.getAdapter() != null && absListView.getChildCount() > 0 && absListView.getLastVisiblePosition() == ((ListAdapter) absListView.getAdapter()).getCount() - 1 && absListView.getChildAt(absListView.getChildCount() - 1).getBottom() <= absListView.getMeasuredHeight();
    }

    public static boolean c(AbsListView absListView) {
        if (absListView != null) {
            int top = absListView.getChildCount() > 0 ? absListView.getChildAt(0).getTop() - absListView.getPaddingTop() : 0;
            if (absListView.getFirstVisiblePosition() == 0 && top == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && layoutManager.getItemCount() != 0) {
            if (layoutManager instanceof LinearLayoutManager) {
                View childAt = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                if (childAt != null && childAt.getMeasuredHeight() >= recyclerView.getMeasuredHeight()) {
                    return !ViewCompat.canScrollVertically(recyclerView, 1);
                }
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                if (linearLayoutManager.findLastCompletelyVisibleItemPosition() == linearLayoutManager.getItemCount() - 1) {
                    return true;
                }
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                int[] findLastCompletelyVisibleItemPositions = staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(null);
                int itemCount = staggeredGridLayoutManager.getItemCount() - 1;
                for (int i9 : findLastCompletelyVisibleItemPositions) {
                    if (i9 == itemCount) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean e(RecyclerView recyclerView) {
        int i9;
        if (recyclerView != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null || layoutManager.getItemCount() == 0) {
                return true;
            }
            if (recyclerView.getChildCount() > 0) {
                View childAt = recyclerView.getChildAt(0);
                if (childAt != null && childAt.getMeasuredHeight() >= recyclerView.getMeasuredHeight()) {
                    return !ViewCompat.canScrollVertically(recyclerView, -1);
                }
                View childAt2 = recyclerView.getChildAt(0);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt2.getLayoutParams();
                i9 = ((childAt2.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - a(layoutParams)) - recyclerView.getPaddingTop();
            } else {
                i9 = 0;
            }
            if (layoutManager instanceof LinearLayoutManager) {
                if (((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition() < 1 && i9 == 0) {
                    return true;
                }
            } else if ((layoutManager instanceof StaggeredGridLayoutManager) && ((StaggeredGridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPositions(null)[0] < 1 && i9 == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean f(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        return childAt != null && childAt.getMeasuredHeight() <= viewGroup.getScrollY() + viewGroup.getHeight();
    }

    public static boolean g(View view, int i9) {
        if (view instanceof AbsListView) {
            return b((AbsListView) view);
        }
        if (view instanceof RecyclerView) {
            return d((RecyclerView) view);
        }
        if (view instanceof WebView) {
            return i((WebView) view, i9);
        }
        if (view instanceof ViewGroup) {
            return f((ViewGroup) view);
        }
        return false;
    }

    public static boolean h(View view, int i9) {
        return view instanceof AbsListView ? c((AbsListView) view) : view instanceof RecyclerView ? e((RecyclerView) view) : view != null && Math.abs(view.getScrollY()) <= i9 * 2;
    }

    public static boolean i(WebView webView, int i9) {
        return webView != null && (((float) webView.getContentHeight()) * webView.getScale()) - ((float) (webView.getHeight() + webView.getScrollY())) <= ((float) (i9 * 2));
    }

    public static void j(View view, int i9) {
        if (view instanceof RecyclerView) {
            ((RecyclerView) view).scrollBy(0, i9);
        } else if (view instanceof ScrollView) {
            ((ScrollView) view).smoothScrollBy(0, i9);
        } else if (view instanceof AbsListView) {
            ((AbsListView) view).smoothScrollBy(i9, 0);
        } else {
            try {
                view.getClass().getDeclaredMethod("smoothScrollBy", Integer.class, Integer.class).invoke(view, 0, Integer.valueOf(i9));
            } catch (Exception unused) {
                view.scrollBy(0, i9);
            }
        }
    }
}
