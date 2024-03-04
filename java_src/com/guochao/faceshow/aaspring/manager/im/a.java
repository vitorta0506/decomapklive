package com.guochao.faceshow.aaspring.manager.im;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.LruCache;
import androidx.annotation.Nullable;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import b8.d;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.utils.ConversationUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.tencent.imsdk.v2.V2TIMAdvancedMsgListener;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMConversationListener;
import com.tencent.imsdk.v2.V2TIMFriendInfo;
import com.tencent.imsdk.v2.V2TIMFriendshipListener;
import com.tencent.imsdk.v2.V2TIMGroupListener;
import com.tencent.imsdk.v2.V2TIMGroupMemberInfo;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageReceipt;
import com.tencent.imsdk.v2.V2TIMSDKConfig;
import com.tencent.imsdk.v2.V2TIMSDKListener;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public abstract class a implements com.guochao.faceshow.aaspring.manager.im.d, d.a, i.InterfaceC0154i {

    /* renamed from: a  reason: collision with root package name */
    Application f16506a;

    /* renamed from: l  reason: collision with root package name */
    private int f16517l;

    /* renamed from: m  reason: collision with root package name */
    private String f16518m;

    /* renamed from: n  reason: collision with root package name */
    private String f16519n;

    /* renamed from: b  reason: collision with root package name */
    MutableLiveData<a8.a> f16507b = new MutableLiveData<>();

    /* renamed from: c  reason: collision with root package name */
    final Set<ConversationInfo> f16508c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    final List<V2TIMConversation> f16509d = new CopyOnWriteArrayList();

    /* renamed from: e  reason: collision with root package name */
    final HashMap<String, d.b<Void>> f16510e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    final List<d.b<String>> f16511f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    final List<g> f16512g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    final HashMap<String, d.b<Integer>> f16513h = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    final List<V2TIMCallback> f16514i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    final List<d.b<Integer>> f16515j = new CopyOnWriteArrayList();

    /* renamed from: k  reason: collision with root package name */
    final List<d.a> f16516k = new CopyOnWriteArrayList();

    /* renamed from: o  reason: collision with root package name */
    protected LruCache<String, b.n> f16520o = new LruCache<>(80);

    /* renamed from: p  reason: collision with root package name */
    boolean f16521p = false;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f16522q = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.manager.im.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0155a extends V2TIMSDKListener {
        C0155a() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMSDKListener
        public void onConnectFailed(int i9, String str) {
            super.onConnectFailed(i9, str);
            a.this.f16517l = i9;
            for (int i10 = 0; i10 < a.this.f16515j.size(); i10++) {
                a.this.f16515j.get(i10).a(Integer.valueOf(i9));
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMSDKListener
        public void onConnectSuccess() {
            super.onConnectSuccess();
            a.this.f16517l = 1932221;
            for (int i9 = 0; i9 < a.this.f16515j.size(); i9++) {
                a.this.f16515j.get(i9).a(1932221);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMSDKListener
        public void onConnecting() {
            super.onConnecting();
        }

        @Override // com.tencent.imsdk.v2.V2TIMSDKListener
        public void onKickedOffline() {
            super.onKickedOffline();
            a.this.B();
            BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_LOGIN_OTHER_PLACE, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends V2TIMConversationListener {
        b() {
        }

        private List<V2TIMConversation> a(List<V2TIMConversation> list) {
            Iterator<V2TIMConversation> it = list.iterator();
            while (it.hasNext()) {
                if (fb.a.e(it.next().getUserID())) {
                    it.remove();
                }
            }
            return list;
        }

        @Override // com.tencent.imsdk.v2.V2TIMConversationListener
        public void onConversationChanged(List<V2TIMConversation> list) {
            super.onConversationChanged(list);
            LogUtils.d("24HourMessage", "onConversationChanged()");
            List<V2TIMConversation> a10 = a(new ArrayList(list));
            if (a10.isEmpty()) {
                return;
            }
            ConversationRefresher.onRefreshConversations(a10, true);
            a.this.v(list);
        }

        @Override // com.tencent.imsdk.v2.V2TIMConversationListener
        public void onNewConversation(List<V2TIMConversation> list) {
            super.onNewConversation(list);
            List<V2TIMConversation> a10 = a(new ArrayList(list));
            if (a10.isEmpty()) {
                return;
            }
            ConversationRefresher.onRefreshConversations(a10, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends V2TIMGroupListener {
        c() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMGroupListener
        public void onGroupDismissed(String str, V2TIMGroupMemberInfo v2TIMGroupMemberInfo) {
            super.onGroupDismissed(str, v2TIMGroupMemberInfo);
            for (g gVar : a.this.f16512g) {
                if (gVar != null) {
                    gVar.T(str, v2TIMGroupMemberInfo);
                }
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMGroupListener
        public void onReceiveRESTCustomData(String str, byte[] bArr) {
            super.onReceiveRESTCustomData(str, bArr);
            a.this.q(V2TIMManager.getMessageManager().createCustomMessage(bArr), true, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends V2TIMFriendshipListener {
        d() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMFriendshipListener
        public void onFriendInfoChanged(List<V2TIMFriendInfo> list) {
            super.onFriendInfoChanged(list);
            boolean z10 = false;
            for (int i9 = 0; i9 < list.size(); i9++) {
                V2TIMFriendInfo v2TIMFriendInfo = list.get(i9);
                String userID = v2TIMFriendInfo.getUserID();
                Iterator<ConversationInfo> it = a.this.f16508c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ConversationInfo next = it.next();
                    if (next.getTIMConversation() != null && userID.equals(next.getTIMConversation().getUserID())) {
                        next.setConversationInfoDetail(ConversationUtils.from(v2TIMFriendInfo.getUserProfile()));
                        z10 = true;
                        break;
                    }
                }
                b.n nVar = a.this.f16520o.get(userID);
                if (nVar != null) {
                    nVar.f16574a = false;
                    nVar.f16576c = v2TIMFriendInfo.getUserProfile();
                }
                if (z10) {
                    break;
                }
            }
            if (z10) {
                a.this.g();
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements V2TIMValueCallback<Object> {
        e() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            LogUtils.i("IMManager", "setOfflinePushState error : " + i9 + ", desc:" + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onSuccess(Object obj) {
            LogUtils.i("IMManager", "setOfflinePushState success");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class f extends V2TIMAdvancedMsgListener {

        /* renamed from: a  reason: collision with root package name */
        a f16528a;

        public f(a aVar) {
            this.f16528a = aVar;
        }

        @Override // com.tencent.imsdk.v2.V2TIMAdvancedMsgListener
        public void onRecvC2CReadReceipt(List<V2TIMMessageReceipt> list) {
            super.onRecvC2CReadReceipt(list);
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                String userID = list.get(i9).getUserID();
                if (!arrayList.contains(userID)) {
                    arrayList.add(userID);
                    d.b<Void> bVar = this.f16528a.f16510e.get(userID);
                    if (bVar != null) {
                        bVar.a(null);
                    }
                }
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMAdvancedMsgListener
        public void onRecvMessageRevoked(String str) {
            super.onRecvMessageRevoked(str);
            a aVar = this.f16528a;
            if (aVar != null) {
                aVar.u(str);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMAdvancedMsgListener
        public void onRecvNewMessage(V2TIMMessage v2TIMMessage) {
            super.onRecvNewMessage(v2TIMMessage);
            a aVar = this.f16528a;
            if (aVar != null) {
                aVar.q(v2TIMMessage, false, null);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void T(String str, V2TIMGroupMemberInfo v2TIMGroupMemberInfo);
    }

    public void A(String str, d.b<Integer> bVar) {
        this.f16513h.put(str, bVar);
    }

    public void B() {
        this.f16507b.setValue(null);
        this.f16508c.clear();
        this.f16509d.clear();
        this.f16515j.clear();
        this.f16513h.clear();
        this.f16511f.clear();
        this.f16510e.clear();
        this.f16518m = null;
        this.f16519n = null;
        ConversationRefresher.release();
    }

    public void D(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            this.f16518m = null;
            this.f16519n = null;
        } else if (this.f16508c.size() > 0) {
            e(b(str), null);
            ChatActivity.navToChat(this.f16506a, str, 1, str2);
        } else {
            this.f16518m = str;
            this.f16519n = str2;
        }
    }

    public void E(V2TIMCallback v2TIMCallback) {
        this.f16514i.remove(v2TIMCallback);
    }

    public void G(d.a aVar) {
        this.f16516k.remove(aVar);
    }

    public void H(String str) {
        this.f16510e.remove(str);
    }

    public void I(d.b<String> bVar) {
        this.f16511f.remove(bVar);
    }

    public void J(String str) {
        this.f16513h.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        ArrayList arrayList = new ArrayList(this.f16508c);
        List<String> myNoDisturb = i.u().s().getMyNoDisturb();
        if (myNoDisturb != null) {
            for (ConversationInfo conversationInfo : arrayList) {
                if (conversationInfo.getConversationInfoDetail() != null) {
                    if (myNoDisturb.contains(conversationInfo.getConversationInfoDetail().getUserId())) {
                        conversationInfo.setSilent(1);
                    } else {
                        conversationInfo.setSilent(0);
                    }
                }
            }
        }
        LogUtils.d("24HourMessage", "设置数据");
        this.f16507b.setValue(new a8.a(false, arrayList));
        l(arrayList);
        if (TextUtils.isEmpty(this.f16518m)) {
            return;
        }
        LogUtils.i("IMManager", "callListeners: " + this.f16518m);
        String str = this.f16518m;
        this.f16518m = null;
        e(b(str), null);
        Intent intent = new Intent(this.f16506a, ChatActivity.class);
        Application application = this.f16506a;
        intent.putExtra("otherLanguage", SpUtils.getStr(application, b8.e.g().c().getUserId() + str + "otherLanguage"));
        intent.putExtra(Contants.USER_ID, str);
        intent.putExtra("type", 1);
        intent.addFlags(335544320);
        this.f16506a.startActivity(intent);
        this.f16518m = null;
        this.f16519n = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean i(V2TIMMessage v2TIMMessage) {
        if (v2TIMMessage != null && TextUtils.isEmpty(v2TIMMessage.getGroupID())) {
            for (ConversationInfo conversationInfo : this.f16508c) {
                if (conversationInfo.getTIMConversation() != null && conversationInfo.getTIMConversation().getUserID().equals(v2TIMMessage.getUserID())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        V2TIMManager.getInstance().callExperimentalAPI("setOfflinePushState", 1, new e());
    }

    public void k(Context context, String str) {
        int i9;
        try {
            i9 = Integer.parseInt(str);
        } catch (Exception unused) {
            i9 = BaseConfig.IM_SDK_APPID;
        }
        this.f16506a = (Application) context.getApplicationContext();
        V2TIMManager v2TIMManager = V2TIMManager.getInstance();
        V2TIMSDKConfig v2TIMSDKConfig = new V2TIMSDKConfig();
        v2TIMSDKConfig.setLogLevel(0);
        v2TIMManager.initSDK(context, i9, v2TIMSDKConfig, new C0155a());
        V2TIMManager.getConversationManager().setConversationListener(new b());
        V2TIMManager.getMessageManager().addAdvancedMsgListener(new f(this));
        b8.e.g().registerOnUserChangedListener(this);
        i.u().registerOnServerConfigChangedListener(this);
        IMPushNotificationManager.init();
        V2TIMManager.getInstance().setGroupListener(new c());
        V2TIMManager.getFriendshipManager().setFriendListener(new d());
    }

    protected void l(List<ConversationInfo> list) {
        try {
            com.guochao.faceshow.aaspring.manager.b.f("conversation", "conversation" + b8.e.g().c().getUserId(), list);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean m() {
        return !TextUtils.isEmpty(V2TIMManager.getInstance().getLoginUser()) && V2TIMManager.getInstance().getLoginStatus() == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean n() {
        return !n7.c.c();
    }

    public void o(@Nullable LifecycleOwner lifecycleOwner, Observer<a8.a> observer) {
        if (lifecycleOwner == null) {
            this.f16507b.observeForever(observer);
        } else {
            this.f16507b.observe(lifecycleOwner, observer);
        }
    }

    @Override // b8.d.a
    public /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        b8.c.a(this, userBean, userBean2, z10, z11, z12);
    }

    public abstract void q(V2TIMMessage v2TIMMessage, boolean z10, String str);

    public void registerGroupDismissListener(g gVar) {
        this.f16512g.add(gVar);
    }

    public void u(String str) {
        for (d.a aVar : this.f16516k) {
            aVar.onRecvMessageRevoked(str);
        }
    }

    public void unregisterGroupDismissListener(g gVar) {
        this.f16512g.remove(gVar);
    }

    public abstract void v(List<V2TIMConversation> list);

    public void w(V2TIMCallback v2TIMCallback) {
        if (this.f16514i.contains(v2TIMCallback)) {
            return;
        }
        this.f16514i.add(v2TIMCallback);
    }

    public void x(d.a aVar) {
        if (this.f16516k.contains(aVar)) {
            return;
        }
        this.f16516k.add(aVar);
    }

    public void y(String str, d.b<Void> bVar) {
        this.f16510e.put(str, bVar);
    }

    public void z(d.b<String> bVar) {
        if (this.f16511f.contains(bVar)) {
            return;
        }
        this.f16511f.add(bVar);
    }
}
