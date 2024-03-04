package com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AuthorityNotifyBean;
import com.guochao.faceshow.aaspring.beans.EventMessageModel;
import com.guochao.faceshow.aaspring.modulars.chat.models.SystemNotifyMessage;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.AuthorityViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.systemassistant.act.SystemAssistantAct;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.web.WebViewActivity;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class AuthorityNotifyListActivity extends BaseIMListActivity<AuthorityNotifyBean, AuthorityViewHolder> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends c<List<AuthorityNotifyBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<AuthorityNotifyBean>> aVar) {
            LogUtils.i("zune", "" + aVar);
            if (AuthorityNotifyListActivity.this.getList().isEmpty()) {
                AuthorityNotifyListActivity.this.o0();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<AuthorityNotifyBean> list, @NonNull FaceCastBaseResponse<List<AuthorityNotifyBean>> faceCastBaseResponse) {
            if (list != null) {
                for (int i9 = 0; i9 < list.size(); i9++) {
                    if (list.get(i9) == null) {
                        list.set(i9, new AuthorityNotifyBean());
                    }
                }
                AuthorityNotifyListActivity.this.l0(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements V2TIMValueCallback<V2TIMConversation> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f17072a;

        b(List list) {
            this.f17072a = list;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMConversation v2TIMConversation) {
            EventMessageModel eventMessageModel;
            V2TIMMessage lastMessage = v2TIMConversation.getLastMessage();
            AuthorityNotifyBean authorityNotifyBean = new AuthorityNotifyBean();
            authorityNotifyBean.setMessageType("1");
            this.f17072a.add(0, authorityNotifyBean);
            if (lastMessage != null) {
                o7.a m10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.m(lastMessage);
                if ((m10 instanceof SystemNotifyMessage) && (eventMessageModel = ((SystemNotifyMessage) m10).getEventMessageModel()) != null) {
                    authorityNotifyBean.setContent(eventMessageModel.getText());
                    authorityNotifyBean.setMsgTimestamp(Long.valueOf(lastMessage.getTimestamp() * 1000));
                }
                authorityNotifyBean.setUnreadCount(v2TIMConversation.getUnreadCount());
            }
            AuthorityNotifyListActivity.this.setDatas(this.f17072a);
            AuthorityNotifyListActivity.this.notifyDataLoaded(false);
            com.guochao.faceshow.aaspring.manager.b.h("AuthorityNotifyBean", this.f17072a);
            if (AuthorityNotifyListActivity.this.getList().isEmpty()) {
                AuthorityNotifyListActivity.this.o0();
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            AuthorityNotifyListActivity.this.setDatas(this.f17072a);
            AuthorityNotifyListActivity.this.notifyDataLoaded(false);
            com.guochao.faceshow.aaspring.manager.b.h("AuthorityNotifyBean", this.f17072a);
            if (AuthorityNotifyListActivity.this.getList().isEmpty()) {
                AuthorityNotifyListActivity.this.o0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(List<AuthorityNotifyBean> list) {
        V2TIMManager.getConversationManager().getConversation("c2c_-10000", new b(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < 4; i9++) {
            arrayList.add(new AuthorityNotifyBean());
        }
        setDatas(arrayList);
        notifyDataLoaded(false);
        hideFooterView();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public boolean canLoadMore() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public boolean canRefresh() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.official);
        getRecyclerView().setBackgroundResource(R.color.white);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: k0 */
    public void convertItem(AuthorityViewHolder authorityViewHolder, int i9, AuthorityNotifyBean authorityNotifyBean) {
        authorityViewHolder.d(i9, authorityNotifyBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
    }

    public void loadNetData() {
        List d10 = com.guochao.faceshow.aaspring.manager.b.d("AuthorityNotifyBean", AuthorityNotifyBean.class);
        if (d10 != null) {
            setDatas(d10);
        }
        post("tokens/user/message/findSysMessageList").v(Contants.USER_ID, getCurrentUser().getUserId()).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    /* renamed from: m0 */
    public AuthorityViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new AuthorityViewHolder(viewGroup);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: n0 */
    public void onItemClick(AuthorityViewHolder authorityViewHolder, int i9, AuthorityNotifyBean authorityNotifyBean) {
        int i10;
        authorityViewHolder.f();
        try {
            i10 = Integer.parseInt(authorityNotifyBean.getMessageType());
        } catch (Exception unused) {
            i10 = 1;
        }
        SystemConversationManager.read(SystemConversationManager.SYSTEM_OFFICIAL, authorityNotifyBean.getUnreadCount());
        if (i10 == 1) {
            AssistantUserInfo.OfficialUserData officialUserData = new AssistantUserInfo.OfficialUserData();
            officialUserData.userId = Integer.parseInt(fb.a.c());
            SystemAssistantAct.A0(this, officialUserData, 1);
        } else if (i10 == 2) {
            PushMessageActivity.start(this);
        } else if (i10 != 3) {
            if (i10 == 4) {
                authorityViewHolder.e();
                new WebViewActivity.e().e(1000).a(getActivity());
            }
        } else if (BaseConfig.isChinese()) {
            AssistantUserInfo.OfficialUserData officialUserData2 = new AssistantUserInfo.OfficialUserData();
            officialUserData2.userId = Integer.parseInt(fb.a.c());
            SystemAssistantAct.A0(this, officialUserData2, 2);
        } else {
            GiftNotificationActivity.start(this);
        }
        k8.a.c().e();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        SystemConversationManager.loadMessageFromServer();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        loadNetData();
    }
}
