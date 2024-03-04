package com.guochao.faceshow.aaspring.modulars.user.tag;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.UserHobbyBean;
import com.guochao.faceshow.aaspring.views.FlowLayout.FlowLayoutManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0017H\u0014J\u0010\u0010\u001b\u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;", "()V", "mDataList", "", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;", "getMDataList", "()Ljava/util/List;", "mHobbyBean", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "getMHobbyBean", "()Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "setMHobbyBean", "(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;)V", "mRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getMRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setMRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "getLayoutId", "", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "refreshItemUnSelect", "hobbyBean", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditHobbyFragment extends BaseFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<UserHobbyBean.UserHobby> mDataList = new ArrayList();
    @Nullable
    private UserHobbyBean.HobbyBean mHobbyBean;
    @Nullable
    private RecyclerView mRecyclerView;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;", "bean", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final UserEditHobbyFragment getInstance(@Nullable UserHobbyBean.HobbyBean hobbyBean) {
            UserEditHobbyFragment userEditHobbyFragment = new UserEditHobbyFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("HobbyBean", hobbyBean);
            userEditHobbyFragment.setArguments(bundle);
            return userEditHobbyFragment;
        }
    }

    @JvmStatic
    @NotNull
    public static final UserEditHobbyFragment getInstance(@Nullable UserHobbyBean.HobbyBean hobbyBean) {
        return Companion.getInstance(hobbyBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_user_edit_hobby;
    }

    @NotNull
    public final List<UserHobbyBean.UserHobby> getMDataList() {
        return this.mDataList;
    }

    @Nullable
    public final UserHobbyBean.HobbyBean getMHobbyBean() {
        return this.mHobbyBean;
    }

    @Nullable
    public final RecyclerView getMRecyclerView() {
        return this.mRecyclerView;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        RecyclerView recyclerView;
        Bundle arguments = getArguments();
        RecyclerView recyclerView2 = null;
        this.mHobbyBean = arguments != null ? (UserHobbyBean.HobbyBean) arguments.getParcelable("HobbyBean") : null;
        if (view != null && (recyclerView = (RecyclerView) view.findViewById(R.id.recycler_view)) != null) {
            recyclerView.setLayoutManager(new FlowLayoutManager());
            recyclerView.setItemAnimator(null);
            recyclerView.setAdapter(new UserEditHobbyFragment$initView$1$1(this));
            recyclerView2 = recyclerView;
        }
        this.mRecyclerView = recyclerView2;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        RecyclerView.Adapter adapter;
        List<UserHobbyBean.UserHobby> hobbyList;
        UserHobbyBean.HobbyBean hobbyBean = this.mHobbyBean;
        if (hobbyBean != null && (hobbyList = hobbyBean.getHobbyList()) != null) {
            this.mDataList.clear();
            this.mDataList.addAll(hobbyList);
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (adapter = recyclerView.getAdapter()) == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    public final void refreshItemUnSelect(@Nullable UserHobbyBean.UserHobby userHobby) {
        RecyclerView.Adapter adapter;
        for (UserHobbyBean.UserHobby userHobby2 : this.mDataList) {
            if (Intrinsics.areEqual(userHobby != null ? userHobby.getHobbyId() : null, userHobby2 != null ? userHobby2.getHobbyId() : null)) {
                if (userHobby2 != null) {
                    userHobby2.setMIsSelect(Boolean.FALSE);
                }
                RecyclerView recyclerView = this.mRecyclerView;
                if (recyclerView != null && (adapter = recyclerView.getAdapter()) != null) {
                    adapter.notifyItemChanged(this.mDataList.indexOf(userHobby2));
                }
            }
        }
    }

    public final void setMHobbyBean(@Nullable UserHobbyBean.HobbyBean hobbyBean) {
        this.mHobbyBean = hobbyBean;
    }

    public final void setMRecyclerView(@Nullable RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }
}
