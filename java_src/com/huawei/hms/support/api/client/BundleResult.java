package com.huawei.hms.support.api.client;

import android.os.Bundle;
/* loaded from: classes4.dex */
public class BundleResult {

    /* renamed from: a  reason: collision with root package name */
    private int f27800a;

    /* renamed from: b  reason: collision with root package name */
    private Bundle f27801b;

    public BundleResult(int i9, Bundle bundle) {
        this.f27800a = i9;
        this.f27801b = bundle;
    }

    public int getResultCode() {
        return this.f27800a;
    }

    public Bundle getRspBody() {
        return this.f27801b;
    }

    public void setResultCode(int i9) {
        this.f27800a = i9;
    }

    public void setRspBody(Bundle bundle) {
        this.f27801b = bundle;
    }
}
