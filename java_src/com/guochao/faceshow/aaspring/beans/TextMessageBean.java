package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/TextMessageBean;", "", "msg", "", "(Ljava/lang/String;)V", "getMsg", "()Ljava/lang/String;", "setMsg", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TextMessageBean {
    @NotNull
    private String msg;

    public TextMessageBean(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.msg = msg;
    }

    @NotNull
    public final String getMsg() {
        return this.msg;
    }

    public final void setMsg(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.msg = str;
    }
}
