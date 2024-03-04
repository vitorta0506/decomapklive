package com.guochao.faceshow.aaspring.modulars.chat.utils;

import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.modulars.cardvideo.SuperLikeNotificationManager;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static List<a> f17263a = new ArrayList();

    /* loaded from: classes3.dex */
    public interface a {
        void a(ConversationInfo conversationInfo);
    }

    public static void a(SuperLikeNotificationManager.SuperLikeInfo superLikeInfo) {
        if (BaseConfig.isChinese()) {
            com.guochao.faceshow.aaspring.manager.b.f(NativeProtocol.AUDIENCE_FRIENDS, "whoLikeMeDelete" + b8.e.g().getUserId(), Boolean.FALSE);
            ConversationInfo conversationInfo = new ConversationInfo(3, "who_like_me");
            ConversationInfoDetail conversationInfoDetail = new ConversationInfoDetail();
            conversationInfoDetail.setUserId("who_like_me");
            conversationInfoDetail.setAvatar(superLikeInfo.img);
            conversationInfoDetail.setCount(1);
            conversationInfo.setConversationInfoDetail(conversationInfoDetail);
            for (a aVar : f17263a) {
                if (aVar != null) {
                    aVar.a(conversationInfo);
                }
            }
        }
    }

    public static void registerProvider(a aVar) {
        if (f17263a.contains(aVar)) {
            return;
        }
        f17263a.add(aVar);
    }

    public static void unRegisterProvider(a aVar) {
        f17263a.remove(aVar);
    }
}
