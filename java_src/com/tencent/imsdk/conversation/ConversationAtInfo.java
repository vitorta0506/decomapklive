package com.tencent.imsdk.conversation;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class ConversationAtInfo implements Serializable {
    public static final String AT_ALL_TAG = "__kImSDK_MesssageAtALL__";
    public static final int TIM_AT_ALL = 2;
    public static final int TIM_AT_ALL_AT_ME = 3;
    public static final int TIM_AT_ME = 1;
    public static final int TIM_AT_UNKNOWN = 0;
    private long atMessageSequence;
    private List<Integer> atTypes = new ArrayList();

    protected void addAtType(int i9) {
        this.atTypes.add(Integer.valueOf(i9));
    }

    public long getAtMessageSequence() {
        return this.atMessageSequence;
    }

    public int getAtType() {
        int i9 = 0;
        for (Integer num : this.atTypes) {
            int intValue = num.intValue();
            if (intValue == 1) {
                i9 |= 1;
            } else if (intValue == 2) {
                i9 |= 2;
            }
        }
        return i9;
    }
}
