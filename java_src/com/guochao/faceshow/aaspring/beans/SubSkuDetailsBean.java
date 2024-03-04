package com.guochao.faceshow.aaspring.beans;

import com.android.billingclient.api.SkuDetails;
/* loaded from: classes3.dex */
public class SubSkuDetailsBean {
    private boolean disable;
    private SkuDetails skuDetails;

    public SubSkuDetailsBean(SkuDetails skuDetails, boolean z10) {
        this.skuDetails = skuDetails;
        this.disable = z10;
    }

    public SkuDetails getSkuDetails() {
        return this.skuDetails;
    }

    public boolean isDisable() {
        return this.disable;
    }

    public void setDisable(boolean z10) {
        this.disable = z10;
    }

    public void setSkuDetails(SkuDetails skuDetails) {
        this.skuDetails = skuDetails;
    }
}
