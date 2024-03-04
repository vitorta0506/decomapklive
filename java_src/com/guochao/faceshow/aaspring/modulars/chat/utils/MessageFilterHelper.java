package com.guochao.faceshow.aaspring.modulars.chat.utils;

import com.guochao.faceshow.aaspring.modulars.chat.models.CustomMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.FaceMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.InputtingMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TrtcTextMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCSignalMessage;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ8\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002H\u0007¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;", "", "", "Lcom/tencent/imsdk/v2/V2TIMMessage;", "list", "", "chatUserId", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "totalList", "", "filterMessage", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MessageFilterHelper {
    @NotNull
    public static final MessageFilterHelper INSTANCE = new MessageFilterHelper();

    private MessageFilterHelper() {
    }

    @JvmStatic
    @NotNull
    public static final List<com.guochao.faceshow.aaspring.modulars.chat.models.a> filterMessage(@Nullable List<V2TIMMessage> list, @Nullable String str, @Nullable List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list2) {
        boolean z10;
        if (list == null) {
            return new ArrayList();
        }
        if (list2 == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<V2TIMMessage> it = list.iterator();
        while (it.hasNext()) {
            V2TIMMessage next = it.next();
            com.guochao.faceshow.aaspring.modulars.chat.models.a k10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.k(next);
            if (!next.isSelf()) {
                if (Intrinsics.areEqual(next.getSender(), str)) {
                    if (k10 == null && k10.getStatus() != 4) {
                        if (k10.isOnlineMessage()) {
                            it.remove();
                        } else {
                            if (k10.isSelf() && (k10 instanceof TextMessage)) {
                                TextMessage textMessage = (TextMessage) k10;
                                if (textMessage.isOneDay() || textMessage.isSayHi()) {
                                    it.remove();
                                }
                            }
                            if (k10.isSelf() && (k10 instanceof FaceMessage) && ((FaceMessage) k10).isSayHi()) {
                                it.remove();
                            } else {
                                if (k10 instanceof CustomMessage) {
                                    CustomMessage customMessage = (CustomMessage) k10;
                                    if (customMessage.getType() == CustomMessage.Type.TYPING || customMessage.getType() == CustomMessage.Type.INVALID) {
                                        it.remove();
                                    }
                                }
                                if (!(k10 instanceof InputtingMessage) && !(k10 instanceof TrtcTextMessage)) {
                                    if (k10 instanceof TRTCSignalMessage) {
                                        it.remove();
                                    } else if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().x(k10.message, false)) {
                                        it.remove();
                                    } else {
                                        int size = list2.size();
                                        int i9 = 0;
                                        while (true) {
                                            if (i9 < size) {
                                                com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = list2.get(i9);
                                                if (aVar != null) {
                                                    if (Intrinsics.areEqual(next.getMsgID(), aVar.message.getMsgID())) {
                                                        it.remove();
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                    if (z10) {
                                                        break;
                                                    }
                                                }
                                                i9++;
                                            } else {
                                                arrayList.add(k10);
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    it.remove();
                                }
                            }
                        }
                    } else {
                        it.remove();
                    }
                }
            } else if (Intrinsics.areEqual(next.getUserID(), str)) {
                if (k10 == null) {
                }
                it.remove();
            }
        }
        if (arrayList.size() > 0) {
            CollectionsKt___CollectionsJvmKt.reverse(arrayList);
        }
        return arrayList;
    }
}
