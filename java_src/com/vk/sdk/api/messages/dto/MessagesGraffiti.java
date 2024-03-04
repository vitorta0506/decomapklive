package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003JG\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020\u0007HÖ\u0001R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000f¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGraffiti;", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "url", "", "width", "height", "accessKey", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;IILjava/lang/String;)V", "getAccessKey", "()Ljava/lang/String;", "getHeight", "()I", "getId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getUrl", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGraffiti {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("height")
    private final int height;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35909id;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("url")
    @NotNull
    private final String url;
    @SerializedName("width")
    private final int width;

    public MessagesGraffiti(int i9, @NotNull UserId ownerId, @NotNull String url, int i10, int i11, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f35909id = i9;
        this.ownerId = ownerId;
        this.url = url;
        this.width = i10;
        this.height = i11;
        this.accessKey = str;
    }

    public static /* synthetic */ MessagesGraffiti copy$default(MessagesGraffiti messagesGraffiti, int i9, UserId userId, String str, int i10, int i11, String str2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i9 = messagesGraffiti.f35909id;
        }
        if ((i12 & 2) != 0) {
            userId = messagesGraffiti.ownerId;
        }
        UserId userId2 = userId;
        if ((i12 & 4) != 0) {
            str = messagesGraffiti.url;
        }
        String str3 = str;
        if ((i12 & 8) != 0) {
            i10 = messagesGraffiti.width;
        }
        int i13 = i10;
        if ((i12 & 16) != 0) {
            i11 = messagesGraffiti.height;
        }
        int i14 = i11;
        if ((i12 & 32) != 0) {
            str2 = messagesGraffiti.accessKey;
        }
        return messagesGraffiti.copy(i9, userId2, str3, i13, i14, str2);
    }

    public final int component1() {
        return this.f35909id;
    }

    @NotNull
    public final UserId component2() {
        return this.ownerId;
    }

    @NotNull
    public final String component3() {
        return this.url;
    }

    public final int component4() {
        return this.width;
    }

    public final int component5() {
        return this.height;
    }

    @Nullable
    public final String component6() {
        return this.accessKey;
    }

    @NotNull
    public final MessagesGraffiti copy(int i9, @NotNull UserId ownerId, @NotNull String url, int i10, int i11, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(url, "url");
        return new MessagesGraffiti(i9, ownerId, url, i10, i11, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGraffiti) {
            MessagesGraffiti messagesGraffiti = (MessagesGraffiti) obj;
            return this.f35909id == messagesGraffiti.f35909id && Intrinsics.areEqual(this.ownerId, messagesGraffiti.ownerId) && Intrinsics.areEqual(this.url, messagesGraffiti.url) && this.width == messagesGraffiti.width && this.height == messagesGraffiti.height && Intrinsics.areEqual(this.accessKey, messagesGraffiti.accessKey);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getId() {
        return this.f35909id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int hashCode = ((((((((this.f35909id * 31) + this.ownerId.hashCode()) * 31) + this.url.hashCode()) * 31) + this.width) * 31) + this.height) * 31;
        String str = this.accessKey;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.f35909id;
        UserId userId = this.ownerId;
        String str = this.url;
        int i10 = this.width;
        int i11 = this.height;
        String str2 = this.accessKey;
        return "MessagesGraffiti(id=" + i9 + ", ownerId=" + userId + ", url=" + str + ", width=" + i10 + ", height=" + i11 + ", accessKey=" + str2 + ")";
    }

    public /* synthetic */ MessagesGraffiti(int i9, UserId userId, String str, int i10, int i11, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, str, i10, i11, (i12 & 32) != 0 ? null : str2);
    }
}
