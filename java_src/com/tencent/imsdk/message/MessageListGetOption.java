package com.tencent.imsdk.message;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class MessageListGetOption implements Serializable {
    private int count;
    private boolean getCloudMessage;
    private long getTimeBegin;
    private long getTimePeriod;
    private MessageKey messageKey;
    private List<Integer> messageTypeList;
    private boolean toOlderMessage;

    public int getCount() {
        return this.count;
    }

    public long getGetTimeBegin() {
        return this.getTimeBegin;
    }

    public long getGetTimePeriod() {
        return this.getTimePeriod;
    }

    public MessageKey getMessageKey() {
        return this.messageKey;
    }

    public boolean isGetCloudMessage() {
        return this.getCloudMessage;
    }

    public boolean isToOlderMessage() {
        return this.toOlderMessage;
    }

    public void setCount(int i9) {
        this.count = i9;
    }

    public void setGetCloudMessage(boolean z10) {
        this.getCloudMessage = z10;
    }

    public void setGetTimeBegin(long j10) {
        this.getTimeBegin = j10;
    }

    public void setGetTimePeriod(long j10) {
        this.getTimePeriod = j10;
    }

    public void setMessageKey(MessageKey messageKey) {
        this.messageKey = messageKey;
    }

    public void setMessageTypeList(List<Integer> list) {
        this.messageTypeList = list;
    }

    public void setToOlderMessage(boolean z10) {
        this.toOlderMessage = z10;
    }
}
