package com.guochao.faceshow.aaspring.beans;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3.dex */
public class UploadUgcImageResponse {
    private int code;
    private String msg;
    private ResultBean result;

    /* loaded from: classes3.dex */
    public static class ResultBean {
        @SerializedName("smallImgUrl")
        private String smallImgUrl;
        @SerializedName("bigImgUrl")
        private String url;

        public String getSmallImgUrl() {
            return this.smallImgUrl;
        }

        public String getUrl() {
            return this.url;
        }

        public void setSmallImgUrl(String str) {
            this.smallImgUrl = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public void setCode(int i9) {
        this.code = i9;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }
}
