package com.huawei.hms.support.api.entity.push;

import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
/* loaded from: classes4.dex */
public class ProfileReq implements IMessageEntity {
    @Packed
    public int operation;
    @Packed
    public String pkgName;
    @Packed
    public String profileId;
    @Packed
    public String subjectId;
    @Packed
    public int type;

    public int getOperation() {
        return this.operation;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public String getProfileId() {
        return this.profileId;
    }

    public String getSubjectId() {
        return this.subjectId;
    }

    public int getType() {
        return this.type;
    }

    public void setOperation(int i9) {
        this.operation = i9;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public void setProfileId(String str) {
        this.profileId = str;
    }

    public void setSubjectId(String str) {
        this.subjectId = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public String toString() {
        return ProfileReq.class.getName() + "{ pkgName: " + this.pkgName + ",subjectId: " + this.subjectId + ",operation: " + this.operation + " type: " + this.type + "}";
    }
}
