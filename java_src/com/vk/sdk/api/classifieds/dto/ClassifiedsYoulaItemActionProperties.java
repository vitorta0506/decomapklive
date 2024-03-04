package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010JZ\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\u00072\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u000bHÖ\u0001J\t\u0010'\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\f\u0010\u0010R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016¨\u0006("}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionProperties;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "hash", "", "phoneEnabled", "", "messageEnabled", "messageWallitemId", "messageChatId", "", "isIncomplete", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getHash", "()Ljava/lang/String;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMessageChatId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMessageEnabled", "()Z", "getMessageWallitemId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoneEnabled", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemActionProperties;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemActionProperties {
    @SerializedName("hash")
    @NotNull
    private final String hash;
    @SerializedName("is_incomplete")
    @Nullable
    private final Boolean isIncomplete;
    @SerializedName("message_chat_id")
    @Nullable
    private final Integer messageChatId;
    @SerializedName("message_enabled")
    private final boolean messageEnabled;
    @SerializedName("message_wallitem_id")
    @Nullable
    private final String messageWallitemId;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("phone_enabled")
    private final boolean phoneEnabled;

    public ClassifiedsYoulaItemActionProperties(@NotNull UserId ownerId, @NotNull String hash, boolean z10, boolean z11, @Nullable String str, @Nullable Integer num, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(hash, "hash");
        this.ownerId = ownerId;
        this.hash = hash;
        this.phoneEnabled = z10;
        this.messageEnabled = z11;
        this.messageWallitemId = str;
        this.messageChatId = num;
        this.isIncomplete = bool;
    }

    public static /* synthetic */ ClassifiedsYoulaItemActionProperties copy$default(ClassifiedsYoulaItemActionProperties classifiedsYoulaItemActionProperties, UserId userId, String str, boolean z10, boolean z11, String str2, Integer num, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = classifiedsYoulaItemActionProperties.ownerId;
        }
        if ((i9 & 2) != 0) {
            str = classifiedsYoulaItemActionProperties.hash;
        }
        String str3 = str;
        if ((i9 & 4) != 0) {
            z10 = classifiedsYoulaItemActionProperties.phoneEnabled;
        }
        boolean z12 = z10;
        if ((i9 & 8) != 0) {
            z11 = classifiedsYoulaItemActionProperties.messageEnabled;
        }
        boolean z13 = z11;
        if ((i9 & 16) != 0) {
            str2 = classifiedsYoulaItemActionProperties.messageWallitemId;
        }
        String str4 = str2;
        if ((i9 & 32) != 0) {
            num = classifiedsYoulaItemActionProperties.messageChatId;
        }
        Integer num2 = num;
        if ((i9 & 64) != 0) {
            bool = classifiedsYoulaItemActionProperties.isIncomplete;
        }
        return classifiedsYoulaItemActionProperties.copy(userId, str3, z12, z13, str4, num2, bool);
    }

    @NotNull
    public final UserId component1() {
        return this.ownerId;
    }

    @NotNull
    public final String component2() {
        return this.hash;
    }

    public final boolean component3() {
        return this.phoneEnabled;
    }

    public final boolean component4() {
        return this.messageEnabled;
    }

    @Nullable
    public final String component5() {
        return this.messageWallitemId;
    }

    @Nullable
    public final Integer component6() {
        return this.messageChatId;
    }

    @Nullable
    public final Boolean component7() {
        return this.isIncomplete;
    }

    @NotNull
    public final ClassifiedsYoulaItemActionProperties copy(@NotNull UserId ownerId, @NotNull String hash, boolean z10, boolean z11, @Nullable String str, @Nullable Integer num, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(hash, "hash");
        return new ClassifiedsYoulaItemActionProperties(ownerId, hash, z10, z11, str, num, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaItemActionProperties) {
            ClassifiedsYoulaItemActionProperties classifiedsYoulaItemActionProperties = (ClassifiedsYoulaItemActionProperties) obj;
            return Intrinsics.areEqual(this.ownerId, classifiedsYoulaItemActionProperties.ownerId) && Intrinsics.areEqual(this.hash, classifiedsYoulaItemActionProperties.hash) && this.phoneEnabled == classifiedsYoulaItemActionProperties.phoneEnabled && this.messageEnabled == classifiedsYoulaItemActionProperties.messageEnabled && Intrinsics.areEqual(this.messageWallitemId, classifiedsYoulaItemActionProperties.messageWallitemId) && Intrinsics.areEqual(this.messageChatId, classifiedsYoulaItemActionProperties.messageChatId) && Intrinsics.areEqual(this.isIncomplete, classifiedsYoulaItemActionProperties.isIncomplete);
        }
        return false;
    }

    @NotNull
    public final String getHash() {
        return this.hash;
    }

    @Nullable
    public final Integer getMessageChatId() {
        return this.messageChatId;
    }

    public final boolean getMessageEnabled() {
        return this.messageEnabled;
    }

    @Nullable
    public final String getMessageWallitemId() {
        return this.messageWallitemId;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    public final boolean getPhoneEnabled() {
        return this.phoneEnabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.ownerId.hashCode() * 31) + this.hash.hashCode()) * 31;
        boolean z10 = this.phoneEnabled;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode + i9) * 31;
        boolean z11 = this.messageEnabled;
        int i11 = (i10 + (z11 ? 1 : z11 ? 1 : 0)) * 31;
        String str = this.messageWallitemId;
        int hashCode2 = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.messageChatId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.isIncomplete;
        return hashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    @Nullable
    public final Boolean isIncomplete() {
        return this.isIncomplete;
    }

    @NotNull
    public String toString() {
        UserId userId = this.ownerId;
        String str = this.hash;
        boolean z10 = this.phoneEnabled;
        boolean z11 = this.messageEnabled;
        String str2 = this.messageWallitemId;
        Integer num = this.messageChatId;
        Boolean bool = this.isIncomplete;
        return "ClassifiedsYoulaItemActionProperties(ownerId=" + userId + ", hash=" + str + ", phoneEnabled=" + z10 + ", messageEnabled=" + z11 + ", messageWallitemId=" + str2 + ", messageChatId=" + num + ", isIncomplete=" + bool + ")";
    }

    public /* synthetic */ ClassifiedsYoulaItemActionProperties(UserId userId, String str, boolean z10, boolean z11, String str2, Integer num, Boolean bool, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, str, z10, z11, (i9 & 16) != 0 ? null : str2, (i9 & 32) != 0 ? null : num, (i9 & 64) != 0 ? null : bool);
    }
}
