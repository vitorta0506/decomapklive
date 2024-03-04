package com.appsflyer.internal;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class AFe1fSDK {
    public final List<AFe1iSDK> valueOf = new ArrayList();

    @NonNull
    public final synchronized AFe1iSDK[] AFKeystoreWrapper() {
        return (AFe1iSDK[]) this.valueOf.toArray(new AFe1iSDK[0]);
    }

    public final synchronized void values(AFe1iSDK aFe1iSDK) {
        this.valueOf.add(aFe1iSDK);
    }
}
