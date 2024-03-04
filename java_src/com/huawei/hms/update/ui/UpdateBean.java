package com.huawei.hms.update.ui;

import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class UpdateBean implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public boolean f27843a;

    /* renamed from: b  reason: collision with root package name */
    public String f27844b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList f27845c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f27846d = true;

    public static <T> T a(T t10) {
        return t10;
    }

    public String getClientAppName() {
        return (String) a(this.f27844b);
    }

    public boolean getResolutionInstallHMS() {
        return this.f27843a;
    }

    public ArrayList getTypeList() {
        return (ArrayList) a(this.f27845c);
    }

    public boolean isNeedConfirm() {
        return ((Boolean) a(Boolean.valueOf(this.f27846d))).booleanValue();
    }

    public void setClientAppId(String str) {
    }

    public void setClientAppName(String str) {
        this.f27844b = str;
    }

    public void setClientPackageName(String str) {
    }

    public void setClientVersionCode(int i9) {
    }

    public void setHmsOrApkUpgrade(boolean z10) {
    }

    public void setNeedConfirm(boolean z10) {
        this.f27846d = z10;
    }

    public void setResolutionInstallHMS(boolean z10) {
        this.f27843a = z10;
    }

    public void setTypeList(ArrayList arrayList) {
        this.f27845c = arrayList;
    }
}
