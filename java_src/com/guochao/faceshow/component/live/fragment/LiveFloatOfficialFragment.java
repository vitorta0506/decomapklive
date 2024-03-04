package com.guochao.faceshow.component.live.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.AuthorityNotifyBean;
import com.guochao.faceshow.aaspring.beans.EventMessageModel;
import com.guochao.faceshow.aaspring.modulars.chat.models.SystemNotifyMessage;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.databinding.FragmentLiveFloatOfficialBinding;
import com.guochao.faceshow.utils.Contants;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0018\u0010\u0012\u001a\u00020\r2\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002J\b\u0010\u0014\u001a\u00020\rH\u0002J\u0018\u0010\u0015\u001a\u00020\r2\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "list", "", "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadEventData", "data", "loadNetData", "setDatas", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class LiveFloatOfficialFragment extends GCCoreFragment {
    @NotNull
    private final List<AuthorityNotifyBean> list = new ArrayList();
    public FragmentLiveFloatOfficialBinding viewBinding;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m665initView$lambda0(LiveFloatOfficialFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadEventData(final List<AuthorityNotifyBean> list) {
        V2TIMManager.getConversationManager().getConversation("c2c_-10000", new V2TIMValueCallback<V2TIMConversation>() { // from class: com.guochao.faceshow.component.live.fragment.LiveFloatOfficialFragment$loadEventData$1
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, @NotNull String s10) {
                Intrinsics.checkNotNullParameter(s10, "s");
                this.setDatas(list);
                RecyclerView.Adapter adapter = this.getViewBinding().recyclerView.getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
                com.guochao.faceshow.aaspring.manager.b.h("AuthorityNotifyBean", list);
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(@NotNull V2TIMConversation v2TIMConversation) {
                EventMessageModel eventMessageModel;
                Intrinsics.checkNotNullParameter(v2TIMConversation, "v2TIMConversation");
                V2TIMMessage lastMessage = v2TIMConversation.getLastMessage();
                AuthorityNotifyBean authorityNotifyBean = new AuthorityNotifyBean();
                authorityNotifyBean.setMessageType("1");
                list.add(0, authorityNotifyBean);
                if (lastMessage != null) {
                    o7.a m10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.m(lastMessage);
                    if ((m10 instanceof SystemNotifyMessage) && (eventMessageModel = ((SystemNotifyMessage) m10).getEventMessageModel()) != null) {
                        authorityNotifyBean.setContent(eventMessageModel.getText());
                        authorityNotifyBean.setMsgTimestamp(Long.valueOf(lastMessage.getTimestamp() * 1000));
                    }
                    authorityNotifyBean.setUnreadCount(v2TIMConversation.getUnreadCount());
                }
                this.setDatas(list);
                RecyclerView.Adapter adapter = this.getViewBinding().recyclerView.getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
                com.guochao.faceshow.aaspring.manager.b.h("AuthorityNotifyBean", list);
            }
        });
    }

    private final void loadNetData() {
        List<AuthorityNotifyBean> authorityNotifyBean = com.guochao.faceshow.aaspring.manager.b.d("AuthorityNotifyBean", AuthorityNotifyBean.class);
        Intrinsics.checkNotNullExpressionValue(authorityNotifyBean, "authorityNotifyBean");
        setDatas(authorityNotifyBean);
        post("tokens/user/message/findSysMessageList").v(Contants.USER_ID, b8.e.g().c().getUserId()).M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<AuthorityNotifyBean>>() { // from class: com.guochao.faceshow.component.live.fragment.LiveFloatOfficialFragment$loadNetData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<AuthorityNotifyBean>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                LogUtils.i("zune", "" + exp);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<AuthorityNotifyBean> list, @NotNull FaceCastBaseResponse<List<AuthorityNotifyBean>> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (list != null) {
                    int size = list.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        if (list.get(i9) == null) {
                            list.set(i9, new AuthorityNotifyBean());
                        }
                    }
                    LiveFloatOfficialFragment.this.loadEventData(list);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDatas(List<AuthorityNotifyBean> list) {
        this.list.clear();
        this.list.addAll(list);
        RecyclerView.Adapter adapter = getViewBinding().recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @NotNull
    public final FragmentLiveFloatOfficialBinding getViewBinding() {
        FragmentLiveFloatOfficialBinding fragmentLiveFloatOfficialBinding = this.viewBinding;
        if (fragmentLiveFloatOfficialBinding != null) {
            return fragmentLiveFloatOfficialBinding;
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
        getViewBinding().back.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveFloatOfficialFragment.m665initView$lambda0(LiveFloatOfficialFragment.this, view);
            }
        });
        getViewBinding().recyclerView.setAdapter(new LiveFloatOfficialFragment$initView$2(this));
        loadNetData();
    }

    public final void setViewBinding(@NotNull FragmentLiveFloatOfficialBinding fragmentLiveFloatOfficialBinding) {
        Intrinsics.checkNotNullParameter(fragmentLiveFloatOfficialBinding, "<set-?>");
        this.viewBinding = fragmentLiveFloatOfficialBinding;
    }
}
