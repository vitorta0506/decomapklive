package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesLastActivity;", "", "online", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", CrashHianalyticsData.TIME, "", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;I)V", "getOnline", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getTime", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesLastActivity {
    @SerializedName("online")
    @NotNull
    private final BaseBoolInt online;
    @SerializedName(CrashHianalyticsData.TIME)
    private final int time;

    public MessagesLastActivity(@NotNull BaseBoolInt online, int i9) {
        Intrinsics.checkNotNullParameter(online, "online");
        this.online = online;
        this.time = i9;
    }

    public static /* synthetic */ MessagesLastActivity copy$default(MessagesLastActivity messagesLastActivity, BaseBoolInt baseBoolInt, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            baseBoolInt = messagesLastActivity.online;
        }
        if ((i10 & 2) != 0) {
            i9 = messagesLastActivity.time;
        }
        return messagesLastActivity.copy(baseBoolInt, i9);
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.online;
    }

    public final int component2() {
        return this.time;
    }

    @NotNull
    public final MessagesLastActivity copy(@NotNull BaseBoolInt online, int i9) {
        Intrinsics.checkNotNullParameter(online, "online");
        return new MessagesLastActivity(online, i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesLastActivity) {
            MessagesLastActivity messagesLastActivity = (MessagesLastActivity) obj;
            return this.online == messagesLastActivity.online && this.time == messagesLastActivity.time;
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getOnline() {
        return this.online;
    }

    public final int getTime() {
        return this.time;
    }

    public int hashCode() {
        return (this.online.hashCode() * 31) + this.time;
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.online;
        int i9 = this.time;
        return "MessagesLastActivity(online=" + baseBoolInt + ", time=" + i9 + ")";
    }
}
