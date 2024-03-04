package com.guochao.faceshow.aaspring.manager.im;

import android.app.PendingIntent;
import android.content.Intent;
import android.text.TextUtils;
import androidx.core.app.NotificationManagerCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCVideoCustomMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCVoiceCustomMessage;
import com.guochao.faceshow.aaspring.utils.PushNotificationUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Foreground;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\u0007\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0007J\b\u0010\b\u001a\u00020\u0002H\u0007R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR&\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;", "", "", "init", "", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "messages", "push", "cancelAll", "Landroidx/core/app/NotificationManagerCompat;", "manager", "Landroidx/core/app/NotificationManagerCompat;", "", "", "", "", "cachedIds", "Ljava/util/Map;", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class IMPushNotificationManager {
    @NotNull
    public static final IMPushNotificationManager INSTANCE = new IMPushNotificationManager();
    @NotNull
    private static final NotificationManagerCompat manager = PushNotificationUtils.getManager$app_GooglePlayRelease();
    @NotNull
    private static final Map<String, List<Integer>> cachedIds = new HashMap();

    private IMPushNotificationManager() {
    }

    @JvmStatic
    public static final void cancelAll() {
        Set<Map.Entry<String, List<Integer>>> entrySet = cachedIds.entrySet();
        if (!entrySet.isEmpty()) {
            for (Map.Entry<String, List<Integer>> entry : entrySet) {
                String key = entry.getKey();
                List<Integer> value = entry.getValue();
                int size = value.size();
                for (int i9 = 0; i9 < size; i9++) {
                    manager.cancel(key, value.get(i9).intValue());
                }
            }
        }
        cachedIds.clear();
    }

    @JvmStatic
    public static final void init() {
    }

    @JvmStatic
    public static final void push(@NotNull List<? extends com.guochao.faceshow.aaspring.modulars.chat.models.a> messages) {
        ConversationInfo b10;
        Intrinsics.checkNotNullParameter(messages, "messages");
        if (Foreground.get().isForeground()) {
            return;
        }
        BaseApplication baseApplication = BaseApplication.getInstance();
        int size = messages.size();
        for (int i9 = 0; i9 < size; i9++) {
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = messages.get(i9);
            if (aVar != null && aVar.message != null && aVar.showNotification()) {
                V2TIMMessage v2TIMMessage = aVar.message;
                if (!com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().x(v2TIMMessage, true) && !TextUtils.isEmpty(v2TIMMessage.getSender()) && (b10 = b.l0().b(v2TIMMessage.getSender())) != null && b10.getSilent() != 1) {
                    String offlinePushSummary = aVar instanceof TRTCVoiceCustomMessage ? ((TRTCVoiceCustomMessage) aVar).getOfflinePushSummary(BaseApplication.getInstance()) : null;
                    if (aVar instanceof TRTCVideoCustomMessage) {
                        offlinePushSummary = ((TRTCVideoCustomMessage) aVar).getOfflinePushSummary(BaseApplication.getInstance());
                    }
                    int hash = Objects.hash(v2TIMMessage.getMsgID());
                    Intent putExtra = new Intent(baseApplication, ChatActivity.class).putExtra(Contants.USER_ID, v2TIMMessage.getSender());
                    Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(context, ChatActi…\"userId\", message.sender)");
                    if (b10.getConversationInfoDetail() != null) {
                        ConversationInfoDetail conversationInfoDetail = b10.getConversationInfoDetail();
                        putExtra.putExtra("name", conversationInfoDetail != null ? conversationInfoDetail.getNickName() : null);
                    }
                    String tag = v2TIMMessage.getSender();
                    putExtra.putExtra("type", 1).addFlags(603979776);
                    PendingIntent activity = PendingIntent.getActivity(baseApplication, hash, putExtra, DensityUtil.getNotificationFlag());
                    Map<String, List<Integer>> map = cachedIds;
                    List<Integer> list = map.get(tag);
                    if (list == null) {
                        list = new ArrayList<>();
                        Intrinsics.checkNotNullExpressionValue(tag, "tag");
                        map.put(tag, list);
                    }
                    list.add(Integer.valueOf(hash));
                    String nickName = v2TIMMessage.getNickName();
                    Intrinsics.checkNotNullExpressionValue(nickName, "message.nickName");
                    if (TextUtils.isEmpty(offlinePushSummary)) {
                        offlinePushSummary = aVar.getSummary();
                    }
                    PushNotificationUtils.showNotification$default(nickName, offlinePushSummary, activity, "99", hash, tag, b10.getConversationInfoDetail() != null ? b10.getConversationInfoDetail().getAvatarUrl() : null, null, null, 2, 384, null);
                }
            }
        }
    }
}
