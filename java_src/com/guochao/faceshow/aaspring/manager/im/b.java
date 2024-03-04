package com.guochao.faceshow.aaspring.manager.im;

import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.MutableLiveData;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.im_messages.GCIMMessageDispatcherRegister;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.beans.GiftMessageRefresh;
import com.guochao.faceshow.aaspring.beans.SearchChatRecordResult;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.models.InputtingMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveInviteMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.SystemNotifyMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.ConversationUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DataCleanManager;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.TXIMUtils;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMConversationManager;
import com.tencent.imsdk.v2.V2TIMConversationResult;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageListGetOption;
import com.tencent.imsdk.v2.V2TIMUserFullInfo;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class b extends com.guochao.faceshow.aaspring.manager.im.a {
    private static b C;

    /* renamed from: s  reason: collision with root package name */
    private ConversationInfo f16530s;

    /* renamed from: t  reason: collision with root package name */
    private V2TIMMessage f16531t;

    /* renamed from: u  reason: collision with root package name */
    private List<com.guochao.faceshow.aaspring.modulars.chat.models.a> f16532u;

    /* renamed from: v  reason: collision with root package name */
    private long f16533v;

    /* renamed from: y  reason: collision with root package name */
    private boolean f16536y;

    /* renamed from: r  reason: collision with root package name */
    private GCIMMessageDispatcherRegister f16529r = new GCIMMessageDispatcherRegister();

    /* renamed from: w  reason: collision with root package name */
    Runnable f16534w = new k();

    /* renamed from: x  reason: collision with root package name */
    private int f16535x = 1;

    /* renamed from: z  reason: collision with root package name */
    HashMap<String, ConversationInfo> f16537z = new HashMap<>();
    boolean A = true;
    private List<m> B = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements V2TIMValueCallback<List<V2TIMConversation>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.manager.im.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0156a implements d.b<List<ConversationInfoDetail>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f16539a;

            C0156a(List list) {
                this.f16539a = list;
            }

            @Override // com.guochao.faceshow.aaspring.manager.im.d.b
            /* renamed from: b */
            public void a(@Nullable List<ConversationInfoDetail> list) {
                b.this.f16521p = false;
                if (list == null) {
                    list = new ArrayList<>();
                }
                b.this.f16508c.clear();
                b.this.f16509d.clear();
                b.this.f16509d.addAll(this.f16539a);
                for (int i9 = 0; i9 < list.size(); i9++) {
                    ConversationInfoDetail conversationInfoDetail = list.get(i9);
                    for (int i10 = 0; i10 < this.f16539a.size(); i10++) {
                        if (((V2TIMConversation) this.f16539a.get(i10)).getUserID() != null && ((V2TIMConversation) this.f16539a.get(i10)).getUserID().equals(conversationInfoDetail.getUserId())) {
                            ConversationInfo u02 = b.this.u0(conversationInfoDetail.getUserId());
                            u02.setTIMConversation2((V2TIMConversation) this.f16539a.get(i10));
                            u02.setConversationInfoDetail(conversationInfoDetail);
                            if (!TextUtils.isEmpty(conversationInfoDetail.getUserName())) {
                                b.this.f16508c.add(u02);
                            }
                        }
                    }
                }
                b bVar = b.this;
                bVar.B0(0, bVar.f16509d, true);
            }
        }

        a() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(List<V2TIMConversation> list) {
            if (list != null && list.size() > 0) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i9 = 0; i9 < list.size(); i9++) {
                    if (list.get(i9) != null && !TextUtils.isEmpty(list.get(i9).getShowName())) {
                        if (!TextUtils.isEmpty(list.get(i9).getUserID())) {
                            arrayList.add(list.get(i9).getUserID());
                        }
                        arrayList2.add(list.get(i9));
                    }
                }
                if (arrayList2.isEmpty()) {
                    b.this.f16522q = false;
                    return;
                } else if (b.this.n()) {
                    b.this.f16509d.clear();
                    b.this.f16509d.addAll(arrayList2);
                    b.this.f16521p = false;
                    return;
                } else {
                    b.this.y0(arrayList, new C0156a(arrayList2));
                    return;
                }
            }
            b bVar = b.this;
            bVar.f16521p = false;
            bVar.f16522q = false;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            b bVar = b.this;
            bVar.f16521p = false;
            bVar.f16522q = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.manager.im.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0157b extends TypeToken<List<ConversationInfo>> {
        C0157b() {
        }
    }

    /* loaded from: classes3.dex */
    class c implements V2TIMCallback {
        c() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            b.this.f16533v = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements V2TIMValueCallback<List<V2TIMUserFullInfo>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d.b f16543a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f16544b;

        d(d.b bVar, List list) {
            this.f16543a = bVar;
            this.f16544b = list;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(List<V2TIMUserFullInfo> list) {
            for (V2TIMUserFullInfo v2TIMUserFullInfo : list) {
                n nVar = new n();
                nVar.f16576c = v2TIMUserFullInfo;
                b.this.f16520o.put(v2TIMUserFullInfo.getUserID(), nVar);
                this.f16544b.add(ConversationUtils.from(v2TIMUserFullInfo));
            }
            this.f16543a.a(this.f16544b);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            this.f16543a.a(this.f16544b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends o {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ V2TIMValueCallback f16546c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(List list, int i9, V2TIMValueCallback v2TIMValueCallback) {
            super(list, i9);
            this.f16546c = v2TIMValueCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(long j10, V2TIMValueCallback v2TIMValueCallback, List list, int i9) {
            b.this.o0(j10, v2TIMValueCallback, list, i9 + 1);
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.b.o
        public void a(final long j10, @NonNull final List<V2TIMConversation> list, boolean z10, final int i9) {
            if (j10 != 0 && !list.isEmpty() && z10) {
                b.this.o0(j10, this.f16546c, list, i9);
            } else if (list.isEmpty() && i9 < 3) {
                Handler mainHandler = HandlerGetter.getMainHandler();
                final V2TIMValueCallback v2TIMValueCallback = this.f16546c;
                mainHandler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.manager.im.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.e.this.d(j10, v2TIMValueCallback, list, i9);
                    }
                }, 1000L);
            } else {
                V2TIMValueCallback v2TIMValueCallback2 = this.f16546c;
                if (v2TIMValueCallback2 == null) {
                    return;
                }
                v2TIMValueCallback2.onSuccess(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements d.b<ConversationInfoDetail> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConversationInfo f16548a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f16549b;

        f(ConversationInfo conversationInfo, boolean z10) {
            this.f16548a = conversationInfo;
            this.f16549b = z10;
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable ConversationInfoDetail conversationInfoDetail) {
            this.f16548a.setConversationInfoDetail(conversationInfoDetail);
            b.this.R0(this.f16549b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements V2TIMValueCallback<List<V2TIMMessage>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f16551a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f16552b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f16553c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f16554d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ConversationInfo f16555e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ V2TIMConversation f16556f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f16557g;

        g(int i9, List list, boolean z10, boolean z11, ConversationInfo conversationInfo, V2TIMConversation v2TIMConversation, int i10) {
            this.f16551a = i9;
            this.f16552b = list;
            this.f16553c = z10;
            this.f16554d = z11;
            this.f16555e = conversationInfo;
            this.f16556f = v2TIMConversation;
            this.f16557g = i10;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(List<V2TIMMessage> list) {
            V2TIMMessage lastMessage;
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = null;
            boolean z10 = false;
            boolean z11 = true;
            boolean z12 = false;
            int i9 = 0;
            boolean z13 = false;
            for (int i10 = 0; i10 < list.size(); i10++) {
                V2TIMMessage v2TIMMessage = list.get(i10);
                com.guochao.faceshow.aaspring.modulars.chat.models.a k10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.k(v2TIMMessage);
                if (!TextUtils.isEmpty(k10 != null ? k10.getSummary() : null) && !z12) {
                    aVar = k10;
                    z12 = true;
                }
                if (k10 != null && !k10.isRead() && !this.f16554d) {
                    i9++;
                }
                if (v2TIMMessage.isSelf()) {
                    z10 = true;
                }
                if (k10 != null && k10.isHasFriendMark() && !z13) {
                    z11 = !k10.isGreetingMessage();
                    z13 = true;
                }
            }
            this.f16555e.setSelfSent(z10);
            this.f16555e.setIsDraft(false);
            this.f16555e.setGreetingMessage(!z11);
            this.f16555e.isGreetingConversation();
            this.f16555e.isSendGreetingConversation();
            this.f16555e.checkOneDay();
            String draftText = this.f16556f.getDraftText();
            if (!TextUtils.isEmpty(draftText)) {
                aVar = TextMessage.from(draftText);
                this.f16555e.setIsDraft(true);
            }
            if (aVar == null && (lastMessage = this.f16556f.getLastMessage()) != null) {
                aVar = com.guochao.faceshow.aaspring.modulars.chat.models.b.k(lastMessage);
            }
            this.f16555e.setLastMsg(aVar);
            if (this.f16555e.isDraft()) {
                this.f16555e.setLastMsgTime(this.f16556f.getDraftTimestamp() * 1000);
            }
            int i11 = this.f16557g + 1;
            if (this.f16554d) {
                this.f16555e.setUnreadNum(0);
            } else {
                this.f16555e.setUnreadNum(i9);
            }
            b.this.B0(i11, this.f16552b, this.f16553c);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            b.this.B0(this.f16551a, this.f16552b, this.f16553c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements V2TIMValueCallback<V2TIMConversation> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConversationInfo f16559a;

        h(ConversationInfo conversationInfo) {
            this.f16559a = conversationInfo;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMConversation v2TIMConversation) {
            this.f16559a.setTIMConversation2(v2TIMConversation);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* loaded from: classes3.dex */
    class i implements V2TIMCallback {
        i() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            LogUtils.i("FaceCastIMManager", "onError: " + i9 + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            LogUtils.i("FaceCastIMManager", "onSuccess: ");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements V2TIMValueCallback<List<V2TIMMessage>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f16562a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ConversationInfo f16563b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f16564c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f16565d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List f16566e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ d.b f16567f;

        j(String str, ConversationInfo conversationInfo, List list, int i9, List list2, d.b bVar) {
            this.f16562a = str;
            this.f16563b = conversationInfo;
            this.f16564c = list;
            this.f16565d = i9;
            this.f16566e = list2;
            this.f16567f = bVar;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(List<V2TIMMessage> list) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                com.guochao.faceshow.aaspring.modulars.chat.models.a k10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.k(list.get(i9));
                if ((k10 instanceof TextMessage) && ((TextMessage) k10).getContent().toString().toLowerCase().contains(this.f16562a.toLowerCase()) && k10.getStatus() != 6 && k10.getStatus() != 4) {
                    SearchChatRecordResult searchChatRecordResult = new SearchChatRecordResult();
                    searchChatRecordResult.setConversationInfo(this.f16563b);
                    searchChatRecordResult.setMatchMessages(new ArrayList());
                    searchChatRecordResult.getMatchMessages().add(list.get(i9));
                    this.f16564c.add(searchChatRecordResult);
                }
            }
            b.this.H0(this.f16562a, this.f16564c, this.f16566e, this.f16565d + 1, this.f16567f);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            LogUtils.i("zune: ", "code = " + i9 + "desc = " + str);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!b.this.m()) {
                UserBean c10 = b8.e.g().c();
                b.this.s0(c10.getUserId(), c10.tencentSignature);
            }
            for (m mVar : b.this.B) {
                if (mVar != null) {
                    mVar.f0(b.this.m());
                }
            }
            HandlerGetter.getMainHandler().postDelayed(b.this.f16534w, 30000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements V2TIMCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f16570a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f16571b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ V2TIMCallback f16572c;

        l(String str, String str2, V2TIMCallback v2TIMCallback) {
            this.f16570a = str;
            this.f16571b = str2;
            this.f16572c = v2TIMCallback;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            b.this.f16536y = false;
            b bVar = b.this;
            bVar.f16521p = false;
            if (bVar.f16535x < 3) {
                b.T(b.this);
                b.this.t0(this.f16570a, this.f16571b, this.f16572c);
                return;
            }
            LogUtils.i("FaceCastIMManager", "login onError: " + i9 + "   " + str);
            V2TIMCallback v2TIMCallback = this.f16572c;
            if (v2TIMCallback != null) {
                v2TIMCallback.onError(i9, str);
                return;
            }
            for (V2TIMCallback v2TIMCallback2 : b.this.f16514i) {
                v2TIMCallback2.onError(i9, str);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            LogUtils.d("24HourMessage", "IM登录成功");
            b.this.j();
            V2TIMCallback v2TIMCallback = this.f16572c;
            if (v2TIMCallback != null) {
                v2TIMCallback.onSuccess();
            } else {
                for (V2TIMCallback v2TIMCallback2 : b.this.f16514i) {
                    v2TIMCallback2.onSuccess();
                }
            }
            b.this.f16536y = false;
            b.this.f16535x = 1;
            LogUtils.i("FaceCastIMManager", "login onSuccess: ");
            b.this.E0();
            o9.b.d().c(b.this.f16506a);
            EventBus.getDefault().post(new GiftMessageRefresh());
            if (b.this.f16533v == 0) {
                b.this.f16533v = V2TIMManager.getInstance().getServerTime();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface m {
        void f0(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class n {

        /* renamed from: a  reason: collision with root package name */
        boolean f16574a;

        /* renamed from: b  reason: collision with root package name */
        List<d.b<ConversationInfoDetail>> f16575b;

        /* renamed from: c  reason: collision with root package name */
        V2TIMUserFullInfo f16576c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements V2TIMValueCallback<List<V2TIMUserFullInfo>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f16577a;

            a(String str) {
                this.f16577a = str;
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            /* renamed from: a */
            public void onSuccess(List<V2TIMUserFullInfo> list) {
                if (list == null) {
                    onError(-1, "error ");
                    return;
                }
                for (int i9 = 0; i9 < list.size(); i9++) {
                    if (list.get(i9).getUserID().equals(this.f16577a)) {
                        n.this.f16576c = list.get(i9);
                        ConversationInfoDetail from = ConversationUtils.from(list.get(i9));
                        List<d.b<ConversationInfoDetail>> list2 = n.this.f16575b;
                        if (list2 != null) {
                            for (d.b<ConversationInfoDetail> bVar : list2) {
                                bVar.a(from);
                            }
                        }
                    }
                }
                List<d.b<ConversationInfoDetail>> list3 = n.this.f16575b;
                if (list3 != null) {
                    list3.clear();
                }
                n.this.f16574a = false;
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, String str) {
                List<d.b<ConversationInfoDetail>> list = n.this.f16575b;
                if (list != null) {
                    for (d.b<ConversationInfoDetail> bVar : list) {
                        bVar.a(null);
                    }
                    n.this.f16575b.clear();
                }
                n.this.f16574a = false;
            }
        }

        n() {
        }

        void a(String str, d.b<ConversationInfoDetail> bVar) {
            if (this.f16574a) {
                if (this.f16575b == null) {
                    this.f16575b = new ArrayList();
                }
                this.f16575b.add(bVar);
                return;
            }
            this.f16574a = true;
            V2TIMManager.getInstance().getUsersInfo(Collections.singletonList(str), new a(str));
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class o implements V2TIMValueCallback<V2TIMConversationResult> {

        /* renamed from: a  reason: collision with root package name */
        List<V2TIMConversation> f16579a;

        /* renamed from: b  reason: collision with root package name */
        int f16580b;

        public o(List<V2TIMConversation> list, int i9) {
            this.f16579a = list;
            this.f16580b = i9;
        }

        public abstract void a(long j10, @NonNull List<V2TIMConversation> list, boolean z10, int i9);

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: b */
        public void onSuccess(V2TIMConversationResult v2TIMConversationResult) {
            boolean z10 = v2TIMConversationResult != null && v2TIMConversationResult.getNextSeq() > 0;
            if (this.f16579a == null) {
                this.f16579a = new ArrayList();
            }
            if (v2TIMConversationResult != null && !v2TIMConversationResult.getConversationList().isEmpty()) {
                List<V2TIMConversation> conversationList = v2TIMConversationResult.getConversationList();
                Iterator<V2TIMConversation> it = conversationList.iterator();
                while (it.hasNext()) {
                    V2TIMConversation next = it.next();
                    if (!TextUtils.isEmpty(next.getGroupID())) {
                        TXIMUtils.quitGroup(next.getGroupID());
                    }
                    if (TextUtils.isEmpty(next.getUserID())) {
                        it.remove();
                    } else if (fb.a.e(next.getUserID())) {
                        it.remove();
                    } else if (next.getType() != 1) {
                        it.remove();
                    }
                }
                this.f16579a.addAll(conversationList);
            }
            a(v2TIMConversationResult != null ? v2TIMConversationResult.getNextSeq() : 0L, this.f16579a, z10, this.f16580b);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            a(0L, this.f16579a, false, this.f16580b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0(String str, List<SearchChatRecordResult> list, List<ConversationInfo> list2, int i9, d.b<List<SearchChatRecordResult>> bVar) {
        if (i9 >= list2.size()) {
            bVar.a(list);
            return;
        }
        ConversationInfo conversationInfo = list2.get(i9);
        if (conversationInfo.getTIMConversation() != null) {
            V2TIMMessageListGetOption v2TIMMessageListGetOption = new V2TIMMessageListGetOption();
            v2TIMMessageListGetOption.setCount(Integer.MAX_VALUE);
            v2TIMMessageListGetOption.setGetType(3);
            v2TIMMessageListGetOption.setUserID(conversationInfo.getTIMConversation().getUserID());
            V2TIMManager.getMessageManager().getHistoryMessageList(v2TIMMessageListGetOption, new j(str, conversationInfo, list, i9, list2, bVar));
            return;
        }
        H0(str, list, list2, i9 + 1, bVar);
    }

    static /* synthetic */ int T(b bVar) {
        int i9 = bVar.f16535x;
        bVar.f16535x = i9 + 1;
        return i9;
    }

    private void Y(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar == null || aVar.isSelf() || !(aVar instanceof LiveInviteMessage)) {
            return;
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.IM_CHAT_HELLOS_TAR_REPLY_HELLO);
    }

    private void a0(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar == null || aVar.isSelf() || !(aVar instanceof com.guochao.faceshow.aaspring.modulars.chat.models.c) || !((com.guochao.faceshow.aaspring.modulars.chat.models.c) aVar).isOneDay()) {
            return;
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.h24_be_greeted);
    }

    private void b0(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar == null || aVar.isSelf() || !(aVar instanceof com.guochao.faceshow.aaspring.modulars.chat.models.d) || !((com.guochao.faceshow.aaspring.modulars.chat.models.d) aVar).isSayHi()) {
            return;
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.SAYHI_ONEPEOPLE);
    }

    public static b l0() {
        if (C == null) {
            synchronized (b.class) {
                if (C == null) {
                    C = new b();
                }
            }
        }
        return C;
    }

    private void n0(V2TIMValueCallback<List<V2TIMConversation>> v2TIMValueCallback) {
        o0(0L, v2TIMValueCallback, new ArrayList(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(long j10, V2TIMValueCallback<List<V2TIMConversation>> v2TIMValueCallback, List<V2TIMConversation> list, int i9) {
        V2TIMManager.getConversationManager().getConversationList(j10, 20, new e(list, i9, v2TIMValueCallback));
    }

    private void p0(String str, ConversationInfo conversationInfo, boolean z10) {
        v0(str, new f(conversationInfo, z10));
    }

    private boolean r0(V2TIMConversation v2TIMConversation) {
        if (v2TIMConversation == null || TextUtils.isEmpty(v2TIMConversation.getUserID())) {
            return false;
        }
        return !fb.a.e(v2TIMConversation.getUserID());
    }

    public void A0() {
        List list = (List) com.guochao.faceshow.aaspring.manager.b.a("conversation", "conversation" + b8.e.g().c().getUserId(), new C0157b().getType());
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f16507b.setValue(new a8.a(true, list));
        this.f16508c.clear();
        this.f16508c.addAll(list);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.a
    public void B() {
        super.B();
        this.f16530s = null;
        this.f16532u = null;
        this.f16531t = null;
        this.f16520o.evictAll();
        this.f16537z.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B0(int i9, List<V2TIMConversation> list, boolean z10) {
        boolean z11;
        if (i9 >= list.size()) {
            if (!this.f16522q || z10) {
                this.f16522q = false;
                this.f16521p = false;
                g();
                return;
            }
            return;
        }
        int i10 = i9 + 1;
        V2TIMConversation v2TIMConversation = list.get(i9);
        if (!r0(v2TIMConversation)) {
            B0(i10, list, z10);
            return;
        }
        ConversationInfo e02 = e0(list.get(i9).getUserID(), false);
        if (e02 != null) {
            int unreadCount = v2TIMConversation.getUnreadCount();
            e02.setTIMConversation2(v2TIMConversation);
            if (unreadCount <= 0) {
                unreadCount = 10;
                z11 = true;
            } else {
                z11 = false;
            }
            int max = Math.max(100, unreadCount);
            V2TIMMessageListGetOption v2TIMMessageListGetOption = new V2TIMMessageListGetOption();
            v2TIMMessageListGetOption.setUserID(v2TIMConversation.getUserID());
            v2TIMMessageListGetOption.setGetType(3);
            v2TIMMessageListGetOption.setCount(max);
            V2TIMManager.getMessageManager().getHistoryMessageList(v2TIMMessageListGetOption, new g(i10, list, z10, z11, e02, v2TIMConversation, i9));
        }
    }

    public void E0() {
        this.f16521p = true;
        this.f16522q = true;
        n0(new a());
    }

    public void F0(ConversationInfo conversationInfo) {
        B0(0, Collections.singletonList(conversationInfo.getTIMConversation()), false);
    }

    public void G0(ConversationInfo conversationInfo) {
        ArrayList arrayList = new ArrayList(this.f16508c);
        arrayList.remove(conversationInfo);
        this.f16508c.clear();
        this.f16508c.addAll(arrayList);
        this.f16509d.remove(conversationInfo.getTIMConversation());
        g();
        try {
            V2TIMManager.getConversationManager().deleteConversation(conversationInfo.getTIMConversationId(), new i());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        DataCleanManager.clearIMCache(this.f16506a, conversationInfo.getTIMConversation());
    }

    public void I0(String str, d.b<List<SearchChatRecordResult>> bVar) {
        ArrayList arrayList = new ArrayList(this.f16508c);
        ArrayList arrayList2 = new ArrayList();
        if (arrayList.size() >= 1) {
            H0(str, arrayList2, arrayList, 0, bVar);
        } else {
            bVar.a(new ArrayList());
        }
    }

    public void K0(String str, String str2, d.b<List<SearchChatRecordResult>> bVar) {
        ConversationInfo b10 = b(str2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(b10);
        ArrayList arrayList2 = new ArrayList();
        if (arrayList.size() >= 1) {
            H0(str, arrayList2, arrayList, 0, bVar);
        } else {
            bVar.a(new ArrayList());
        }
    }

    public void L0(String str, d.b<List<ConversationInfo>> bVar) {
        if (!this.f16508c.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (ConversationInfo conversationInfo : this.f16508c) {
                if (conversationInfo.match(str)) {
                    arrayList.add(conversationInfo);
                }
            }
            bVar.a(arrayList);
            return;
        }
        bVar.a(new ArrayList());
    }

    public void N0(ConversationInfo conversationInfo) {
        e(conversationInfo, null);
    }

    public void O0(List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list) {
        this.f16532u = list;
    }

    public void P0() {
        HandlerGetter.getMainHandler().removeCallbacks(this.f16534w);
        HandlerGetter.getMainHandler().postDelayed(this.f16534w, 30000L);
    }

    public void Q0() {
        if (TextUtils.isEmpty(SpUtils.getStr(this.f16506a, Contants.USER_ID, ""))) {
            return;
        }
        A0();
    }

    public void R0(boolean z10) {
        if (z10) {
            g();
        }
    }

    public void W() {
        HandlerGetter.getMainHandler().removeCallbacks(this.f16534w);
    }

    public void Z() {
        if (m()) {
            return;
        }
        UserBean c10 = b8.e.g().c();
        s0(c10.getUserId(), c10.tencentSignature);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d
    public ConversationInfo b(String str) {
        return e0(str, true);
    }

    protected void d0(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar == null) {
            return;
        }
        for (d.a aVar2 : this.f16516k) {
            if ((aVar2 instanceof BaseChatActivity) || !(aVar instanceof InputtingMessage)) {
                aVar2.onNewMessage(aVar);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d
    public void e(@NonNull ConversationInfo conversationInfo, V2TIMMessage v2TIMMessage) {
        this.f16530s = conversationInfo;
        this.f16531t = v2TIMMessage;
        D(null, null);
    }

    public ConversationInfo e0(String str, boolean z10) {
        for (ConversationInfo conversationInfo : this.f16508c) {
            if (conversationInfo.getTIMConversation() != null && str.equals(conversationInfo.getTIMConversation().getUserID())) {
                return conversationInfo;
            }
        }
        ConversationInfo u02 = u0(str);
        this.f16508c.add(u02);
        p0(str, u02, z10);
        V2TIMConversationManager conversationManager = V2TIMManager.getConversationManager();
        conversationManager.getConversation("c2c_" + str, new h(u02));
        return u02;
    }

    public List<ConversationInfo> f0() {
        MutableLiveData<a8.a> mutableLiveData = this.f16507b;
        if (mutableLiveData != null && mutableLiveData.getValue() != null) {
            return this.f16507b.getValue().a();
        }
        return new ArrayList();
    }

    public ConversationInfo g0() {
        return this.f16530s;
    }

    public List<com.guochao.faceshow.aaspring.modulars.chat.models.a> i0() {
        return this.f16532u;
    }

    @Nullable
    public V2TIMMessage k0() {
        return this.f16531t;
    }

    public long m0() {
        return this.f16533v;
    }

    @Override // b8.d.a
    public void onLogout() {
        if (!TextUtils.isEmpty(V2TIMManager.getInstance().getLoginUser())) {
            TXIMUtils.logoutTIM(3, new c());
        }
        B();
    }

    @Override // com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
        if (this.A) {
            this.A = false;
        } else if (this.f16521p || this.f16536y) {
        } else {
            g();
        }
    }

    @Override // b8.d.a
    public void onUserChanged(UserBean userBean, UserBean userBean2) {
        String loginUser = V2TIMManager.getInstance().getLoginUser();
        if (userBean2 == null || userBean2.getUserId() == null || !userBean2.getUserId().equals(loginUser)) {
            this.f16535x = 1;
            if (userBean2 != null) {
                s0(userBean2.getUserId(), userBean2.tencentSignature);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.a
    public void q(V2TIMMessage v2TIMMessage, boolean z10, String str) {
        LiveMessageModel m354getWrappedMessage;
        if (!v2TIMMessage.isSelf() || z10) {
            o7.a m10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.m(v2TIMMessage);
            if (m10 != null && !(m10 instanceof com.guochao.faceshow.aaspring.modulars.chat.models.a)) {
                LogUtils.i("FaceCastIMManager", m10.toString());
                this.f16529r.dispatchGCIMMessage(m10);
            } else if (m10 == null) {
            } else {
                com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = (com.guochao.faceshow.aaspring.modulars.chat.models.a) m10;
                b0(aVar);
                a0(aVar);
                Y(aVar);
                if (z10 && !TextUtils.isEmpty(str)) {
                    aVar.setConversationType(2);
                    aVar.setConversationId(str);
                }
                com.guochao.faceshow.aaspring.modulars.trtc.receive.b.b().d(aVar);
                if (aVar instanceof SystemNotifyMessage) {
                    PushUtils.pushByIM((SystemNotifyMessage) aVar);
                }
                d0(aVar);
                if ((aVar instanceof LiveMessage) && (m354getWrappedMessage = ((LiveMessage) aVar).m354getWrappedMessage()) != null && "LIVE_CANCEL_PK_INVITE".equals(m354getWrappedMessage.getCmd())) {
                    com.guochao.faceshow.aaspring.modulars.live.pk.a.o().i(m354getWrappedMessage.getData().getToUserId(), m354getWrappedMessage.getData().getFromUserId());
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(aVar);
                if (!i(v2TIMMessage) && !aVar.isOnlineMessage() && !TextUtils.isEmpty(v2TIMMessage.getUserID())) {
                    ConversationInfo u02 = u0(v2TIMMessage.getUserID());
                    this.f16508c.add(u02);
                    p0(v2TIMMessage.getUserID(), u02, true);
                }
                IMPushNotificationManager.push(arrayList);
            }
        }
    }

    public boolean q0() {
        return this.f16536y;
    }

    public void registImCheckListener(m mVar) {
        this.B.add(mVar);
    }

    public void s0(String str, String str2) {
        t0(str, str2, null);
    }

    public void t0(String str, String str2, V2TIMCallback v2TIMCallback) {
        if (this.f16536y) {
            return;
        }
        this.f16536y = true;
        LogUtils.d("24HourMessage", "开始登录IM");
        V2TIMManager.getInstance().login(str, str2, new l(str, str2, v2TIMCallback));
    }

    ConversationInfo u0(String str) {
        ConversationInfo conversationInfo = this.f16537z.get(str);
        if (conversationInfo == null) {
            ConversationInfo conversationInfo2 = new ConversationInfo(1, str);
            this.f16537z.put(str, conversationInfo2);
            return conversationInfo2;
        }
        return conversationInfo;
    }

    public void unRegistImCheckListener(m mVar) {
        this.B.remove(mVar);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.a
    public void v(List<V2TIMConversation> list) {
        if (!this.f16521p || list.size() <= 1) {
            this.f16521p = true;
            ArrayList arrayList = new ArrayList();
            for (V2TIMConversation v2TIMConversation : list) {
                if (v2TIMConversation.getType() != 2) {
                    arrayList.add(v2TIMConversation);
                }
            }
            LogUtils.d("24HourMessage", "刷新IM会话");
            B0(0, arrayList, false);
        }
    }

    public void v0(String str, d.b<ConversationInfoDetail> bVar) {
        n nVar = this.f16520o.get(str);
        if (nVar != null) {
            V2TIMUserFullInfo v2TIMUserFullInfo = nVar.f16576c;
            if (v2TIMUserFullInfo != null) {
                bVar.a(ConversationUtils.from(v2TIMUserFullInfo));
                return;
            } else {
                nVar.a(str, bVar);
                return;
            }
        }
        n nVar2 = new n();
        nVar2.a(str, bVar);
        this.f16520o.put(str, nVar2);
    }

    public void y0(List<String> list, d.b<List<ConversationInfoDetail>> bVar) {
        V2TIMUserFullInfo v2TIMUserFullInfo;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        ArrayList arrayList3 = new ArrayList();
        for (String str : list) {
            n nVar = this.f16520o.get(str);
            if (nVar != null && (v2TIMUserFullInfo = nVar.f16576c) != null) {
                arrayList3.add(ConversationUtils.from(v2TIMUserFullInfo));
                arrayList.add(str);
            }
        }
        arrayList2.removeAll(arrayList);
        if (arrayList2.isEmpty()) {
            bVar.a(arrayList3);
        } else {
            V2TIMManager.getInstance().getUsersInfo(arrayList2, new d(bVar, arrayList3));
        }
    }
}
