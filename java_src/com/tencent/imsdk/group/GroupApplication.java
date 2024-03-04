package com.tencent.imsdk.group;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GroupApplication implements Serializable {
    public static int REQUEST_TYPE_INVITE = 2;
    public static int REQUEST_TYPE_JOIN = 1;
    public static int RESPONSE_STATUS_HANDLED_BY_OTHER = 2;
    public static int RESPONSE_STATUS_HANDLED_BY_SELF = 3;
    public static int RESPONSE_STATUS_UNHANDLED = 1;
    public static int RESPONSE_TYPE_AGREE = 1;
    public static int RESPONSE_TYPE_REFUSE = 2;
    private int applicationType;
    private byte[] authentication;
    private String fromUserFaceUrl;
    private String fromUserID;
    private String fromUserNickName;
    private String groupID;
    private String requestMessage;
    private long requestTime;
    private String responseMessage;
    private int responseStatus;
    private int responseType;
    private String toUserFaceUrl;
    private String toUserID;
    private String toUserNickName;

    public int getApplicationType() {
        return this.applicationType;
    }

    public String getFromUserFaceUrl() {
        return this.fromUserFaceUrl;
    }

    public String getFromUserID() {
        return this.fromUserID;
    }

    public String getFromUserNickName() {
        return this.fromUserNickName;
    }

    public String getGroupID() {
        return this.groupID;
    }

    public String getRequestMessage() {
        return this.requestMessage;
    }

    public long getRequestTime() {
        return this.requestTime;
    }

    public String getResponseMessage() {
        return this.responseMessage;
    }

    public int getResponseStatus() {
        return this.responseStatus;
    }

    public int getResponseType() {
        return this.responseType;
    }

    public String getToUserFaceUrl() {
        return this.toUserFaceUrl;
    }

    public String getToUserID() {
        return this.toUserID;
    }

    public String getToUserNickName() {
        return this.toUserNickName;
    }

    public void setResponseMessage(String str) {
        this.responseMessage = str;
    }

    public void setResponseType(int i9) {
        this.responseType = i9;
    }
}
