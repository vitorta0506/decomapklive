package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H&J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0017H$J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0015H\u0002R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;", "()V", "mDataList", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "Lkotlin/collections/ArrayList;", "getMDataList", "()Ljava/util/ArrayList;", "mSelectItem", "getMSelectItem", "()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "setMSelectItem", "(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "getLayoutId", "", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "selectItem", "position", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseChatLimitFragment extends BaseFragment {
    @NotNull
    private final ArrayList<ResourceListItemBean> mDataList = new ArrayList<>();
    @Nullable
    private ResourceListItemBean mSelectItem;
    @Nullable
    private RecyclerView recyclerView;

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectItem(int i9) {
        RecyclerView.Adapter adapter;
        this.mSelectItem = this.mDataList.get(i9);
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || (adapter = recyclerView.getAdapter()) == null) {
            return;
        }
        adapter.notifyItemRangeChanged(0, this.mDataList.size());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public abstract int getLayoutId();

    @NotNull
    public final ArrayList<ResourceListItemBean> getMDataList() {
        return this.mDataList;
    }

    @Nullable
    public final ResourceListItemBean getMSelectItem() {
        return this.mSelectItem;
    }

    @Nullable
    public final RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        RecyclerView recyclerView = view != null ? (RecyclerView) view.findViewById(R.id.recycler_view) : null;
        this.recyclerView = recyclerView;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
            recyclerView.setAdapter(new BaseChatLimitFragment$initView$1$1(recyclerView, this));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected abstract void loadData();

    public final void setMSelectItem(@Nullable ResourceListItemBean resourceListItemBean) {
        this.mSelectItem = resourceListItemBean;
    }

    public final void setRecyclerView(@Nullable RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
    }
}
