package d7;

import android.view.View;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public interface c<T, VH extends BaseViewHolder> extends a<T, VH> {
    void addFooterView(View view, int i9);

    void addHeaderView(View view, int i9);

    boolean canLoadMore();

    boolean canRefresh();

    int getCurrentPage();

    int getDefaultPage();

    View getEmptyView();

    SmartRefreshLayout getRefreshableLayout();

    void loadData(int i9);

    void notifyDataLoaded(boolean z10);

    void removeFooterView(View view);

    void removeHeaderView(View view);

    void setCurrentPage(int i9);

    void setDefaultPage(int i9);

    void setShowRefreshOnInit(boolean z10);
}
