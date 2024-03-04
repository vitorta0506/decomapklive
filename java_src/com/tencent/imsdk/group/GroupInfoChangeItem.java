package com.tencent.imsdk.group;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GroupInfoChangeItem implements Serializable {
    private boolean boolValueChanged;
    private String customInfoKey;
    private int groupInfoChangeType;
    private int intValueChanged;
    private String valueChanged;

    public boolean getBoolValueChanged() {
        return this.boolValueChanged;
    }

    public String getCustomInfoKey() {
        return this.customInfoKey;
    }

    public int getGroupInfoChangeType() {
        return this.groupInfoChangeType;
    }

    public int getIntValueChanged() {
        return this.intValueChanged;
    }

    public String getValueChanged() {
        return this.valueChanged;
    }

    public void setCustomInfoKey(String str) {
        this.customInfoKey = str;
    }

    public void setGroupInfoChangeType(int i9) {
        this.groupInfoChangeType = i9;
    }

    public void setValueChanged(String str) {
        this.valueChanged = str;
    }
}
