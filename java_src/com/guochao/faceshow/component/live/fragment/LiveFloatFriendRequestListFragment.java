package com.guochao.faceshow.component.live.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.FriendRequestListActivity;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.databinding.FragmentLiveFloatFriendRequestListBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;", "Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;", "()V", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentLiveFloatFriendRequestListBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class LiveFloatFriendRequestListFragment extends BaseEmbedActivityFragment {
    public FragmentLiveFloatFriendRequestListBinding viewBinding;

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m658initView$lambda0(LiveFloatFriendRequestListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @NotNull
    public final FragmentLiveFloatFriendRequestListBinding getViewBinding() {
        FragmentLiveFloatFriendRequestListBinding fragmentLiveFloatFriendRequestListBinding = this.viewBinding;
        if (fragmentLiveFloatFriendRequestListBinding != null) {
            return fragmentLiveFloatFriendRequestListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FloatFragmentUtils.setDefaultFragmentViewHeight(root);
        getViewBinding().back.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveFloatFriendRequestListFragment.m658initView$lambda0(LiveFloatFriendRequestListFragment.this, view);
            }
        });
        View findViewById = getLocalActivityManager().startActivity("request", new Intent(getActivity(), FriendRequestListActivity.class).putExtra(TypedValues.Custom.S_FLOAT, true)).getDecorView().findViewById(16908290);
        ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(findViewById);
        }
        View findViewById2 = findViewById.findViewById(R.id.gc_title_bar);
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        getViewBinding().realContent.addView(findViewById, new FrameLayout.LayoutParams(-1, -1));
    }

    public final void setViewBinding(@NotNull FragmentLiveFloatFriendRequestListBinding fragmentLiveFloatFriendRequestListBinding) {
        Intrinsics.checkNotNullParameter(fragmentLiveFloatFriendRequestListBinding, "<set-?>");
        this.viewBinding = fragmentLiveFloatFriendRequestListBinding;
    }
}
