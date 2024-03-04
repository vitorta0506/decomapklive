package com.huawei.hms.support.api.entity.core;

import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.support.api.entity.auth.Scope;
import java.util.List;
/* loaded from: classes4.dex */
public class ConnectInfo implements IMessageEntity {
    @Packed

    /* renamed from: a  reason: collision with root package name */
    private List<String> f27802a;
    @Packed

    /* renamed from: b  reason: collision with root package name */
    private List<Scope> f27803b;
    @Packed

    /* renamed from: c  reason: collision with root package name */
    private String f27804c;
    @Packed

    /* renamed from: d  reason: collision with root package name */
    private String f27805d;

    public ConnectInfo() {
    }

    public List<String> getApiNameList() {
        return this.f27802a;
    }

    public String getFingerprint() {
        return this.f27804c;
    }

    public List<Scope> getScopeList() {
        return this.f27803b;
    }

    public String getSubAppID() {
        return this.f27805d;
    }

    public void setApiNameList(List<String> list) {
        this.f27802a = list;
    }

    public void setFingerprint(String str) {
        this.f27804c = str;
    }

    public void setScopeList(List<Scope> list) {
        this.f27803b = list;
    }

    public void setSubAppID(String str) {
        this.f27805d = str;
    }

    public ConnectInfo(List<String> list, List<Scope> list2, String str, String str2) {
        this.f27802a = list;
        this.f27803b = list2;
        this.f27804c = str;
        this.f27805d = str2;
    }
}
