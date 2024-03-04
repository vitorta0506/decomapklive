package com.tencent.imsdk.v2;

import com.tencent.imsdk.signaling.SignalingInfo;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class V2TIMSignalingInfo implements Serializable {
    public static final int SIGNALING_ACTION_TYPE_ACCEPT_INVITE = 3;
    public static final int SIGNALING_ACTION_TYPE_CANCEL_INVITE = 2;
    public static final int SIGNALING_ACTION_TYPE_INVITE = 1;
    public static final int SIGNALING_ACTION_TYPE_INVITE_TIMEOUT = 5;
    public static final int SIGNALING_ACTION_TYPE_REJECT_INVITE = 4;
    private SignalingInfo signalingInfo = new SignalingInfo();

    public int getActionType() {
        return this.signalingInfo.getActionType();
    }

    public String getData() {
        return this.signalingInfo.getData();
    }

    public String getGroupID() {
        return this.signalingInfo.getGroupID();
    }

    public String getInviteID() {
        return this.signalingInfo.getInviteID();
    }

    public List<String> getInviteeList() {
        return this.signalingInfo.getInviteeList();
    }

    public String getInviter() {
        return this.signalingInfo.getInviter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SignalingInfo getSignalingInfo() {
        return this.signalingInfo;
    }

    public int getTimeout() {
        return this.signalingInfo.getTimeout();
    }

    public void setActionType(int i9) {
        this.signalingInfo.setActionType(i9);
    }

    public void setData(String str) {
        this.signalingInfo.setData(str);
    }

    public void setGroupID(String str) {
        this.signalingInfo.setGroupID(str);
    }

    public void setInviteID(String str) {
        this.signalingInfo.setInviteID(str);
    }

    public void setInviteeList(List<String> list) {
        this.signalingInfo.setInviteeList(list);
    }

    public void setInviter(String str) {
        this.signalingInfo.setInviter(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSignalingInfo(SignalingInfo signalingInfo) {
        if (signalingInfo == null) {
            return;
        }
        this.signalingInfo = signalingInfo;
    }

    public void setTimeout(int i9) {
        this.signalingInfo.setTimeout(i9);
    }
}
