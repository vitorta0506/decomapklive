package com.guochao.faceshow.aaspring.manager.im;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.tencent.imsdk.v2.V2TIMMessage;
/* loaded from: classes3.dex */
public interface d {

    /* loaded from: classes3.dex */
    public interface a {
        void onNewMessage(@NonNull com.guochao.faceshow.aaspring.modulars.chat.models.a aVar);

        void onRecvMessageRevoked(String str);
    }

    /* loaded from: classes3.dex */
    public interface b<T> {
        void a(@Nullable T t10);
    }

    @NonNull
    ConversationInfo b(@NonNull String str);

    void e(@NonNull ConversationInfo conversationInfo, @Nullable V2TIMMessage v2TIMMessage);
}
