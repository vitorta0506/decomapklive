package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/UserAboutInfo;", "", "type", "", "infoName", "", "(ILjava/lang/String;)V", "getInfoName", "()Ljava/lang/String;", "setInfoName", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserAboutInfo {
    @NotNull
    private String infoName;
    private int type;

    public UserAboutInfo(int i9, @NotNull String infoName) {
        Intrinsics.checkNotNullParameter(infoName, "infoName");
        this.type = i9;
        this.infoName = infoName;
    }

    @NotNull
    public final String getInfoName() {
        return this.infoName;
    }

    public final int getType() {
        return this.type;
    }

    public final void setInfoName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.infoName = str;
    }

    public final void setType(int i9) {
        this.type = i9;
    }
}
