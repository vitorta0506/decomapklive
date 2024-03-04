package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class RandomPKHearBeat {
    private UserInfo matchUserInfo;
    private String roomId;
    private int status;
    private long timestamp;

    /* loaded from: classes3.dex */
    public class UserInfo {
        private String beInviteUserId;
        private String inviteUserId;

        public UserInfo() {
        }

        public String getBeInviteUserId() {
            return this.beInviteUserId;
        }

        public String getInviteUserId() {
            return this.inviteUserId;
        }

        public void setBeInviteUserId(String str) {
            this.beInviteUserId = str;
        }

        public void setInviteUserId(String str) {
            this.inviteUserId = str;
        }
    }

    public UserInfo getMatchUserInfo() {
        return this.matchUserInfo;
    }

    public String getRoomId() {
        return this.roomId;
    }

    public int getStatus() {
        return this.status;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setMatchUserInfo(UserInfo userInfo) {
        this.matchUserInfo = userInfo;
    }

    public void setRoomId(String str) {
        this.roomId = str;
    }

    public void setStatus(int i9) {
        this.status = i9;
    }

    public void setTimestamp(long j10) {
        this.timestamp = j10;
    }
}
