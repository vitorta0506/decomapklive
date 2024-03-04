package com.guochao.faceshow.aaspring.modulars.chat.utils;

import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import b8.d;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.SystemConversationMessage;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.activity.GreetingListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.models.SystemNotifyMessage;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.AuthorityNotifyListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.FriendRequestListActivity;
import com.guochao.faceshow.aaspring.modulars.main.SystemNotificationListActivity;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\bR\u0010SJ&\u0010\n\u001a\u00020\t2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\u0007J\b\u0010\u000b\u001a\u00020\tH\u0007J\u001a\u0010\u000f\u001a\u00020\t2\u0010\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\fH\u0002J'\u0010\u0012\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J$\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u0019H\u0007J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001d\u001a\u00020\u0019H\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0011\u001a\u00020\rH\u0002J\u0018\u0010#\u001a\u00020\t2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0007H\u0007J\u0010\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u0007H\u0007J$\u0010)\u001a\u00020\t2\b\b\u0002\u0010'\u001a\u00020&2\u0010\u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\fH\u0007J\u0018\u0010,\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u0017H\u0007J\u0010\u0010-\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u0019H\u0007J\b\u0010.\u001a\u00020\tH\u0007J\b\u0010/\u001a\u00020\tH\u0002J\u001b\u00100\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0016J\u0010\u00103\u001a\u00020\t2\u0006\u00102\u001a\u000201H\u0016J\u001c\u00107\u001a\u00020\t2\b\u00105\u001a\u0004\u0018\u0001042\b\u00106\u001a\u0004\u0018\u000104H\u0016J\b\u00108\u001a\u00020\tH\u0016R\u0014\u00109\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010;\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010:R\u0014\u0010<\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u0010:R\u0014\u0010=\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u0010:R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00190>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u001a\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00070\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00070\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010BR \u0010E\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010G\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR(\u0010K\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\r0Ij\n\u0012\u0006\u0012\u0004\u0018\u00010\r`J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010M\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010P\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010Q\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006T"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;", "Lcom/guochao/faceshow/aaspring/manager/im/d$a;", "Lb8/d$a;", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Landroidx/lifecycle/Observer;", "", "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;", "observer", "", "observe", "loadMessageFromServer", "", "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;", "systemConversationMessage", "handleConversations", "conversationInfo", "systemConversationMessageItem", "handleNewMessage", "(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", com.huawei.hms.opendevice.c.f27627a, "checkOfficialConversation", "(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "typeId", "", "nickName", "content", "getDisplayedMessage", "conversationId", "findConversation", "typeIdToMessageType", "Landroid/content/Context;", PushConstants.INTENT_ACTIVITY_NAME, BaseConfig.ITEM, "onClick", "info", "removeConversation", "", "init", "data", "checkRemove", "systemConversationId", AnimatedPasterJsonConfig.CONFIG_COUNT, "read", "clearUnread", "clearAllUnread", "setOfficialConversationRead", "loadEventNotifyUnread", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "message", "onNewMessage", "Lcom/guochao/faceshow/bean/UserBean;", "oldUser", "newUser", "onUserChanged", "onLogout", "SYSTEM_OFFICIAL", "Ljava/lang/String;", "SYSTEM_FOCUSED", "SYSTEM_HELLO", "SYSTEM_INTERACTION", "", "array", "[Ljava/lang/String;", "systemConversationList", "Ljava/util/List;", "all", "Landroidx/lifecycle/MutableLiveData;", "systemConversations", "Landroidx/lifecycle/MutableLiveData;", "requesting", "Z", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "lastData", "Ljava/util/ArrayList;", "lastOfficialMessage", "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SystemConversationManager implements d.a, d.a {
    @NotNull
    public static final SystemConversationManager INSTANCE;
    @NotNull
    public static final String SYSTEM_FOCUSED = "system_focused";
    @NotNull
    public static final String SYSTEM_HELLO = "system_hello";
    @NotNull
    public static final String SYSTEM_INTERACTION = "system_interaction";
    @NotNull
    public static final String SYSTEM_OFFICIAL = "system_official";
    @NotNull
    private static final List<ConversationInfo> all;
    @NotNull
    private static final String[] array;
    @NotNull
    private static final CoroutineScope coroutineScope;
    @Nullable
    private static a8.a imConversationListResult;
    @NotNull
    private static final ArrayList<SystemConversationMessage> lastData;
    @Nullable
    private static SystemConversationMessage lastOfficialMessage;
    private static boolean requesting;
    @NotNull
    private static final List<ConversationInfo> systemConversationList;
    @NotNull
    private static final MutableLiveData<List<ConversationInfo>> systemConversations;

    static {
        SystemConversationManager systemConversationManager = new SystemConversationManager();
        INSTANCE = systemConversationManager;
        String[] strArr = {SYSTEM_OFFICIAL, SYSTEM_FOCUSED, SYSTEM_HELLO, SYSTEM_INTERACTION};
        array = strArr;
        systemConversationList = new ArrayList();
        all = new ArrayList();
        systemConversations = new MutableLiveData<>();
        lastData = new ArrayList<>();
        coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
        b8.e.g().registerOnUserChangedListener(systemConversationManager);
        for (String str : strArr) {
            ConversationInfo conversationInfo = new ConversationInfo(3, str);
            if (Intrinsics.areEqual(str, SYSTEM_HELLO)) {
                conversationInfo.setUnreadNum(-1);
            }
            all.add(conversationInfo);
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().x(INSTANCE);
        com.guochao.faceshow.aaspring.manager.im.b.l0().o(null, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SystemConversationManager.m358_init_$lambda3((a8.a) obj);
            }
        });
    }

    private SystemConversationManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-3  reason: not valid java name */
    public static final void m358_init_$lambda3(a8.a aVar) {
        int i9;
        SystemConversationManager systemConversationManager = INSTANCE;
        imConversationListResult = aVar;
        if (aVar == null) {
            return;
        }
        ConversationInfo findConversation = systemConversationManager.findConversation(SYSTEM_HELLO);
        if (findConversation != null) {
            findConversation.setLastMsgStr("");
            findConversation.setLastMsgTime(0L);
            List<ConversationInfo> conversationInfos = aVar.a();
            boolean z10 = false;
            if (conversationInfos != null) {
                Intrinsics.checkNotNullExpressionValue(conversationInfos, "conversationInfos");
                boolean z11 = false;
                i9 = 0;
                for (ConversationInfo conversationInfo : conversationInfos) {
                    conversationInfo.isGreetingConversation();
                    if (conversationInfo.isSayHi() && !fb.a.e(conversationInfo.getConversationId())) {
                        if (!z11) {
                            findConversation.setLastMsgStr(BaseApplication.getInstance().getResources().getString(R.string.hello_say_hello_to_you, conversationInfo.getConversationName()));
                            findConversation.setLastMsgTime(conversationInfo.getLastMsgTime());
                            z11 = true;
                        }
                        i9 += conversationInfo.getUnreadNum();
                    }
                }
                z10 = z11;
            } else {
                i9 = 0;
            }
            if (z10) {
                findConversation.setUnreadNum(i9);
            } else {
                findConversation.setUnreadNum(-1);
            }
            if (SpUtils.getSelfLong("system_conversation_delete_" + findConversation.getConversationId(), 0L) != findConversation.getLastMsgTime()) {
                List<ConversationInfo> list = systemConversationList;
                if (!list.contains(findConversation)) {
                    list.add(findConversation);
                }
            }
        }
        ConversationInfo findConversation2 = INSTANCE.findConversation(SYSTEM_OFFICIAL);
        if (findConversation2 == null) {
            systemConversations.setValue(systemConversationList);
        } else {
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, Dispatchers.getMain(), null, new SystemConversationManager$2$2(findConversation2, null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object checkOfficialConversation(com.guochao.faceshow.aaspring.beans.ConversationInfo r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$checkOfficialConversation$1
            if (r0 == 0) goto L13
            r0 = r6
            com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$checkOfficialConversation$1 r0 = (com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$checkOfficialConversation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$checkOfficialConversation$1 r0 = new com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$checkOfficialConversation$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3d
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.label = r3
            java.lang.Object r6 = r4.loadEventNotifyUnread(r5, r0)
            if (r6 != r1) goto L3d
            return r1
        L3d:
            com.guochao.faceshow.aaspring.beans.ConversationInfo r6 = (com.guochao.faceshow.aaspring.beans.ConversationInfo) r6
            java.util.List<com.guochao.faceshow.aaspring.beans.ConversationInfo> r5 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.systemConversationList
            java.util.Iterator r5 = r5.iterator()
        L45:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L5f
            java.lang.Object r0 = r5.next()
            r1 = r0
            com.guochao.faceshow.aaspring.beans.ConversationInfo r1 = (com.guochao.faceshow.aaspring.beans.ConversationInfo) r1
            java.lang.String r1 = r1.getConversationId()
            java.lang.String r2 = "system_official"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 == 0) goto L45
            goto L60
        L5f:
            r0 = 0
        L60:
            if (r0 == 0) goto L63
            goto L64
        L63:
            r3 = 0
        L64:
            if (r3 != 0) goto L75
            long r0 = r6.getLastMsgTime()
            r2 = 0
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 <= 0) goto L75
            java.util.List<com.guochao.faceshow.aaspring.beans.ConversationInfo> r5 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.systemConversationList
            r5.add(r6)
        L75:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.checkOfficialConversation(com.guochao.faceshow.aaspring.beans.ConversationInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @JvmStatic
    public static final void checkRemove(boolean z10, @Nullable List<SystemConversationMessage> list) {
        ArrayList arrayList = new ArrayList(all);
        Iterator it = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "list.iterator()");
        while (it.hasNext()) {
            ConversationInfo conversationInfo = (ConversationInfo) it.next();
            SystemConversationMessage systemConversationMessage = null;
            if (list != null) {
                for (SystemConversationMessage systemConversationMessage2 : list) {
                    boolean z11 = true;
                    if (!(systemConversationMessage2 != null && systemConversationMessage2.getMessageType() == 1) || !Intrinsics.areEqual(conversationInfo.getConversationId(), SYSTEM_OFFICIAL)) {
                        if (!(systemConversationMessage2 != null && systemConversationMessage2.getMessageType() == 2) || !Intrinsics.areEqual(conversationInfo.getConversationId(), SYSTEM_FOCUSED)) {
                            if (((systemConversationMessage2 == null || systemConversationMessage2.getMessageType() != 3) ? false : false) && Intrinsics.areEqual(conversationInfo.getConversationId(), SYSTEM_INTERACTION)) {
                            }
                        }
                    }
                    systemConversationMessage = systemConversationMessage2;
                }
            }
            if (systemConversationMessage != null && systemConversationMessage.getTypeId() == 0) {
                it.remove();
            } else if (Intrinsics.areEqual(conversationInfo.getConversationId(), SYSTEM_HELLO) && conversationInfo.getUnreadNum() == -1) {
                it.remove();
            } else {
                long selfLong = SpUtils.getSelfLong("system_conversation_delete_" + conversationInfo.getConversationId(), -1L);
                if (!z10) {
                    if ((systemConversationMessage != null ? systemConversationMessage.getContentDate() : 0L) <= selfLong) {
                        it.remove();
                    }
                } else if (-1 != selfLong) {
                    it.remove();
                }
            }
        }
        List<ConversationInfo> list2 = systemConversationList;
        list2.clear();
        list2.addAll(arrayList);
    }

    public static /* synthetic */ void checkRemove$default(boolean z10, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        checkRemove(z10, list);
    }

    @JvmStatic
    public static final void clearAllUnread() {
        new PostRequest("tokens/user/message/readAllMessage").L();
        for (ConversationInfo conversationInfo : systemConversationList) {
            conversationInfo.setUnreadNum(0);
        }
        systemConversations.setValue(systemConversationList);
    }

    @JvmStatic
    public static final void clearUnread(@NotNull String systemConversationId) {
        Object obj;
        a8.a aVar;
        List<ConversationInfo> a10;
        Intrinsics.checkNotNullParameter(systemConversationId, "systemConversationId");
        Iterator<T> it = all.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((ConversationInfo) obj).getConversationId(), systemConversationId)) {
                break;
            }
        }
        ConversationInfo conversationInfo = (ConversationInfo) obj;
        if (conversationInfo != null) {
            conversationInfo.setUnreadNum(0);
        }
        systemConversations.setValue(systemConversationList);
        if (Intrinsics.areEqual(systemConversationId, SYSTEM_OFFICIAL)) {
            new PostRequest("tokens/user/message/readAllOfficeMessage").L();
        }
        if (Intrinsics.areEqual(systemConversationId, SYSTEM_FOCUSED)) {
            new PostRequest("user/attention/getListUserAttention").D(Contants.USER_ID, b8.e.g().c().getUserId()).B("page", 1).D("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).L();
        }
        if (Intrinsics.areEqual(systemConversationId, SYSTEM_INTERACTION)) {
            new PostRequest("tokens/user/message/readAllInteractMessage").L();
        }
        if (!Intrinsics.areEqual(systemConversationId, SYSTEM_HELLO) || (aVar = imConversationListResult) == null || (a10 = aVar.a()) == null) {
            return;
        }
        V2TIMCallback v2TIMCallback = new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$clearUnread$3$call$1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, @Nullable String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        };
        for (ConversationInfo conversationInfo2 : a10) {
            if (conversationInfo2.isSayHi()) {
                V2TIMManager.getMessageManager().markC2CMessageAsRead(conversationInfo2.getConversationId(), v2TIMCallback);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConversationInfo findConversation(String str) {
        for (ConversationInfo conversationInfo : all) {
            if (Intrinsics.areEqual(conversationInfo.getConversationId(), str)) {
                return conversationInfo;
            }
        }
        return null;
    }

    @JvmStatic
    @NotNull
    public static final String getDisplayedMessage(int i9, @Nullable String str, @Nullable String str2) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        if (i9 != 231) {
            if (i9 != 232) {
                if (i9 != 323 && i9 != 324) {
                    switch (i9) {
                        case 201:
                        case 202:
                        case 203:
                        case 208:
                            break;
                        case 204:
                        case 205:
                        case 206:
                        case 207:
                            break;
                        case 209:
                            return str + baseApplication.getString(R.string.Thumb_up_has_your_live_comments);
                        case 210:
                            return str + baseApplication.getString(R.string.Thumb_up_has_your_dynamic_reply);
                        case 211:
                            return str + baseApplication.getString(R.string.Thumb_up_is_your_feed);
                        case 212:
                            return str + baseApplication.getString(R.string.Thumb_up_has_your_video_comments);
                        case TPNativePlayerInitConfig.BOOL_ENABLE_MEDIA_CODEC_REUSE /* 213 */:
                            return str + baseApplication.getString(R.string.Thumb_up_your_video_reply);
                        case 214:
                            return str + baseApplication.getString(R.string.Thumb_up_is_your_video);
                        case TPNativePlayerInitConfig.BOOL_VIDEO_KEEP_MEDIA_CODEC_PTS /* 215 */:
                            String string = baseApplication.getString(R.string.hello_comment_your_comment, new Object[]{str, str2});
                            Intrinsics.checkNotNullExpressionValue(string, "{//type_id:215 评论了朋友圈\n  …          )\n            }");
                            return string;
                        case 216:
                        case 218:
                            return str + ' ' + baseApplication.getString(R.string.Responded_to_your_comment) + " : " + str2;
                        case 217:
                            String string2 = baseApplication.getString(R.string.hello_comment_your_video_comment, new Object[]{str, str2});
                            Intrinsics.checkNotNullExpressionValue(string2, "{ //评论了短视频\n             …          )\n            }");
                            return string2;
                        case TPOptionalID.OPTION_ID_BEFORE_BOOL_RELEASE_MEDIA_CODEC_WHEN_SET_SURFACE /* 219 */:
                        case 220:
                        case 221:
                        case 222:
                            String string3 = baseApplication.getString(R.string.hello_at_me_tips, new Object[]{str, str2});
                            Intrinsics.checkNotNullExpressionValue(string3, "{//type_id:221    视频中@好友…          )\n            }");
                            return string3;
                        case 223:
                            String string4 = baseApplication.getString(R.string.hello_focused_you, new Object[]{str});
                            Intrinsics.checkNotNullExpressionValue(string4, "{//type_id:223   @用户昵称关注…          )\n            }");
                            return string4;
                        default:
                            return str2 == null ? "" : str2;
                    }
                }
                String string5 = baseApplication.getString(R.string.hello_new_event_coming);
                Intrinsics.checkNotNullExpressionValue(string5, "{//type_id:205  音乐信息活动通知…ent_coming)\n            }");
                return string5;
            }
            String string6 = baseApplication.getString(R.string.hello_like_your_video_send_gift, new Object[]{str});
            Intrinsics.checkNotNullExpressionValue(string6, "{//SENDGIFT-232 语音送礼\n   …          )\n            }");
            return string6;
        }
        String string7 = baseApplication.getString(R.string.hello_helper_reply);
        Intrinsics.checkNotNullExpressionValue(string7, "{// 新版反馈与帮助\n            …lper_reply)\n            }");
        return string7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleConversations(List<SystemConversationMessage> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (SystemConversationMessage systemConversationMessage : list) {
                boolean z10 = false;
                if (systemConversationMessage != null && systemConversationMessage.getTypeId() == 0) {
                    z10 = true;
                }
                if (z10) {
                    arrayList.add(systemConversationMessage);
                }
            }
        }
        if ((true ^ arrayList.isEmpty()) && list != null) {
            list.removeAll(arrayList);
        }
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, Dispatchers.getMain(), null, new SystemConversationManager$handleConversations$2(list, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleNewMessage(ConversationInfo conversationInfo, SystemConversationMessage systemConversationMessage, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (conversationInfo != null && systemConversationMessage != null) {
            conversationInfo.setUnreadNum(systemConversationMessage.getUnreadCount());
            conversationInfo.setLastMsgTime(systemConversationMessage.getContentDate());
            conversationInfo.setSortTime(systemConversationMessage.getContentDate());
            conversationInfo.setLastMsgStr(systemConversationMessage.getContent());
            if (Intrinsics.areEqual(conversationInfo.getConversationId(), SYSTEM_OFFICIAL)) {
                lastOfficialMessage = systemConversationMessage;
                Object checkOfficialConversation = checkOfficialConversation(conversationInfo, continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return checkOfficialConversation == coroutine_suspended ? checkOfficialConversation : Unit.INSTANCE;
            }
            String content = systemConversationMessage.getContent();
            if (content == null) {
                content = "";
            }
            conversationInfo.setLastMsgStr(getDisplayedMessage(systemConversationMessage.getTypeId(), systemConversationMessage.getUserNickName(), content));
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadEventNotifyUnread(final ConversationInfo conversationInfo, Continuation<? super ConversationInfo> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        V2TIMManager.getConversationManager().getConversation("c2c_-10000", new V2TIMValueCallback<V2TIMConversation>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$loadEventNotifyUnread$2$1
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, @Nullable String str) {
                CancellableContinuation<ConversationInfo> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(ConversationInfo.this));
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(@Nullable V2TIMConversation v2TIMConversation) {
                SystemConversationMessage systemConversationMessage;
                SystemConversationMessage systemConversationMessage2;
                int typeId;
                SystemConversationMessage systemConversationMessage3;
                SystemConversationMessage systemConversationMessage4;
                SystemConversationMessage systemConversationMessage5;
                SystemConversationMessage systemConversationMessage6;
                SystemConversationMessage systemConversationMessage7;
                Integer intOrNull;
                SystemConversationMessage systemConversationMessage8;
                if (v2TIMConversation != null) {
                    if (v2TIMConversation.getUnreadCount() > 0) {
                        ConversationInfo conversationInfo2 = ConversationInfo.this;
                        systemConversationMessage8 = SystemConversationManager.lastOfficialMessage;
                        conversationInfo2.setUnreadNum((systemConversationMessage8 != null ? systemConversationMessage8.getUnreadCount() : 0) + v2TIMConversation.getUnreadCount());
                    } else {
                        ConversationInfo conversationInfo3 = ConversationInfo.this;
                        systemConversationMessage = SystemConversationManager.lastOfficialMessage;
                        conversationInfo3.setUnreadNum(systemConversationMessage != null ? systemConversationMessage.getUnreadCount() : 0);
                    }
                    V2TIMMessage lastMessage = v2TIMConversation.getLastMessage();
                    if (lastMessage != null) {
                        long timestamp = lastMessage.getTimestamp() * 1000;
                        o7.a m10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.m(lastMessage);
                        if (timestamp >= ConversationInfo.this.getLastMsgTime() && (m10 instanceof SystemNotifyMessage)) {
                            ConversationInfo.this.setLastMsgTime(timestamp);
                            ConversationInfo.this.setSortTime(timestamp);
                            String lastMsgStr = ConversationInfo.this.getLastMsgStr();
                            if (lastMsgStr == null) {
                                lastMsgStr = "";
                            }
                            ConversationInfo conversationInfo4 = ConversationInfo.this;
                            String typeId2 = ((SystemNotifyMessage) m10).getTypeId();
                            Intrinsics.checkNotNullExpressionValue(typeId2, "msg.typeId");
                            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(typeId2);
                            conversationInfo4.setLastMsgStr(SystemConversationManager.getDisplayedMessage(intOrNull != null ? intOrNull.intValue() : 0, "", lastMsgStr));
                        } else {
                            ConversationInfo conversationInfo5 = ConversationInfo.this;
                            systemConversationMessage5 = SystemConversationManager.lastOfficialMessage;
                            typeId = systemConversationMessage5 != null ? systemConversationMessage5.getTypeId() : 0;
                            systemConversationMessage6 = SystemConversationManager.lastOfficialMessage;
                            String userNickName = systemConversationMessage6 != null ? systemConversationMessage6.getUserNickName() : null;
                            systemConversationMessage7 = SystemConversationManager.lastOfficialMessage;
                            conversationInfo5.setLastMsgStr(SystemConversationManager.getDisplayedMessage(typeId, userNickName, systemConversationMessage7 != null ? systemConversationMessage7.getContent() : null));
                        }
                    } else {
                        ConversationInfo conversationInfo6 = ConversationInfo.this;
                        systemConversationMessage2 = SystemConversationManager.lastOfficialMessage;
                        typeId = systemConversationMessage2 != null ? systemConversationMessage2.getTypeId() : 0;
                        systemConversationMessage3 = SystemConversationManager.lastOfficialMessage;
                        String userNickName2 = systemConversationMessage3 != null ? systemConversationMessage3.getUserNickName() : null;
                        systemConversationMessage4 = SystemConversationManager.lastOfficialMessage;
                        conversationInfo6.setLastMsgStr(SystemConversationManager.getDisplayedMessage(typeId, userNickName2, systemConversationMessage4 != null ? systemConversationMessage4.getContent() : null));
                    }
                }
                CancellableContinuation<ConversationInfo> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(ConversationInfo.this));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @JvmStatic
    public static final void loadMessageFromServer() {
        if (requesting) {
            return;
        }
        requesting = true;
        new GetRequest("tokens/user/message/findALLReadNumByUserIdV2").M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<SystemConversationMessage>>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$loadMessageFromServer$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                SystemConversationManager systemConversationManager = SystemConversationManager.INSTANCE;
                SystemConversationManager.requesting = false;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<SystemConversationMessage>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<SystemConversationMessage> list, @NotNull FaceCastBaseResponse<List<SystemConversationMessage>> baseResponse) {
                ArrayList arrayList;
                ArrayList arrayList2;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                SystemConversationManager systemConversationManager = SystemConversationManager.INSTANCE;
                systemConversationManager.setOfficialConversationRead();
                if (list != null) {
                    arrayList = SystemConversationManager.lastData;
                    arrayList.clear();
                    arrayList2 = SystemConversationManager.lastData;
                    arrayList2.addAll(list);
                }
                SystemConversationManager.checkRemove(false, list);
                systemConversationManager.handleConversations(list);
            }
        });
    }

    @JvmStatic
    public static final void observe(@Nullable LifecycleOwner lifecycleOwner, @NotNull Observer<List<ConversationInfo>> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (lifecycleOwner == null) {
            systemConversations.observeForever(observer);
        } else {
            systemConversations.observe(lifecycleOwner, observer);
        }
    }

    @JvmStatic
    public static final void onClick(@NotNull Context activity, @NotNull ConversationInfo item) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(item, "item");
        String conversationId = item.getConversationId();
        if (Intrinsics.areEqual(conversationId, SYSTEM_HELLO)) {
            activity.startActivity(new Intent(activity, GreetingListActivity.class));
        } else if (Intrinsics.areEqual(conversationId, SYSTEM_FOCUSED)) {
            activity.startActivity(new Intent(activity, FriendRequestListActivity.class));
        } else if (Intrinsics.areEqual(conversationId, SYSTEM_INTERACTION)) {
            activity.startActivity(new Intent(activity, SystemNotificationListActivity.class));
        } else if (Intrinsics.areEqual(conversationId, SYSTEM_OFFICIAL)) {
            activity.startActivity(new Intent(activity, AuthorityNotifyListActivity.class));
        }
    }

    @JvmStatic
    public static final void read(@NotNull String systemConversationId, int i9) {
        Object obj;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(systemConversationId, "systemConversationId");
        Iterator<T> it = all.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((ConversationInfo) obj).getConversationId(), systemConversationId)) {
                break;
            }
        }
        ConversationInfo conversationInfo = (ConversationInfo) obj;
        if (conversationInfo != null) {
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0, conversationInfo.getUnreadNum() - i9);
            conversationInfo.setUnreadNum(coerceAtLeast);
            systemConversations.setValue(systemConversationList);
        }
    }

    @JvmStatic
    public static final void removeConversation(@NotNull ConversationInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Iterator<ConversationInfo> it = systemConversationList.iterator();
        while (it.hasNext()) {
            ConversationInfo next = it.next();
            if (Intrinsics.areEqual(next.getConversationId(), info.getConversationId())) {
                it.remove();
                SpUtils.setSelfLong("system_conversation_delete_" + next.getConversationId(), info.getLastMsgTime());
            }
        }
        String conversationId = info.getConversationId();
        Intrinsics.checkNotNullExpressionValue(conversationId, "info.conversationId");
        clearUnread(conversationId);
        systemConversations.setValue(systemConversationList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setOfficialConversationRead() {
        V2TIMCallback v2TIMCallback = new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$setOfficialConversationRead$callBack$1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, @Nullable String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        };
        V2TIMManager.getMessageManager().markC2CMessageAsRead("172", v2TIMCallback);
        V2TIMManager.getMessageManager().markC2CMessageAsRead("172", v2TIMCallback);
    }

    private final ConversationInfo typeIdToMessageType(SystemConversationMessage systemConversationMessage) {
        int messageType = systemConversationMessage.getMessageType();
        if (messageType == 1) {
            for (ConversationInfo conversationInfo : all) {
                if (Intrinsics.areEqual(conversationInfo.getConversationId(), SYSTEM_OFFICIAL)) {
                    systemConversationMessage.setMessageType(1);
                    return conversationInfo;
                }
            }
            return null;
        } else if (messageType == 2) {
            for (ConversationInfo conversationInfo2 : all) {
                if (Intrinsics.areEqual(conversationInfo2.getConversationId(), SYSTEM_FOCUSED)) {
                    systemConversationMessage.setMessageType(2);
                    return conversationInfo2;
                }
            }
            return null;
        } else if (messageType != 3) {
            return null;
        } else {
            for (ConversationInfo conversationInfo3 : all) {
                if (Intrinsics.areEqual(conversationInfo3.getConversationId(), SYSTEM_INTERACTION)) {
                    systemConversationMessage.setMessageType(3);
                    return conversationInfo3;
                }
            }
            return null;
        }
    }

    @Override // b8.d.a
    public void onLogout() {
        String[] strArr;
        all.clear();
        systemConversationList.clear();
        for (String str : array) {
            ConversationInfo conversationInfo = new ConversationInfo(3, str);
            if (Intrinsics.areEqual(str, SYSTEM_HELLO)) {
                conversationInfo.setUnreadNum(-1);
            }
            all.add(conversationInfo);
        }
        List<ConversationInfo> list = systemConversationList;
        list.addAll(all);
        checkRemove(true, null);
        systemConversations.setValue(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(@NotNull com.guochao.faceshow.aaspring.modulars.chat.models.a message) {
        List<SystemConversationMessage> mutableListOf;
        Intrinsics.checkNotNullParameter(message, "message");
        if (message instanceof SystemNotifyMessage) {
            setOfficialConversationRead();
            SystemConversationMessage systemConversationMessage = null;
            try {
                systemConversationMessage = GsonGetter.getGson().fromJson(((SystemNotifyMessage) message).getMessageContent().toString(), (Class<SystemConversationMessage>) SystemConversationMessage.class);
            } catch (Exception unused) {
            }
            if (systemConversationMessage == null) {
                return;
            }
            SystemConversationMessage systemConversationMessage2 = systemConversationMessage;
            systemConversationMessage2.setContentDate(message.getTimestamp() * 1000);
            ConversationInfo typeIdToMessageType = typeIdToMessageType(systemConversationMessage2);
            if (typeIdToMessageType != null) {
                typeIdToMessageType.setUnreadNum(typeIdToMessageType.getUnreadNum() + 1);
                typeIdToMessageType.setLastMsgTime(systemConversationMessage2.getContentDate());
                typeIdToMessageType.setSortTime(typeIdToMessageType.getLastMsgTime());
                if (Intrinsics.areEqual(typeIdToMessageType.getConversationId(), SYSTEM_OFFICIAL)) {
                    if (!Intrinsics.areEqual(((SystemNotifyMessage) message).getSender(), "-10000")) {
                        SystemConversationMessage systemConversationMessage3 = lastOfficialMessage;
                        systemConversationMessage2.setUnreadCount((systemConversationMessage3 != null ? systemConversationMessage3.getUnreadCount() : 0) + 1);
                    }
                } else {
                    systemConversationMessage2.setUnreadCount(typeIdToMessageType.getUnreadNum());
                }
            }
            Iterator<SystemConversationMessage> it = lastData.iterator();
            int i9 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i9 = -1;
                    break;
                }
                SystemConversationMessage next = it.next();
                if (next != null && systemConversationMessage2.getMessageType() == next.getMessageType()) {
                    break;
                }
                i9++;
            }
            if (i9 >= 0) {
                lastData.set(i9, systemConversationMessage);
            }
            checkRemove(false, lastData);
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(systemConversationMessage2);
            handleConversations(mutableListOf);
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* bridge */ /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Override // b8.d.a
    public void onUserChanged(@Nullable UserBean userBean, @Nullable UserBean userBean2) {
    }

    @Override // b8.d.a
    public /* bridge */ /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        b8.c.a(this, userBean, userBean2, z10, z11, z12);
    }
}
