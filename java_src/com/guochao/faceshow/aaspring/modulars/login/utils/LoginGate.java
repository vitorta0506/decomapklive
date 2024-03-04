package com.guochao.faceshow.aaspring.modulars.login.utils;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/utils/LoginGate;", "", "()V", "canLogin", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LoginGate {
    @NotNull
    public static final LoginGate INSTANCE = new LoginGate();

    private LoginGate() {
    }

    @JvmStatic
    public static final boolean canLogin() {
        return true;
    }
}
