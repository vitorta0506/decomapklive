package com.guochao.faceshow.base;

import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.ChatView;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class ChatImplBaseAct extends BaseActivity implements ChatView {
    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void onSendMessageFail(int i9, String str, V2TIMMessage v2TIMMessage) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void sendImage() {
    }

    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void sendText() {
    }

    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void sending() {
    }

    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void showDraft(String str) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void showMessage(V2TIMMessage v2TIMMessage) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void showMessage(List<V2TIMMessage> list) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.ChatView
    public void showToast(String str) {
    }
}
