package com.guochao.faceshow.component.live.fragment;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.beans.AuthorityNotifyBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.GiftNotificationActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.PushMessageActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.AuthorityViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.systemassistant.act.SystemAssistantAct;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.web.WebViewActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class LiveFloatOfficialFragment$initView$2 extends RecyclerView.Adapter<AuthorityViewHolder> {
    final /* synthetic */ LiveFloatOfficialFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiveFloatOfficialFragment$initView$2(LiveFloatOfficialFragment liveFloatOfficialFragment) {
        this.this$0 = liveFloatOfficialFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-0  reason: not valid java name */
    public static final void m666onBindViewHolder$lambda0(AuthorityViewHolder holder, AuthorityNotifyBean item, LiveFloatOfficialFragment this$0, View view) {
        int i9;
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        holder.f();
        try {
            String messageType = item.getMessageType();
            Intrinsics.checkNotNullExpressionValue(messageType, "item.messageType");
            i9 = Integer.parseInt(messageType);
        } catch (Exception unused) {
            i9 = 1;
        }
        SystemConversationManager.read(SystemConversationManager.SYSTEM_OFFICIAL, item.getUnreadCount());
        if (i9 == 1) {
            AssistantUserInfo.OfficialUserData officialUserData = new AssistantUserInfo.OfficialUserData();
            String c10 = fb.a.c();
            Intrinsics.checkNotNullExpressionValue(c10, "getSystemAccountID()");
            officialUserData.userId = Integer.parseInt(c10);
            SystemAssistantAct.A0(this$0.getActivity(), officialUserData, 1);
        } else if (i9 == 2) {
            PushMessageActivity.start(this$0.getActivity());
        } else if (i9 != 3) {
            if (i9 == 4) {
                holder.e();
                new WebViewActivity.e().e(1000).a(this$0.getActivity());
            }
        } else if (BaseConfig.isChinese()) {
            AssistantUserInfo.OfficialUserData officialUserData2 = new AssistantUserInfo.OfficialUserData();
            String c11 = fb.a.c();
            Intrinsics.checkNotNullExpressionValue(c11, "getSystemAccountID()");
            officialUserData2.userId = Integer.parseInt(c11);
            SystemAssistantAct.A0(this$0.getActivity(), officialUserData2, 2);
        } else {
            GiftNotificationActivity.start(this$0.getActivity());
        }
        k8.a.c().e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List list;
        list = this.this$0.list;
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull final AuthorityViewHolder holder, int i9) {
        List list;
        Intrinsics.checkNotNullParameter(holder, "holder");
        list = this.this$0.list;
        final AuthorityNotifyBean authorityNotifyBean = (AuthorityNotifyBean) list.get(i9);
        if (authorityNotifyBean == null) {
            return;
        }
        holder.d(i9, authorityNotifyBean);
        View view = holder.itemView;
        final LiveFloatOfficialFragment liveFloatOfficialFragment = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LiveFloatOfficialFragment$initView$2.m666onBindViewHolder$lambda0(AuthorityViewHolder.this, authorityNotifyBean, liveFloatOfficialFragment, view2);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public AuthorityViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new AuthorityViewHolder(parent);
    }
}
