package com.tencent.imsdk.v2;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.tencent.imsdk.manager.BaseManager;
import com.tencent.imsdk.message.CustomElement;
import com.tencent.imsdk.message.FaceElement;
import com.tencent.imsdk.message.FileElement;
import com.tencent.imsdk.message.GroupTipsElement;
import com.tencent.imsdk.message.ImageElement;
import com.tencent.imsdk.message.LocationElement;
import com.tencent.imsdk.message.MergerElement;
import com.tencent.imsdk.message.Message;
import com.tencent.imsdk.message.MessageAtInfo;
import com.tencent.imsdk.message.MessageBaseElement;
import com.tencent.imsdk.message.MessageOfflinePushInfo;
import com.tencent.imsdk.message.SoundElement;
import com.tencent.imsdk.message.TextElement;
import com.tencent.imsdk.message.VideoElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class V2TIMMessage implements Serializable {
    public static final int V2TIM_ELEM_TYPE_CUSTOM = 2;
    public static final int V2TIM_ELEM_TYPE_FACE = 8;
    public static final int V2TIM_ELEM_TYPE_FILE = 6;
    public static final int V2TIM_ELEM_TYPE_GROUP_TIPS = 9;
    public static final int V2TIM_ELEM_TYPE_IMAGE = 3;
    public static final int V2TIM_ELEM_TYPE_LOCATION = 7;
    public static final int V2TIM_ELEM_TYPE_MERGER = 10;
    public static final int V2TIM_ELEM_TYPE_NONE = 0;
    public static final int V2TIM_ELEM_TYPE_SOUND = 4;
    public static final int V2TIM_ELEM_TYPE_TEXT = 1;
    public static final int V2TIM_ELEM_TYPE_VIDEO = 5;
    public static final int V2TIM_GROUP_MESSAGE_READ_MEMBERS_FILTER_READ = 0;
    public static final int V2TIM_GROUP_MESSAGE_READ_MEMBERS_FILTER_UNREAD = 1;
    public static final int V2TIM_MSG_STATUS_HAS_DELETED = 4;
    public static final int V2TIM_MSG_STATUS_LOCAL_IMPORTED = 5;
    public static final int V2TIM_MSG_STATUS_LOCAL_REVOKED = 6;
    public static final int V2TIM_MSG_STATUS_SENDING = 1;
    public static final int V2TIM_MSG_STATUS_SEND_FAIL = 3;
    public static final int V2TIM_MSG_STATUS_SEND_SUCC = 2;
    public static final int V2TIM_NOT_RECEIVE_MESSAGE = 1;
    public static final int V2TIM_PRIORITY_DEFAULT = 0;
    public static final int V2TIM_PRIORITY_HIGH = 1;
    public static final int V2TIM_PRIORITY_LOW = 3;
    public static final int V2TIM_PRIORITY_NORMAL = 2;
    public static final int V2TIM_RECEIVE_MESSAGE = 0;
    public static final int V2TIM_RECEIVE_NOT_NOTIFY_MESSAGE = 2;
    private Message message;

    public V2TIMMessage() {
        Message message = new Message();
        this.message = message;
        message.setClientTime(BaseManager.getInstance().getServerTime());
    }

    public String getCloudCustomData() {
        Message message = this.message;
        return message == null ? "" : message.getCloudCustomString();
    }

    public V2TIMCustomElem getCustomElem() {
        if (getElemType() != 0 && getElemType() == 2) {
            V2TIMCustomElem v2TIMCustomElem = new V2TIMCustomElem();
            v2TIMCustomElem.setMessage(this.message);
            v2TIMCustomElem.setElemIndex(0);
            return v2TIMCustomElem;
        }
        return null;
    }

    public int getElemType() {
        Message message = this.message;
        if (message != null && message.getMessageBaseElements().size() > 0) {
            MessageBaseElement messageBaseElement = this.message.getMessageBaseElements().get(0);
            if (messageBaseElement instanceof TextElement) {
                return 1;
            }
            if (messageBaseElement instanceof ImageElement) {
                return 3;
            }
            if (messageBaseElement instanceof VideoElement) {
                return 5;
            }
            if (messageBaseElement instanceof SoundElement) {
                return 4;
            }
            if (messageBaseElement instanceof FaceElement) {
                return 8;
            }
            if (messageBaseElement instanceof FileElement) {
                return 6;
            }
            if (messageBaseElement instanceof CustomElement) {
                return 2;
            }
            if (messageBaseElement instanceof LocationElement) {
                return 7;
            }
            if (messageBaseElement instanceof GroupTipsElement) {
                return 9;
            }
            return messageBaseElement instanceof MergerElement ? 10 : 0;
        }
        return 0;
    }

    public V2TIMFaceElem getFaceElem() {
        if (getElemType() != 0 && getElemType() == 8) {
            V2TIMFaceElem v2TIMFaceElem = new V2TIMFaceElem();
            v2TIMFaceElem.setMessage(this.message);
            v2TIMFaceElem.setElemIndex(0);
            return v2TIMFaceElem;
        }
        return null;
    }

    public String getFaceUrl() {
        Message message = this.message;
        if (message != null) {
            return message.getFaceUrl();
        }
        return null;
    }

    public V2TIMFileElem getFileElem() {
        if (getElemType() != 0 && getElemType() == 6) {
            V2TIMFileElem v2TIMFileElem = new V2TIMFileElem();
            v2TIMFileElem.setMessage(this.message);
            v2TIMFileElem.setElemIndex(0);
            return v2TIMFileElem;
        }
        return null;
    }

    public String getFriendRemark() {
        Message message = this.message;
        if (message != null) {
            return message.getFriendRemark();
        }
        return null;
    }

    public List<String> getGroupAtUserList() {
        Message message = this.message;
        if (message == null) {
            return new ArrayList();
        }
        List<MessageAtInfo> messageGroupAtInfoList = message.getMessageGroupAtInfoList();
        ArrayList arrayList = new ArrayList();
        for (MessageAtInfo messageAtInfo : messageGroupAtInfoList) {
            arrayList.add(messageAtInfo.getAtUserID());
        }
        return arrayList;
    }

    public String getGroupID() {
        Message message = this.message;
        if (message == null || message.getMessageType() != Message.MESSAGE_TYPE_GROUP) {
            return null;
        }
        return this.message.getGroupID();
    }

    public V2TIMGroupTipsElem getGroupTipsElem() {
        if (getElemType() != 0 && getElemType() == 9) {
            V2TIMGroupTipsElem v2TIMGroupTipsElem = new V2TIMGroupTipsElem();
            v2TIMGroupTipsElem.setMessage(this.message);
            v2TIMGroupTipsElem.setElemIndex(0);
            return v2TIMGroupTipsElem;
        }
        return null;
    }

    public V2TIMImageElem getImageElem() {
        if (getElemType() != 0 && getElemType() == 3) {
            V2TIMImageElem v2TIMImageElem = new V2TIMImageElem();
            v2TIMImageElem.setMessage(this.message);
            v2TIMImageElem.setElemIndex(0);
            return v2TIMImageElem;
        }
        return null;
    }

    public String getLocalCustomData() {
        Message message = this.message;
        return message == null ? "" : message.getLocalCustomString();
    }

    public int getLocalCustomInt() {
        Message message = this.message;
        if (message == null) {
            return 0;
        }
        return message.getLocalCustomNumber();
    }

    public V2TIMLocationElem getLocationElem() {
        if (getElemType() != 0 && getElemType() == 7) {
            V2TIMLocationElem v2TIMLocationElem = new V2TIMLocationElem();
            v2TIMLocationElem.setMessage(this.message);
            v2TIMLocationElem.setElemIndex(0);
            return v2TIMLocationElem;
        }
        return null;
    }

    public V2TIMMergerElem getMergerElem() {
        if (getElemType() != 0 && getElemType() == 10) {
            V2TIMMergerElem v2TIMMergerElem = new V2TIMMergerElem();
            v2TIMMergerElem.setMessage(this.message);
            v2TIMMergerElem.setElemIndex(0);
            return v2TIMMergerElem;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Message getMessage() {
        return this.message;
    }

    public String getMsgID() {
        Message message = this.message;
        return message != null ? message.getMsgID() : "";
    }

    public String getNameCard() {
        Message message = this.message;
        if (message != null) {
            return message.getNameCard();
        }
        return null;
    }

    public String getNickName() {
        Message message = this.message;
        if (message != null) {
            return message.getNickName();
        }
        return null;
    }

    public V2TIMOfflinePushInfo getOfflinePushInfo() {
        Message message = this.message;
        if (message == null) {
            return null;
        }
        MessageOfflinePushInfo offlinePushInfo = message.getOfflinePushInfo();
        V2TIMOfflinePushInfo v2TIMOfflinePushInfo = new V2TIMOfflinePushInfo();
        v2TIMOfflinePushInfo.setMessageOfflinePushInfo(offlinePushInfo);
        return v2TIMOfflinePushInfo;
    }

    public int getPriority() {
        Message message = this.message;
        if (message != null) {
            return message.getPriority();
        }
        return 0;
    }

    public long getRandom() {
        Message message = this.message;
        if (message == null) {
            return 0L;
        }
        return message.getRandom();
    }

    public String getSender() {
        Message message = this.message;
        if (message != null) {
            return message.getSenderUserID();
        }
        return null;
    }

    public long getSeq() {
        Message message = this.message;
        if (message == null) {
            return 0L;
        }
        return message.getSeq();
    }

    public V2TIMSoundElem getSoundElem() {
        if (getElemType() != 0 && getElemType() == 4) {
            V2TIMSoundElem v2TIMSoundElem = new V2TIMSoundElem();
            v2TIMSoundElem.setMessage(this.message);
            v2TIMSoundElem.setElemIndex(0);
            return v2TIMSoundElem;
        }
        return null;
    }

    public int getStatus() {
        Message message = this.message;
        if (message == null) {
            return 1;
        }
        return message.getMessageStatus();
    }

    public V2TIMTextElem getTextElem() {
        if (getElemType() != 0 && getElemType() == 1) {
            V2TIMTextElem v2TIMTextElem = new V2TIMTextElem();
            v2TIMTextElem.setMessage(this.message);
            v2TIMTextElem.setElemIndex(0);
            return v2TIMTextElem;
        }
        return null;
    }

    public long getTimestamp() {
        Message message = this.message;
        if (message != null) {
            return message.getTimestamp();
        }
        return 0L;
    }

    public String getUserID() {
        Message message = this.message;
        if (message == null || message.getMessageType() != Message.MESSAGE_TYPE_C2C) {
            return null;
        }
        if (this.message.isMessageSender()) {
            return this.message.getReceiverUserID();
        }
        return this.message.getSenderUserID();
    }

    public V2TIMVideoElem getVideoElem() {
        if (getElemType() != 0 && getElemType() == 5) {
            V2TIMVideoElem v2TIMVideoElem = new V2TIMVideoElem();
            v2TIMVideoElem.setMessage(this.message);
            v2TIMVideoElem.setElemIndex(0);
            return v2TIMVideoElem;
        }
        return null;
    }

    public boolean isBroadcastMessage() {
        Message message = this.message;
        if (message != null) {
            return message.isBroadcastMessage();
        }
        return false;
    }

    public boolean isExcludedFromLastMessage() {
        Message message = this.message;
        if (message == null) {
            return false;
        }
        return message.isExcludedFromLastMessage();
    }

    public boolean isExcludedFromUnreadCount() {
        Message message = this.message;
        if (message == null) {
            return false;
        }
        return message.isExcludedFromUnreadCount();
    }

    public boolean isNeedReadReceipt() {
        Message message = this.message;
        if (message != null) {
            return message.isNeedReadReceipt();
        }
        return false;
    }

    public boolean isPeerRead() {
        Message message;
        int status = getStatus();
        if (status == 1 || status == 3 || (message = this.message) == null) {
            return false;
        }
        return message.isPeerRead();
    }

    public boolean isRead() {
        Message message = this.message;
        if (message != null) {
            return message.isSelfRead();
        }
        return true;
    }

    public boolean isSelf() {
        Message message = this.message;
        if (message != null) {
            return message.isMessageSender();
        }
        return true;
    }

    public boolean isSupportMessageExtension() {
        Message message = this.message;
        if (message == null) {
            return false;
        }
        return message.isSupportMessageExtension();
    }

    public void setCloudCustomData(String str) {
        Message message = this.message;
        if (message == null) {
            return;
        }
        message.setCloudCustomString(str);
    }

    public void setExcludedFromLastMessage(boolean z10) {
        Message message = this.message;
        if (message == null) {
            return;
        }
        message.setExcludedFromLastMessage(z10);
    }

    public void setExcludedFromUnreadCount(boolean z10) {
        Message message = this.message;
        if (message == null) {
            return;
        }
        message.setExcludedFromUnreadCount(z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGroupAtUserList(List<String> list) {
        if (this.message == null || list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            MessageAtInfo messageAtInfo = new MessageAtInfo();
            messageAtInfo.setAtUserID(str);
            arrayList.add(messageAtInfo);
        }
        this.message.setMessageGroupAtInfoList(arrayList);
    }

    public void setLocalCustomData(String str) {
        Message message = this.message;
        if (message == null) {
            return;
        }
        message.setLocalCustomString(str);
    }

    public void setLocalCustomInt(int i9) {
        Message message = this.message;
        if (message == null) {
            return;
        }
        message.setLocalCustomNumber(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMessage(Message message) {
        if (message == null) {
            return;
        }
        this.message = message;
    }

    public void setNeedReadReceipt(boolean z10) {
        Message message = this.message;
        if (message != null) {
            message.setNeedReadReceipt(z10);
        }
    }

    public void setSupportMessageExtension(boolean z10) {
        Message message = this.message;
        if (message == null) {
            return;
        }
        message.setSupportMessageExtension(z10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("V2TIMMessage--->");
        StringBuilder sb3 = new StringBuilder();
        V2TIMElem v2TIMElem = null;
        for (int i9 = 0; i9 < this.message.getMessageBaseElements().size(); i9++) {
            MessageBaseElement messageBaseElement = this.message.getMessageBaseElements().get(i9);
            if (messageBaseElement instanceof TextElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getTextElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMTextElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof CustomElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getCustomElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMCustomElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof ImageElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getImageElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMImageElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof SoundElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getSoundElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMSoundElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof VideoElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getVideoElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMVideoElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof FileElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getFileElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMFileElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof LocationElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getLocationElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMLocationElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof FaceElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getFaceElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMFaceElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof MergerElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getMergerElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMMergerElem) v2TIMElem).toString());
            } else if (messageBaseElement instanceof GroupTipsElement) {
                if (v2TIMElem == null) {
                    v2TIMElem = getGroupTipsElem();
                } else {
                    v2TIMElem = v2TIMElem.getNextElem();
                }
                sb3.append(((V2TIMGroupTipsElem) v2TIMElem).toString());
            }
            sb3.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        }
        sb2.append("msgID:");
        sb2.append(getMsgID());
        sb2.append(", timestamp:");
        sb2.append(getTimestamp());
        sb2.append(", sender:");
        sb2.append(getSender());
        sb2.append(", nickname:");
        sb2.append(getNickName());
        sb2.append(", faceUrl:");
        sb2.append(getFaceUrl());
        sb2.append(", friendRemark:");
        sb2.append(getFriendRemark());
        sb2.append(", nameCard:");
        sb2.append(getNameCard());
        sb2.append(", groupID:");
        sb2.append(getGroupID());
        sb2.append(", userID:");
        sb2.append(getUserID());
        sb2.append(", seq:");
        sb2.append(getSeq());
        sb2.append(", random:");
        sb2.append(getRandom());
        sb2.append(", status:");
        sb2.append(getStatus());
        sb2.append(", isSelf:");
        sb2.append(isSelf());
        sb2.append(", isRead:");
        sb2.append(isRead());
        sb2.append(", isPeerRead:");
        sb2.append(isPeerRead());
        sb2.append(", needReadReceipt:");
        sb2.append(isNeedReadReceipt());
        sb2.append(", priority:");
        sb2.append(getPriority());
        sb2.append(", groupAtUserList:");
        sb2.append(getGroupAtUserList());
        sb2.append(", elemType:");
        sb2.append(getElemType());
        sb2.append(", localCustomData:");
        sb2.append(getLocalCustomData());
        sb2.append(", localCustomInt:");
        sb2.append(getLocalCustomInt());
        sb2.append(", cloudCustomData:");
        sb2.append(getCloudCustomData());
        sb2.append(", isExcludeFromUnreadCount:");
        sb2.append(isExcludedFromUnreadCount());
        sb2.append(", isExcludeFromLastMessage:");
        sb2.append(isExcludedFromLastMessage());
        sb2.append(", offlinePushInfo:");
        sb2.append(getOfflinePushInfo());
        sb2.append(", isBroadcastMessage:");
        sb2.append(isBroadcastMessage());
        sb2.append(", supportMessageExtension:");
        sb2.append(isSupportMessageExtension());
        sb2.append(", elemDesc:");
        sb2.append(sb3.toString());
        return sb2.toString();
    }
}
