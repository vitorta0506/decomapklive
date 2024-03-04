package com.tencent.imsdk.group;

import android.text.TextUtils;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class GroupMemberInfo implements Serializable {
    public static int GROUP_MEMBER_FILTER_FLAG_ADMINISTRATOR = 3;
    public static int GROUP_MEMBER_FILTER_FLAG_ALL = 1;
    public static int GROUP_MEMBER_FILTER_FLAG_MEMBER = 4;
    public static int GROUP_MEMBER_FILTER_FLAG_OWNER = 2;
    public static long GROUP_MEMBER_INFO_MODIFY_FLAG_CUSTOM_INFO = 16;
    public static long GROUP_MEMBER_INFO_MODIFY_FLAG_MEMBER_ROLE = 2;
    public static long GROUP_MEMBER_INFO_MODIFY_FLAG_MESSAGE_RECEIVE_FLAG = 1;
    public static long GROUP_MEMBER_INFO_MODIFY_FLAG_NAME_CARD = 8;
    public static long GROUP_MEMBER_INFO_MODIFY_FLAG_NONE = 0;
    public static long GROUP_MEMBER_INFO_MODIFY_FLAG_SHUTUP_TIME = 4;
    public static int MEMBER_ROLE_ADMINISTRATOR = 300;
    public static int MEMBER_ROLE_MEMBER = 200;
    public static int MEMBER_ROLE_OWNER = 400;
    public static int MESSAGE_RECEIVE_OPTION_AUTO_RECEIVE = 1;
    public static int MESSAGE_RECEIVE_OPTION_NOT_RECEIVE = 2;
    public static int MESSAGE_RECEIVE_OPTION_RECEIVE_WITH_NO_OFFLINE_PUSH = 3;
    private Map<String, byte[]> customInfo = new HashMap();
    private String faceUrl;
    private String friendRemark;
    private String groupID;
    private long joinTime;
    private long messageReadSequence;
    private int messageReceiveOption;
    private byte[] nameCardBytes;
    private String nickname;
    private int role;
    private long shutUpTime;
    private String userID;

    private void addCustomInfo(String str, byte[] bArr) {
        this.customInfo.put(str, bArr);
    }

    public Map<String, byte[]> getCustomInfo() {
        return this.customInfo;
    }

    public String getFaceUrl() {
        return this.faceUrl;
    }

    public String getFriendRemark() {
        return this.friendRemark;
    }

    public String getGroupID() {
        return this.groupID;
    }

    public long getJoinTime() {
        return this.joinTime;
    }

    public long getMessageReadSequence() {
        return this.messageReadSequence;
    }

    public int getMessageReceiveOption() {
        return this.messageReceiveOption;
    }

    public String getNameCard() {
        byte[] bArr = this.nameCardBytes;
        if (bArr != null && bArr.length > 0) {
            try {
                return new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        return "";
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getRole() {
        return this.role;
    }

    public long getShutUpTime() {
        return this.shutUpTime;
    }

    public String getUserID() {
        return this.userID;
    }

    public void setCustomInfo(Map<String, byte[]> map) {
        this.customInfo = map;
    }

    public void setFaceUrl(String str) {
        this.faceUrl = str;
    }

    public void setFriendRemark(String str) {
        this.friendRemark = str;
    }

    public void setGroupID(String str) {
        this.groupID = str;
    }

    public void setJoinTime(long j10) {
        this.joinTime = j10;
    }

    public void setMessageReadSequence(long j10) {
        this.messageReadSequence = j10;
    }

    public void setMessageReceiveOption(int i9) {
        this.messageReceiveOption = i9;
    }

    public void setNameCard(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.nameCardBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setRole(int i9) {
        this.role = i9;
    }

    public void setShutUpTime(long j10) {
        this.shutUpTime = j10;
    }

    public void setUserID(String str) {
        this.userID = str;
    }
}
