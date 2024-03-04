package com.guochao.faceshow.aaspring.modulars.chat.models;

import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
/* loaded from: classes3.dex */
public class LiveMessage<M extends BaseLiveMessage> extends a {
    private String mGroupId;
    private LiveMessageModel<M> mModel;

    public LiveMessage(LiveMessageModel<M> liveMessageModel) {
        this.mModel = liveMessageModel;
        if (liveMessageModel == null || liveMessageModel.getData() == null || this.mModel.getData().getRoomId() == null) {
            return;
        }
        this.mGroupId = this.mModel.getData().getRoomId();
    }

    public String getGroupId() {
        return this.mGroupId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isOnlineMessage() {
        return true;
    }

    public void setGroupId(String str) {
        this.mGroupId = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean showNotification() {
        return false;
    }

    /* renamed from: getWrappedMessage */
    public LiveMessageModel<M> m354getWrappedMessage() {
        return this.mModel;
    }
}
