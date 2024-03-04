package com.tencent.imsdk.v2;

import com.tencent.imsdk.message.MessageOfflinePushInfo;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class V2TIMOfflinePushInfo implements Serializable {
    public static final String IOS_OFFLINE_PUSH_DEFAULT_SOUND = "default";
    public static final String IOS_OFFLINE_PUSH_NO_SOUND = "push.no_sound";
    public static final int IOS_OFFLINE_PUSH_TYPE_APNS = 0;
    public static final int IOS_OFFLINE_PUSH_TYPE_VOIP = 1;
    private MessageOfflinePushInfo messageOfflinePushInfo = new MessageOfflinePushInfo();

    public void disablePush(boolean z10) {
        if (z10) {
            this.messageOfflinePushInfo.setPushFlag(1);
        } else {
            this.messageOfflinePushInfo.setPushFlag(0);
        }
    }

    public String getDesc() {
        return this.messageOfflinePushInfo.getDescription();
    }

    public byte[] getExt() {
        return this.messageOfflinePushInfo.getExtension();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageOfflinePushInfo getMessageOfflinePushInfo() {
        return this.messageOfflinePushInfo;
    }

    public String getTitle() {
        return this.messageOfflinePushInfo.getTitle();
    }

    public boolean isDisablePush() {
        return this.messageOfflinePushInfo.getPushFlag() == 1;
    }

    public void setAndroidOPPOChannelID(String str) {
        this.messageOfflinePushInfo.getAndroidConfig().setOppoChannelID(str);
    }

    public void setAndroidSound(String str) {
        this.messageOfflinePushInfo.getAndroidConfig().setSoundFilePath(str);
    }

    public void setAndroidVIVOClassification(int i9) {
        this.messageOfflinePushInfo.getAndroidConfig().setVivoClassification(i9);
    }

    public void setDesc(String str) {
        this.messageOfflinePushInfo.setDescription(str);
    }

    public void setExt(byte[] bArr) {
        this.messageOfflinePushInfo.setExtension(bArr);
    }

    public void setIOSPushType(int i9) {
        this.messageOfflinePushInfo.getApnsConfig().setIOSPushType(i9);
    }

    public void setIOSSound(String str) {
        this.messageOfflinePushInfo.getApnsConfig().setSoundFilePath(str);
    }

    public void setIgnoreIOSBadge(boolean z10) {
        if (z10) {
            this.messageOfflinePushInfo.getApnsConfig().setBadgeMode(1);
        } else {
            this.messageOfflinePushInfo.getApnsConfig().setBadgeMode(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMessageOfflinePushInfo(MessageOfflinePushInfo messageOfflinePushInfo) {
        if (messageOfflinePushInfo == null) {
            messageOfflinePushInfo = new MessageOfflinePushInfo();
        }
        this.messageOfflinePushInfo = messageOfflinePushInfo;
    }

    public void setTitle(String str) {
        this.messageOfflinePushInfo.setTitle(str);
    }
}
