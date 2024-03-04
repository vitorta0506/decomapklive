package ib;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.FocusBean;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.utils.ConversationUtils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMConversationManager;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f41005a = 1400;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements GCRequestJava.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f41006a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ hb.b f41007b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41008c;

        a(Activity activity, hb.b bVar, String str) {
            this.f41006a = activity;
            this.f41007b = bVar;
            this.f41008c = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            hb.b bVar;
            Activity activity = this.f41006a;
            if (activity == null || activity.isFinishing() || this.f41006a.isDestroyed() || (bVar = this.f41007b) == null) {
                return;
            }
            bVar.onFail(this.f41008c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ib.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0457b implements GCRequestJava.d<FocusBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f41009a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41010b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ hb.b f41011c;

        C0457b(Activity activity, String str, hb.b bVar) {
            this.f41009a = activity;
            this.f41010b = str;
            this.f41011c = bVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<FocusBean> response) {
            List<FocusBean.ErrorUser> list;
            Activity activity = this.f41009a;
            if (activity == null || activity.isFinishing() || this.f41009a.isDestroyed()) {
                return;
            }
            FocusBean data = response.getData();
            if (data != null && (list = data.errorUserIds) != null) {
                for (FocusBean.ErrorUser errorUser : list) {
                    if (this.f41010b.equals(errorUser.errorUserId)) {
                        if ("-2".equals(errorUser.errorCode)) {
                            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.focus_error);
                        }
                        if ("-4".equals(errorUser.errorCode)) {
                            ToastUtils.showToast(BaseApplication.getInstance(), String.format(BaseApplication.getInstance().getString(R.string.focus_limit), String.valueOf(data.upperNum)));
                        }
                        if ("-3".equals(errorUser.errorCode)) {
                            y7.e.e(this.f41010b);
                            hb.b bVar = this.f41011c;
                            if (bVar != null) {
                                bVar.onResponse(this.f41010b);
                                return;
                            }
                            return;
                        }
                        hb.b bVar2 = this.f41011c;
                        if (bVar2 != null) {
                            bVar2.onFail(this.f41010b);
                            return;
                        }
                        return;
                    }
                }
            }
            y7.e.e(this.f41010b);
            hb.b bVar3 = this.f41011c;
            if (bVar3 != null) {
                bVar3.onResponse(this.f41010b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements GCRequestJava.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f41012a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ hb.b f41013b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41014c;

        c(Activity activity, hb.b bVar, String str) {
            this.f41012a = activity;
            this.f41013b = bVar;
            this.f41014c = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            hb.b bVar;
            Activity activity = this.f41012a;
            if (activity == null || activity.isFinishing() || this.f41012a.isDestroyed() || (bVar = this.f41013b) == null) {
                return;
            }
            bVar.onFail(this.f41014c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements GCRequestJava.d<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41015a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f41016b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ hb.b f41017c;

        d(String str, Activity activity, hb.b bVar) {
            this.f41015a = str;
            this.f41016b = activity;
            this.f41017c = bVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<String> response) {
            y7.e eVar = new y7.e(this.f41015a);
            eVar.g(false);
            EventBus.getDefault().post(eVar);
            Activity activity = this.f41016b;
            if (activity == null || activity.isFinishing() || this.f41016b.isDestroyed()) {
                return;
            }
            this.f41017c.onResponse(response.getData());
        }
    }

    /* loaded from: classes4.dex */
    class e implements V2TIMValueCallback<V2TIMConversation> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConversationInfo f41018a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f41019b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ChatStatusBean f41020c;

        e(ConversationInfo conversationInfo, Activity activity, ChatStatusBean chatStatusBean) {
            this.f41018a = conversationInfo;
            this.f41019b = activity;
            this.f41020c = chatStatusBean;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMConversation v2TIMConversation) {
            this.f41018a.setTIMConversation2(v2TIMConversation);
            com.guochao.faceshow.aaspring.manager.im.b.l0().N0(this.f41018a);
            com.guochao.faceshow.aaspring.manager.im.b.l0().R0(true);
            this.f41019b.startActivity(new Intent(this.f41019b, ChatActivity.class).putExtra("status", this.f41020c));
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41021a;

        static {
            int[] iArr = new int[FriendFromSource.values().length];
            f41021a = iArr;
            try {
                iArr[FriendFromSource.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41021a[FriendFromSource.LIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41021a[FriendFromSource.UGC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f41021a[FriendFromSource.SAY_HI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void a(String str, Activity activity, hb.b<String> bVar) {
        new GCRequestJava(Contants.friend_delete).putBody("accountId", str).j(new d(str, activity, bVar)).d(new c(activity, bVar, str)).request();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r6 != 4) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(java.lang.String r5, com.guochao.faceshow.aaspring.utils.FriendFromSource r6, android.app.Activity r7, hb.b<java.lang.String> r8) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r0.add(r5)
            int[] r1 = ib.b.f.f41021a
            int r6 = r6.ordinal()
            r6 = r1[r6]
            r1 = 3
            r2 = 2
            r3 = 1
            r4 = 0
            if (r6 == r3) goto L1d
            if (r6 == r2) goto L21
            if (r6 == r1) goto L1f
            r2 = 4
            if (r6 == r2) goto L22
        L1d:
            r1 = 0
            goto L22
        L1f:
            r1 = 2
            goto L22
        L21:
            r1 = 1
        L22:
            com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava r6 = new com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava
            java.lang.String r2 = com.guochao.faceshow.utils.Contants.friend_add
            r6.<init>(r2)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r2 = "fromSource"
            com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava r6 = r6.putBody(r2, r1)
            java.lang.String r1 = "aids"
            com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava r6 = r6.putBody(r1, r0)
            ib.b$b r0 = new ib.b$b
            r0.<init>(r7, r5, r8)
            com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava r6 = r6.j(r0)
            ib.b$a r0 = new ib.b$a
            r0.<init>(r7, r8, r5)
            com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava r5 = r6.d(r0)
            r5.request()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ib.b.b(java.lang.String, com.guochao.faceshow.aaspring.utils.FriendFromSource, android.app.Activity, hb.b):void");
    }

    public static void c(UserPageBaseData userPageBaseData, String str, Activity activity, ChatStatusBean chatStatusBean) {
        try {
            ConversationInfo b10 = com.guochao.faceshow.aaspring.manager.im.b.l0().b(userPageBaseData.userId);
            if (b10 == null) {
                b10 = new ConversationInfo(1, str, ConversationUtils.from(userPageBaseData));
            }
            if (b10.getConversationInfoDetail() == null) {
                b10.setConversationInfoDetail(ConversationUtils.from(userPageBaseData));
                b10.setNewConversation(true);
            }
            V2TIMConversationManager conversationManager = V2TIMManager.getConversationManager();
            conversationManager.getConversation("c2c_" + str, new e(b10, activity, chatStatusBean));
        } catch (Exception unused) {
        }
    }
}
