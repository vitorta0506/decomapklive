package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class BlackResponse {
    private String ActionStatus;
    private int ErrorCode;
    private String ErrorDisplay;
    private String ErrorInfo;
    private List<ResultItemBean> ResultItem;

    /* loaded from: classes3.dex */
    public static class ResultItemBean {
        private int ResultCode;
        private String ResultInfo;
        private String To_Account;

        public int getResultCode() {
            return this.ResultCode;
        }

        public String getResultInfo() {
            return this.ResultInfo;
        }

        public String getTo_Account() {
            return this.To_Account;
        }

        public void setResultCode(int i9) {
            this.ResultCode = i9;
        }

        public void setResultInfo(String str) {
            this.ResultInfo = str;
        }

        public void setTo_Account(String str) {
            this.To_Account = str;
        }
    }

    public String getActionStatus() {
        return this.ActionStatus;
    }

    public int getErrorCode() {
        return this.ErrorCode;
    }

    public String getErrorDisplay() {
        return this.ErrorDisplay;
    }

    public String getErrorInfo() {
        return this.ErrorInfo;
    }

    public List<ResultItemBean> getResultItem() {
        return this.ResultItem;
    }

    public void setActionStatus(String str) {
        this.ActionStatus = str;
    }

    public void setErrorCode(int i9) {
        this.ErrorCode = i9;
    }

    public void setErrorDisplay(String str) {
        this.ErrorDisplay = str;
    }

    public void setErrorInfo(String str) {
        this.ErrorInfo = str;
    }

    public void setResultItem(List<ResultItemBean> list) {
        this.ResultItem = list;
    }
}
