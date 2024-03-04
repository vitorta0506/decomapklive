package com.guochao.faceshow.aaspring.modulars.live.model;
/* loaded from: classes3.dex */
public class PkResult {
    private AnchorMsgBean leftAnchorMsg;
    private long remainTime = 0;
    private AnchorMsgBean rightAnchorMsg;

    /* loaded from: classes3.dex */
    public static class AnchorMsgBean {
        private String isWin;
        private String pkEarnings;
        private String userId;

        public String getIsWin() {
            return this.isWin;
        }

        public String getPkEarnings() {
            return this.pkEarnings;
        }

        public String getUserId() {
            return this.userId;
        }

        public void setIsWin(String str) {
            this.isWin = str;
        }

        public void setPkEarnings(String str) {
            this.pkEarnings = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }
    }

    public AnchorMsgBean getLeftAnchorMsg() {
        return this.leftAnchorMsg;
    }

    public long getRemainTime() {
        return this.remainTime;
    }

    public AnchorMsgBean getRightAnchorMsg() {
        return this.rightAnchorMsg;
    }

    public void setLeftAnchorMsg(AnchorMsgBean anchorMsgBean) {
        this.leftAnchorMsg = anchorMsgBean;
    }

    public void setRemainTime(long j10) {
        this.remainTime = j10;
    }

    public void setRightAnchorMsg(AnchorMsgBean anchorMsgBean) {
        this.rightAnchorMsg = anchorMsgBean;
    }
}
