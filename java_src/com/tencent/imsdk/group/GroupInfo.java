package com.tencent.imsdk.group;

import android.text.TextUtils;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class GroupInfo implements Serializable {
    public static int GROUP_ADD_OPTION_ALLOW_ANY = 3;
    public static int GROUP_ADD_OPTION_FORBID_ANY = 1;
    public static int GROUP_ADD_OPTION_NEED_AUTHENTICATION = 2;
    public static long GROUP_INFO_MODIFY_FLAG_ADD_OPTION = 16;
    public static long GROUP_INFO_MODIFY_FLAG_CUSTOM_INFO = 512;
    public static long GROUP_INFO_MODIFY_FLAG_FACE_URL = 8;
    public static long GROUP_INFO_MODIFY_FLAG_GROUP_SEARCHABLE = 128;
    public static long GROUP_INFO_MODIFY_FLAG_INTRODUCTION = 4;
    public static long GROUP_INFO_MODIFY_FLAG_MAX_MEMBER_NUM = 32;
    public static long GROUP_INFO_MODIFY_FLAG_MEMBER_VISIBLE = 64;
    public static long GROUP_INFO_MODIFY_FLAG_NAME = 1;
    public static long GROUP_INFO_MODIFY_FLAG_NONE = 0;
    public static long GROUP_INFO_MODIFY_FLAG_NOTIFICATION = 2;
    public static long GROUP_INFO_MODIFY_FLAG_SHUTUP_ALL = 256;
    public static long TOPIC_INFO_MODIFY_FLAG_CUSTOM_STRING = 2048;
    private int addOption;
    private String communityID;
    private long createTime;
    private String customString;
    private String faceUrl;
    private String groupID;
    private long groupInfoTimestamp;
    private byte[] groupNameBytes;
    private String groupType;
    private byte[] introductionBytes;
    private boolean isAllShutUp;
    private boolean isGroupMemberVisible;
    private boolean isGroupSearchable;
    private long lastMessageTimestamp;
    private long memberCount;
    private long memberMaxCount;
    private long memberOnlineCount;
    private byte[] notificationBytes;
    private String ownerUserID;
    private boolean supportTopic;
    private Map<String, byte[]> customInfo = new HashMap();
    private GroupMemberInfo groupSelfInfo = new GroupMemberInfo();

    public int getAddOption() {
        return this.addOption;
    }

    public String getCommunityID() {
        return this.communityID;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public Map<String, byte[]> getCustomInfo() {
        return this.customInfo;
    }

    public String getCustomString() {
        return this.customString;
    }

    public String getFaceUrl() {
        return this.faceUrl;
    }

    public String getGroupID() {
        return this.groupID;
    }

    public long getGroupInfoTimestamp() {
        return this.groupInfoTimestamp;
    }

    public String getGroupName() {
        byte[] bArr = this.groupNameBytes;
        if (bArr != null && bArr.length > 0) {
            try {
                return new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        return "";
    }

    public GroupMemberInfo getGroupSelfInfo() {
        return this.groupSelfInfo;
    }

    public String getGroupType() {
        return this.groupType;
    }

    public String getIntroduction() {
        byte[] bArr = this.introductionBytes;
        if (bArr != null && bArr.length > 0) {
            try {
                return new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        return "";
    }

    public long getLastMessageTimestamp() {
        return this.lastMessageTimestamp;
    }

    public long getMemberCount() {
        return this.memberCount;
    }

    public long getMemberMaxCount() {
        return this.memberMaxCount;
    }

    public long getMemberOnlineCount() {
        return this.memberOnlineCount;
    }

    public String getNotification() {
        byte[] bArr = this.notificationBytes;
        if (bArr != null && bArr.length > 0) {
            try {
                return new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        return "";
    }

    public String getOwnerUserID() {
        return this.ownerUserID;
    }

    public boolean isAllShutUp() {
        return this.isAllShutUp;
    }

    public boolean isGroupMemberVisible() {
        return this.isGroupMemberVisible;
    }

    public boolean isGroupSearchable() {
        return this.isGroupSearchable;
    }

    public boolean isSupportTopic() {
        return this.supportTopic;
    }

    public void setAddOption(int i9) {
        this.addOption = i9;
    }

    public void setAllShutUp(boolean z10) {
        this.isAllShutUp = z10;
    }

    public void setCommunityID(String str) {
        this.communityID = str;
    }

    public void setCreateTime(long j10) {
        this.createTime = j10;
    }

    public void setCustomInfo(Map<String, byte[]> map) {
        this.customInfo = map;
    }

    public void setCustomString(String str) {
        this.customString = str;
    }

    public void setFaceUrl(String str) {
        this.faceUrl = str;
    }

    public void setGroupID(String str) {
        this.groupID = str;
    }

    public void setGroupInfoTimestamp(long j10) {
        this.groupInfoTimestamp = j10;
    }

    public void setGroupMemberVisible(boolean z10) {
        this.isGroupMemberVisible = z10;
    }

    public void setGroupName(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.groupNameBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setGroupSearchable(boolean z10) {
        this.isGroupSearchable = z10;
    }

    public void setGroupSelfInfo(GroupMemberInfo groupMemberInfo) {
        this.groupSelfInfo = groupMemberInfo;
    }

    public void setGroupType(String str) {
        this.groupType = str;
    }

    public void setIntroduction(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.introductionBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setLastMessageTimestamp(long j10) {
        this.lastMessageTimestamp = j10;
    }

    public void setMemberCount(long j10) {
        this.memberCount = j10;
    }

    public void setMemberMaxCount(long j10) {
        this.memberMaxCount = j10;
    }

    public void setMemberOnlineCount(long j10) {
        this.memberOnlineCount = j10;
    }

    public void setNotification(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.notificationBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setOwnerUserID(String str) {
        this.ownerUserID = str;
    }

    public void setSupportTopic(boolean z10) {
        this.supportTopic = z10;
    }
}
