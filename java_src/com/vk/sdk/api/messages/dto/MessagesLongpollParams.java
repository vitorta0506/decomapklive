package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\fJ8\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesLongpollParams;", "", "server", "", "key", TimeDisplaySetting.TIME_DISPLAY_SETTING, "", "pts", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V", "getKey", "()Ljava/lang/String;", "getPts", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getServer", "getTs", "()I", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Lcom/vk/sdk/api/messages/dto/MessagesLongpollParams;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesLongpollParams {
    @SerializedName("key")
    @NotNull
    private final String key;
    @SerializedName("pts")
    @Nullable
    private final Integer pts;
    @SerializedName("server")
    @NotNull
    private final String server;
    @SerializedName(TimeDisplaySetting.TIME_DISPLAY_SETTING)
    private final int ts;

    public MessagesLongpollParams(@NotNull String server, @NotNull String key, int i9, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(key, "key");
        this.server = server;
        this.key = key;
        this.ts = i9;
        this.pts = num;
    }

    public static /* synthetic */ MessagesLongpollParams copy$default(MessagesLongpollParams messagesLongpollParams, String str, String str2, int i9, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = messagesLongpollParams.server;
        }
        if ((i10 & 2) != 0) {
            str2 = messagesLongpollParams.key;
        }
        if ((i10 & 4) != 0) {
            i9 = messagesLongpollParams.ts;
        }
        if ((i10 & 8) != 0) {
            num = messagesLongpollParams.pts;
        }
        return messagesLongpollParams.copy(str, str2, i9, num);
    }

    @NotNull
    public final String component1() {
        return this.server;
    }

    @NotNull
    public final String component2() {
        return this.key;
    }

    public final int component3() {
        return this.ts;
    }

    @Nullable
    public final Integer component4() {
        return this.pts;
    }

    @NotNull
    public final MessagesLongpollParams copy(@NotNull String server, @NotNull String key, int i9, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(key, "key");
        return new MessagesLongpollParams(server, key, i9, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesLongpollParams) {
            MessagesLongpollParams messagesLongpollParams = (MessagesLongpollParams) obj;
            return Intrinsics.areEqual(this.server, messagesLongpollParams.server) && Intrinsics.areEqual(this.key, messagesLongpollParams.key) && this.ts == messagesLongpollParams.ts && Intrinsics.areEqual(this.pts, messagesLongpollParams.pts);
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final Integer getPts() {
        return this.pts;
    }

    @NotNull
    public final String getServer() {
        return this.server;
    }

    public final int getTs() {
        return this.ts;
    }

    public int hashCode() {
        int hashCode = ((((this.server.hashCode() * 31) + this.key.hashCode()) * 31) + this.ts) * 31;
        Integer num = this.pts;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.server;
        String str2 = this.key;
        int i9 = this.ts;
        Integer num = this.pts;
        return "MessagesLongpollParams(server=" + str + ", key=" + str2 + ", ts=" + i9 + ", pts=" + num + ")";
    }

    public /* synthetic */ MessagesLongpollParams(String str, String str2, int i9, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i9, (i10 & 8) != 0 ? null : num);
    }
}
