package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\u0006H\u0014J\u0006\u0010\n\u001a\u00020\u0006¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;", "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;", "()V", "getLayoutId", "", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "setCurData", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatLimitVipFragment extends BaseChatLimitFragment {
    @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseChatLimitFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_chat_limit_vip;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseChatLimitFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        super.initView(view);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseChatLimitFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        setCurData();
    }

    public final void setCurData() {
        List<ResourceListItemBean> gifList;
        RecyclerView.Adapter adapter;
        if (getParentFragment() instanceof ChatLimitDialog) {
            Fragment parentFragment = getParentFragment();
            Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatLimitDialog");
            List<ResourceCategoryItem> mData = ((ChatLimitDialog) parentFragment).getMData();
            if (mData == null || mData.size() <= 1) {
                return;
            }
            getMDataList().clear();
            ResourceCategoryItem resourceCategoryItem = mData.get(1);
            if (resourceCategoryItem == null || (gifList = resourceCategoryItem.getGifList()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue(gifList, "gifList");
            getMDataList().addAll(gifList);
            if (!getMDataList().isEmpty()) {
                setMSelectItem(getMDataList().get(0));
            }
            RecyclerView recyclerView = getRecyclerView();
            if (recyclerView == null || (adapter = recyclerView.getAdapter()) == null) {
                return;
            }
            adapter.notifyItemRangeChanged(0, getMDataList().size());
        }
    }
}
