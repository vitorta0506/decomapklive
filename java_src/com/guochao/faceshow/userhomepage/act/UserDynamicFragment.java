package com.guochao.faceshow.userhomepage.act;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.PersonalDynamicListFragment;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J$\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J$\u0010\u000e\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0016¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;", "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;", "()V", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "onBlackStateChanged", "holder", "Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;", "dynamicBean", "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;", "blacked", "", "onFocusStateChanged", "focused", "showEmptyText", "showEmptyView", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserDynamicFragment extends PersonalDynamicListFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;", Contants.USER_ID, "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final UserDynamicFragment getInstance(@Nullable String str) {
            UserDynamicFragment userDynamicFragment = new UserDynamicFragment();
            Bundle bundle = new Bundle();
            bundle.putString(Contants.USER_ID, str);
            userDynamicFragment.setArguments(bundle);
            return userDynamicFragment;
        }
    }

    @JvmStatic
    @NotNull
    public static final UserDynamicFragment getInstance(@Nullable String str) {
        return Companion.getInstance(str);
    }

    private final void showEmptyText() {
        View view = this.mEmptyView;
        if (view == null || view == null) {
            return;
        }
        view.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        super.initView(view);
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView != null) {
            String str = getCurrentUser().userId;
            Bundle arguments = getArguments();
            recyclerView.setPadding(0, 0, 0, Intrinsics.areEqual(str, arguments != null ? arguments.getString(Contants.USER_ID) : null) ? 0 : DensityUtil.dp2px(89.0f));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.PersonalDynamicListFragment, com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, aa.e
    public void onBlackStateChanged(@Nullable BaseDynamicViewHolder baseDynamicViewHolder, @Nullable DynamicBean dynamicBean, boolean z10) {
        super.onBlackStateChanged(baseDynamicViewHolder, dynamicBean, z10);
        if (z10) {
            FragmentActivity activity = getActivity();
            UserHomePageAct userHomePageAct = activity instanceof UserHomePageAct ? (UserHomePageAct) activity : null;
            if (userHomePageAct != null) {
                userHomePageAct.onFocusStateChanged(baseDynamicViewHolder, dynamicBean, false);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, aa.e
    public void onFocusStateChanged(@Nullable BaseDynamicViewHolder baseDynamicViewHolder, @Nullable DynamicBean dynamicBean, boolean z10) {
        super.onFocusStateChanged(baseDynamicViewHolder, dynamicBean, z10);
        FragmentActivity activity = getActivity();
        UserHomePageAct userHomePageAct = activity instanceof UserHomePageAct ? (UserHomePageAct) activity : null;
        if (userHomePageAct != null) {
            userHomePageAct.onFocusStateChanged(baseDynamicViewHolder, dynamicBean, z10);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, aa.e
    public /* bridge */ /* synthetic */ void onLikeClick(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, int i9) {
        aa.d.a(this, baseDynamicViewHolder, dynamicBean, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        super.showEmptyView();
        showEmptyText();
    }
}
