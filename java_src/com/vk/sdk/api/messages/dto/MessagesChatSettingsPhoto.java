package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\nJJ\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\b\u0010\nR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u0006\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;", "", "photo50", "", "photo100", "photo200", "isDefaultPhoto", "", "isDefaultCallPhoto", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getPhoto100", "()Ljava/lang/String;", "getPhoto200", "getPhoto50", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesChatSettingsPhoto;", "equals", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChatSettingsPhoto {
    @SerializedName("is_default_call_photo")
    @Nullable
    private final Boolean isDefaultCallPhoto;
    @SerializedName("is_default_photo")
    @Nullable
    private final Boolean isDefaultPhoto;
    @SerializedName("photo_100")
    @Nullable
    private final String photo100;
    @SerializedName("photo_200")
    @Nullable
    private final String photo200;
    @SerializedName("photo_50")
    @Nullable
    private final String photo50;

    public MessagesChatSettingsPhoto() {
        this(null, null, null, null, null, 31, null);
    }

    public MessagesChatSettingsPhoto(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool, @Nullable Boolean bool2) {
        this.photo50 = str;
        this.photo100 = str2;
        this.photo200 = str3;
        this.isDefaultPhoto = bool;
        this.isDefaultCallPhoto = bool2;
    }

    public static /* synthetic */ MessagesChatSettingsPhoto copy$default(MessagesChatSettingsPhoto messagesChatSettingsPhoto, String str, String str2, String str3, Boolean bool, Boolean bool2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = messagesChatSettingsPhoto.photo50;
        }
        if ((i9 & 2) != 0) {
            str2 = messagesChatSettingsPhoto.photo100;
        }
        String str4 = str2;
        if ((i9 & 4) != 0) {
            str3 = messagesChatSettingsPhoto.photo200;
        }
        String str5 = str3;
        if ((i9 & 8) != 0) {
            bool = messagesChatSettingsPhoto.isDefaultPhoto;
        }
        Boolean bool3 = bool;
        if ((i9 & 16) != 0) {
            bool2 = messagesChatSettingsPhoto.isDefaultCallPhoto;
        }
        return messagesChatSettingsPhoto.copy(str, str4, str5, bool3, bool2);
    }

    @Nullable
    public final String component1() {
        return this.photo50;
    }

    @Nullable
    public final String component2() {
        return this.photo100;
    }

    @Nullable
    public final String component3() {
        return this.photo200;
    }

    @Nullable
    public final Boolean component4() {
        return this.isDefaultPhoto;
    }

    @Nullable
    public final Boolean component5() {
        return this.isDefaultCallPhoto;
    }

    @NotNull
    public final MessagesChatSettingsPhoto copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool, @Nullable Boolean bool2) {
        return new MessagesChatSettingsPhoto(str, str2, str3, bool, bool2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChatSettingsPhoto) {
            MessagesChatSettingsPhoto messagesChatSettingsPhoto = (MessagesChatSettingsPhoto) obj;
            return Intrinsics.areEqual(this.photo50, messagesChatSettingsPhoto.photo50) && Intrinsics.areEqual(this.photo100, messagesChatSettingsPhoto.photo100) && Intrinsics.areEqual(this.photo200, messagesChatSettingsPhoto.photo200) && Intrinsics.areEqual(this.isDefaultPhoto, messagesChatSettingsPhoto.isDefaultPhoto) && Intrinsics.areEqual(this.isDefaultCallPhoto, messagesChatSettingsPhoto.isDefaultCallPhoto);
        }
        return false;
    }

    @Nullable
    public final String getPhoto100() {
        return this.photo100;
    }

    @Nullable
    public final String getPhoto200() {
        return this.photo200;
    }

    @Nullable
    public final String getPhoto50() {
        return this.photo50;
    }

    public int hashCode() {
        String str = this.photo50;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.photo100;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo200;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.isDefaultPhoto;
        int hashCode4 = (hashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isDefaultCallPhoto;
        return hashCode4 + (bool2 != null ? bool2.hashCode() : 0);
    }

    @Nullable
    public final Boolean isDefaultCallPhoto() {
        return this.isDefaultCallPhoto;
    }

    @Nullable
    public final Boolean isDefaultPhoto() {
        return this.isDefaultPhoto;
    }

    @NotNull
    public String toString() {
        String str = this.photo50;
        String str2 = this.photo100;
        String str3 = this.photo200;
        Boolean bool = this.isDefaultPhoto;
        Boolean bool2 = this.isDefaultCallPhoto;
        return "MessagesChatSettingsPhoto(photo50=" + str + ", photo100=" + str2 + ", photo200=" + str3 + ", isDefaultPhoto=" + bool + ", isDefaultCallPhoto=" + bool2 + ")";
    }

    public /* synthetic */ MessagesChatSettingsPhoto(String str, String str2, String str3, Boolean bool, Boolean bool2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : bool, (i9 & 16) != 0 ? null : bool2);
    }
}
