package com.xiaomi.push;
/* loaded from: classes5.dex */
public enum bg {
    COMMAND_REGISTER("register"),
    COMMAND_UNREGISTER("unregister"),
    COMMAND_SET_ALIAS("set-alias"),
    COMMAND_UNSET_ALIAS("unset-alias"),
    COMMAND_SET_ACCOUNT("set-account"),
    COMMAND_UNSET_ACCOUNT("unset-account"),
    COMMAND_SUBSCRIBE_TOPIC("subscribe-topic"),
    COMMAND_UNSUBSCRIBE_TOPIC("unsubscibe-topic"),
    COMMAND_SET_ACCEPT_TIME("accept-time"),
    COMMAND_CHK_VDEVID("check-vdeviceid");
    

    /* renamed from: a  reason: collision with other field name */
    public final String f21a;

    bg(String str) {
        this.f21a = str;
    }
}
