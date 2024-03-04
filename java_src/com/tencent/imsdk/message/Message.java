package com.tencent.imsdk.message;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class Message implements Serializable {
    public static int MESSAGE_TYPE_C2C = 1;
    public static int MESSAGE_TYPE_GROUP = 2;
    public static int MESSAGE_TYPE_MULTI_SYNC = 3;
    public static int MESSAGE_TYPE_UNKNOWN = 0;
    public static int PLATFORM_ANDROID = 2;
    public static int PLATFORM_IOS = 3;
    public static int PLATFORM_MAC = 4;
    public static int PLATFORM_OTHER = 0;
    public static int PLATFORM_SIMULATOR = 5;
    public static int PLATFORM_WINDOWS = 1;
    public static final int V2TIM_MSG_STATUS_DELETED = 4;
    public static final int V2TIM_MSG_STATUS_LOCAL_IMPORTED = 5;
    public static final int V2TIM_MSG_STATUS_REVOKED = 6;
    public static final int V2TIM_MSG_STATUS_SENDING = 1;
    public static final int V2TIM_MSG_STATUS_SEND_FAILED = 3;
    public static final int V2TIM_MSG_STATUS_SUCCESS = 2;
    private long clientTime;
    private byte[] cloudCustomBytes;
    private String faceUrl;
    private String friendRemark;
    private String groupID;
    private boolean isForward;
    private boolean isPeerRead;
    private boolean isSelfRead;
    private int localCustomNumber;
    private String localCustomString;
    private int messageStatus;
    private int messageType;
    private long messageVersion;
    private String nameCard;
    private String nickName;
    private MessageOfflinePushInfo offlinePushInfo;
    private int platform;
    private int priority;
    private long random;
    private boolean receiptPeerRead;
    private long receiverTinyID;
    private String receiverUserID;
    private long revokerTinyID;
    private String revokerUserID;
    private long senderTinyID;
    private String senderUserID;
    private long seq;
    private long serverTime;
    private String msgID = "";
    private boolean isMessageSender = true;
    private int lifeTime = -1;
    private List<MessageBaseElement> messageBaseElements = new ArrayList();
    private List<MessageAtInfo> messageGroupAtInfoList = new ArrayList();
    private boolean excludedFromUnreadCount = false;
    private boolean excludedFromLastMessage = false;
    private List<String> targetGroupMemberList = new ArrayList();
    private boolean needReadReceipt = false;
    private boolean hasSentReceipt = false;
    private int receiptReadCount = 0;
    private int receiptUnreadCount = -1;
    private boolean supportMessageExtension = false;
    private boolean isBroadcastMessage = false;

    public void addElement(MessageBaseElement messageBaseElement) {
        if (messageBaseElement == null) {
            return;
        }
        this.messageBaseElements.add(messageBaseElement);
    }

    protected void addMessageGroupAtInfo(MessageAtInfo messageAtInfo) {
        this.messageGroupAtInfoList.add(messageAtInfo);
    }

    public long getClientTime() {
        return this.clientTime;
    }

    public String getCloudCustomString() {
        byte[] bArr = this.cloudCustomBytes;
        if (bArr != null && bArr.length > 0) {
            try {
                return new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        return "";
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

    public int getLifeTime() {
        return this.lifeTime;
    }

    public int getLocalCustomNumber() {
        return this.localCustomNumber;
    }

    public String getLocalCustomString() {
        return this.localCustomString;
    }

    public List<MessageBaseElement> getMessageBaseElements() {
        return this.messageBaseElements;
    }

    public List<MessageAtInfo> getMessageGroupAtInfoList() {
        return this.messageGroupAtInfoList;
    }

    public MessageKey getMessageKey() {
        MessageKey messageKey = new MessageKey();
        messageKey.setMessageID(this.msgID);
        messageKey.setMessageType(this.messageType);
        messageKey.setIsMessageSender(this.isMessageSender);
        messageKey.setSenderUserID(this.senderUserID);
        messageKey.setSenderTinyID(this.senderTinyID);
        messageKey.setReceiverUserID(this.receiverUserID);
        messageKey.setReceiverTinyID(this.receiverTinyID);
        messageKey.setGroupID(this.groupID);
        messageKey.setClientTime(this.clientTime);
        messageKey.setServerTime(this.serverTime);
        messageKey.setSeq(this.seq);
        messageKey.setRandom(this.random);
        return messageKey;
    }

    public int getMessageStatus() {
        return this.messageStatus;
    }

    public int getMessageType() {
        return this.messageType;
    }

    public String getMsgID() {
        return this.msgID;
    }

    public String getNameCard() {
        return this.nameCard;
    }

    public String getNickName() {
        return this.nickName;
    }

    public MessageOfflinePushInfo getOfflinePushInfo() {
        return this.offlinePushInfo;
    }

    public int getPlatform() {
        return this.platform;
    }

    public int getPriority() {
        return this.priority;
    }

    public long getRandom() {
        return this.random;
    }

    public int getReceiptReadCount() {
        return this.receiptReadCount;
    }

    public int getReceiptUnreadCount() {
        return this.receiptUnreadCount;
    }

    public String getReceiverUserID() {
        return this.receiverUserID;
    }

    public String getRevokerUserID() {
        return this.revokerUserID;
    }

    public String getSenderUserID() {
        return this.senderUserID;
    }

    public long getSeq() {
        return this.seq;
    }

    public List<String> getTargetGroupMemberList() {
        return this.targetGroupMemberList;
    }

    public long getTimestamp() {
        long j10 = this.serverTime;
        return j10 > 0 ? j10 : this.clientTime;
    }

    public boolean isBroadcastMessage() {
        return this.isBroadcastMessage;
    }

    public boolean isExcludedFromLastMessage() {
        return this.excludedFromLastMessage;
    }

    public boolean isExcludedFromUnreadCount() {
        return this.excludedFromUnreadCount;
    }

    public boolean isForward() {
        return this.isForward;
    }

    public boolean isHasSentReceipt() {
        return this.hasSentReceipt;
    }

    public boolean isMessageSender() {
        return this.isMessageSender;
    }

    public boolean isNeedReadReceipt() {
        return this.needReadReceipt;
    }

    public boolean isPeerRead() {
        if (this.isPeerRead) {
            return true;
        }
        boolean isMessagePeerRead = MessageCenter.getInstance().isMessagePeerRead(getMessageKey());
        this.isPeerRead = isMessagePeerRead;
        return isMessagePeerRead;
    }

    public boolean isReceiptPeerRead() {
        return this.receiptPeerRead;
    }

    public boolean isSelfRead() {
        if (this.isSelfRead) {
            return true;
        }
        boolean isMessageSelfRead = MessageCenter.getInstance().isMessageSelfRead(getMessageKey());
        this.isSelfRead = isMessageSelfRead;
        return isMessageSelfRead;
    }

    public boolean isSupportMessageExtension() {
        return this.supportMessageExtension;
    }

    public void setClientTime(long j10) {
        this.clientTime = j10;
    }

    public void setCloudCustomString(String str) {
        if (str == null) {
            str = "";
        }
        try {
            this.cloudCustomBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setExcludedFromLastMessage(boolean z10) {
        this.excludedFromLastMessage = z10;
    }

    public void setExcludedFromUnreadCount(boolean z10) {
        this.excludedFromUnreadCount = z10;
    }

    public void setForward(boolean z10) {
        this.isForward = z10;
    }

    public void setGroupID(String str) {
        this.groupID = str;
    }

    public void setHasSentReceipt(boolean z10) {
        this.hasSentReceipt = z10;
    }

    public void setIsMessageSender(boolean z10) {
        this.isMessageSender = z10;
    }

    public void setLifeTime(int i9) {
        this.lifeTime = i9;
    }

    public void setLocalCustomNumber(int i9) {
        this.localCustomNumber = i9;
        MessageCenter.getInstance().setLocalCustomNumber(this, i9);
    }

    public void setLocalCustomString(String str) {
        this.localCustomString = str;
        MessageCenter.getInstance().setLocalCustomString(this, str);
    }

    public void setMessageBaseElements(List<MessageBaseElement> list) {
        this.messageBaseElements = list;
    }

    public void setMessageGroupAtInfoList(List<MessageAtInfo> list) {
        this.messageGroupAtInfoList = list;
    }

    public void setMessageStatus(int i9) {
        this.messageStatus = i9;
    }

    public void setMessageType(int i9) {
        this.messageType = i9;
    }

    public void setNeedReadReceipt(boolean z10) {
        this.needReadReceipt = z10;
    }

    public void setOfflinePushInfo(MessageOfflinePushInfo messageOfflinePushInfo) {
        this.offlinePushInfo = messageOfflinePushInfo;
    }

    public void setPlatform(int i9) {
        this.platform = i9;
    }

    public void setPriority(int i9) {
        this.priority = i9;
    }

    public void setReceiptReadCount(int i9) {
        this.receiptReadCount = i9;
    }

    public void setReceiptUnreadCount(int i9) {
        this.receiptUnreadCount = i9;
    }

    public void setReceiverUserID(String str) {
        this.receiverUserID = str;
    }

    public void setSenderUserID(String str) {
        this.senderUserID = str;
    }

    public void setSupportMessageExtension(boolean z10) {
        this.supportMessageExtension = z10;
    }

    public void setTargetGroupMemberList(List<String> list) {
        this.targetGroupMemberList = list;
    }

    public void update(Message message) {
        this.msgID = message.msgID;
        this.messageType = message.messageType;
        this.isMessageSender = message.isMessageSender;
        this.senderUserID = message.senderUserID;
        this.senderTinyID = message.senderTinyID;
        this.receiverUserID = message.receiverUserID;
        this.receiverTinyID = message.receiverTinyID;
        this.groupID = message.groupID;
        this.clientTime = message.clientTime;
        this.serverTime = message.serverTime;
        this.seq = message.seq;
        this.random = message.random;
        this.messageStatus = message.messageStatus;
        for (MessageBaseElement messageBaseElement : this.messageBaseElements) {
            Iterator<MessageBaseElement> it = message.messageBaseElements.iterator();
            while (it.hasNext() && !messageBaseElement.update(it.next())) {
            }
        }
    }
}
