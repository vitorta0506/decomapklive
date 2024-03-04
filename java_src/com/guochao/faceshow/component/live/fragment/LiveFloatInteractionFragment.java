package com.guochao.faceshow.component.live.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.AuthorityNotifyBean;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.databinding.FragmentLiveFloatInteractionBinding;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\b\u0010\u0012\u001a\u00020\rH\u0002J\b\u0010\u0013\u001a\u00020\rH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "list", "", "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentLiveFloatInteractionBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentLiveFloatInteractionBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentLiveFloatInteractionBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "onDestroy", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class LiveFloatInteractionFragment extends GCCoreFragment {
    @NotNull
    private final List<AuthorityNotifyBean> list;
    public FragmentLiveFloatInteractionBinding viewBinding;

    public LiveFloatInteractionFragment() {
        ArrayList arrayList = new ArrayList();
        AuthorityNotifyBean authorityNotifyBean = new AuthorityNotifyBean();
        authorityNotifyBean.setMessageType("1");
        arrayList.add(authorityNotifyBean);
        AuthorityNotifyBean authorityNotifyBean2 = new AuthorityNotifyBean();
        authorityNotifyBean2.setMessageType("2");
        arrayList.add(authorityNotifyBean2);
        AuthorityNotifyBean authorityNotifyBean3 = new AuthorityNotifyBean();
        authorityNotifyBean3.setMessageType("3");
        arrayList.add(authorityNotifyBean3);
        this.list = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m662initView$lambda4(LiveFloatInteractionFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6  reason: not valid java name */
    public static final void m663initView$lambda6(final LiveFloatInteractionFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this$0.getActivity(), new e.a() { // from class: com.guochao.faceshow.component.live.fragment.LiveFloatInteractionFragment$initView$2$1
            @Override // com.guochao.faceshow.views.e.a
            public void onClick(@Nullable Dialog dialog, boolean z10) {
                List<AuthorityNotifyBean> list;
                if (z10) {
                    if (dialog != null) {
                        dialog.dismiss();
                    }
                    list = LiveFloatInteractionFragment.this.list;
                    for (AuthorityNotifyBean authorityNotifyBean : list) {
                        authorityNotifyBean.setUnreadCount(0);
                    }
                    RecyclerView.Adapter adapter = LiveFloatInteractionFragment.this.getViewBinding().recyclerView.getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                    LiveFloatInteractionFragment.this.post("tokens/user/message/readAllInteractMessage").L();
                    SystemConversationManager.clearUnread(SystemConversationManager.SYSTEM_INTERACTION);
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* bridge */ /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.b(null);
        eVar.f(this$0.getString(R.string.ignore_unread_content_1));
        eVar.show();
    }

    private final void loadData() {
        get("tokens/user/message/findSocialMessage").M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<? extends AuthorityNotifyBean>>() { // from class: com.guochao.faceshow.component.live.fragment.LiveFloatInteractionFragment$loadData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<? extends AuthorityNotifyBean>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(List<? extends AuthorityNotifyBean> list, FaceCastBaseResponse<List<? extends AuthorityNotifyBean>> faceCastBaseResponse) {
                onResponse2(list, (FaceCastBaseResponse<List<AuthorityNotifyBean>>) faceCastBaseResponse);
            }

            /* renamed from: onResponse  reason: avoid collision after fix types in other method */
            public void onResponse2(@Nullable List<? extends AuthorityNotifyBean> list, @NotNull FaceCastBaseResponse<List<AuthorityNotifyBean>> baseResponse) {
                List list2;
                List list3;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (list != null) {
                    LiveFloatInteractionFragment liveFloatInteractionFragment = LiveFloatInteractionFragment.this;
                    list2 = liveFloatInteractionFragment.list;
                    list2.clear();
                    list3 = liveFloatInteractionFragment.list;
                    list3.addAll(list);
                }
                RecyclerView.Adapter adapter = LiveFloatInteractionFragment.this.getViewBinding().recyclerView.getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        });
    }

    @NotNull
    public final FragmentLiveFloatInteractionBinding getViewBinding() {
        FragmentLiveFloatInteractionBinding fragmentLiveFloatInteractionBinding = this.viewBinding;
        if (fragmentLiveFloatInteractionBinding != null) {
            return fragmentLiveFloatInteractionBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().back.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveFloatInteractionFragment.m662initView$lambda4(LiveFloatInteractionFragment.this, view);
            }
        });
        getViewBinding().clear.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveFloatInteractionFragment.m663initView$lambda6(LiveFloatInteractionFragment.this, view);
            }
        });
        FloatFragmentUtils.setDefaultFragmentViewHeight(root);
        getViewBinding().title.setText(R.string.system_interaction);
        getViewBinding().recyclerView.setAdapter(new LiveFloatInteractionFragment$initView$3(this));
        loadData();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        SystemConversationManager.loadMessageFromServer();
        super.onDestroy();
    }

    public final void setViewBinding(@NotNull FragmentLiveFloatInteractionBinding fragmentLiveFloatInteractionBinding) {
        Intrinsics.checkNotNullParameter(fragmentLiveFloatInteractionBinding, "<set-?>");
        this.viewBinding = fragmentLiveFloatInteractionBinding;
    }
}
