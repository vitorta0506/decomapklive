package com.tencent.imsdk.conversation;

import com.tencent.imsdk.message.DraftMessage;
import com.tencent.imsdk.message.Message;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class Conversation implements Serializable {
    private static final int CONVERSATION_TYPE_C2C = 1;
    private static final int CONVERSATION_TYPE_GROUP = 2;
    private String c2cFaceUrl;
    private String c2cNickname;
    private long c2cReadTimestamp;
    private long c2cReceiptTimestamp;
    private String c2cRemark;
    private String c2cUserID;
    private ConversationKey conversationKey;
    private int conversationType;
    private String customData;
    private DraftMessage draftMessage;
    private String groupFaceUrl;
    private String groupID;
    private long groupLastSequence;
    private int groupMessageReceiveOption;
    private String groupName;
    private long groupReadSequence;
    private long groupRevokeTimestamp;
    private String groupType;
    private Message lastMessage;
    private long orderKey;
    private long unreadMessageCount;
    private int userMessageReceiveOption;
    private List<ConversationAtInfo> conversationAtInfoList = new ArrayList();
    private boolean pinned = false;
    private List<Long> markList = new ArrayList();
    private List<String> conversationGroupList = new ArrayList();

    protected void addConversationAtInfoList(ConversationAtInfo conversationAtInfo) {
        this.conversationAtInfoList.add(conversationAtInfo);
    }

    protected void addConversationGroup(String str) {
        this.conversationGroupList.add(str);
    }

    protected void addMarkType(long j10) {
        this.markList.add(Long.valueOf(j10));
    }

    public String getC2cFaceUrl() {
        return this.c2cFaceUrl;
    }

    public String getC2cNickname() {
        return this.c2cNickname;
    }

    public long getC2cReadTimestamp() {
        return this.c2cReadTimestamp;
    }

    public long getC2cReceiptTimestamp() {
        return this.c2cReceiptTimestamp;
    }

    public String getC2cRemark() {
        return this.c2cRemark;
    }

    public String getC2cUserID() {
        return this.c2cUserID;
    }

    public List<ConversationAtInfo> getConversationAtInfoList() {
        return this.conversationAtInfoList;
    }

    public List<String> getConversationGroupList() {
        return this.conversationGroupList;
    }

    public ConversationKey getConversationKey() {
        ConversationKey conversationKey = new ConversationKey();
        conversationKey.setConversationType(this.conversationType);
        int i9 = this.conversationType;
        if (1 == i9) {
            conversationKey.setConversationID(this.c2cUserID);
        } else if (2 == i9) {
            conversationKey.setConversationID(this.groupID);
        }
        return conversationKey;
    }

    public int getConversationType() {
        return this.conversationType;
    }

    public String getCustomData() {
        return this.customData;
    }

    public DraftMessage getDraftMessage() {
        return this.draftMessage;
    }

    public String getGroupFaceUrl() {
        return this.groupFaceUrl;
    }

    public String getGroupID() {
        return this.groupID;
    }

    public long getGroupLastSequence() {
        return this.groupLastSequence;
    }

    public int getGroupMessageReceiveOption() {
        return this.groupMessageReceiveOption;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public long getGroupReadSequence() {
        return this.groupReadSequence;
    }

    public long getGroupRevokeTimestamp() {
        return this.groupRevokeTimestamp;
    }

    public String getGroupType() {
        return this.groupType;
    }

    public Message getLastMessage() {
        return this.lastMessage;
    }

    public List<Long> getMarkList() {
        return this.markList;
    }

    public long getOrderKey() {
        return this.orderKey;
    }

    public long getUnreadMessageCount() {
        return this.unreadMessageCount;
    }

    public int getUserMessageReceiveOption() {
        return this.userMessageReceiveOption;
    }

    public boolean isPinned() {
        return this.pinned;
    }

    public void setPinned(boolean z10) {
        this.pinned = z10;
    }
}
