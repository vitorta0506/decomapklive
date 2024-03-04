package com.guochao.faceshow.aaspring.modulars.push.base;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH&J\r\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0002\b\fJ\b\u0010\r\u001a\u00020\nH&R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;", "", "()V", "inited", "", "tokenType", "", "getTokenType", "()Ljava/lang/String;", "checkToken", "", "init", "init$app_GooglePlayRelease", "initOnce", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BasePushHelper {
    private boolean inited;

    public abstract void checkToken();

    @NotNull
    public abstract String getTokenType();

    public final void init$app_GooglePlayRelease() {
        if (this.inited) {
            return;
        }
        initOnce();
        this.inited = true;
    }

    public abstract void initOnce();
}
