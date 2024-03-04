package com.guochao.faceshow.aaspring.utils;

import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.List;
/* loaded from: classes3.dex */
public interface ChatView {
    void onSendMessageFail(int i9, String str, V2TIMMessage v2TIMMessage);

    void sendImage();

    void sendText();

    void sending();

    void showDraft(String str);

    void showMessage(V2TIMMessage v2TIMMessage);

    void showMessage(List<V2TIMMessage> list);

    void showToast(String str);
}
