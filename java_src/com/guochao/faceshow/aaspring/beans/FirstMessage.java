package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0005\"\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/FirstMessage;", "", "isFirstMsg", "", "(I)V", "()I", "setFirstMsg", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FirstMessage {
    private int isFirstMsg;

    public FirstMessage() {
        this(0, 1, null);
    }

    public FirstMessage(int i9) {
        this.isFirstMsg = i9;
    }

    public final int isFirstMsg() {
        return this.isFirstMsg;
    }

    public final void setFirstMsg(int i9) {
        this.isFirstMsg = i9;
    }

    public /* synthetic */ FirstMessage(int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i9);
    }
}
