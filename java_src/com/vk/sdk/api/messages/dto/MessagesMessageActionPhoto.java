package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesMessageActionPhoto;", "", "photo50", "", "photo100", "photo200", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPhoto100", "()Ljava/lang/String;", "getPhoto200", "getPhoto50", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesMessageActionPhoto {
    @SerializedName("photo_100")
    @NotNull
    private final String photo100;
    @SerializedName("photo_200")
    @NotNull
    private final String photo200;
    @SerializedName("photo_50")
    @NotNull
    private final String photo50;

    public MessagesMessageActionPhoto(@NotNull String photo50, @NotNull String photo100, @NotNull String photo200) {
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        Intrinsics.checkNotNullParameter(photo200, "photo200");
        this.photo50 = photo50;
        this.photo100 = photo100;
        this.photo200 = photo200;
    }

    public static /* synthetic */ MessagesMessageActionPhoto copy$default(MessagesMessageActionPhoto messagesMessageActionPhoto, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = messagesMessageActionPhoto.photo50;
        }
        if ((i9 & 2) != 0) {
            str2 = messagesMessageActionPhoto.photo100;
        }
        if ((i9 & 4) != 0) {
            str3 = messagesMessageActionPhoto.photo200;
        }
        return messagesMessageActionPhoto.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.photo50;
    }

    @NotNull
    public final String component2() {
        return this.photo100;
    }

    @NotNull
    public final String component3() {
        return this.photo200;
    }

    @NotNull
    public final MessagesMessageActionPhoto copy(@NotNull String photo50, @NotNull String photo100, @NotNull String photo200) {
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        Intrinsics.checkNotNullParameter(photo200, "photo200");
        return new MessagesMessageActionPhoto(photo50, photo100, photo200);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesMessageActionPhoto) {
            MessagesMessageActionPhoto messagesMessageActionPhoto = (MessagesMessageActionPhoto) obj;
            return Intrinsics.areEqual(this.photo50, messagesMessageActionPhoto.photo50) && Intrinsics.areEqual(this.photo100, messagesMessageActionPhoto.photo100) && Intrinsics.areEqual(this.photo200, messagesMessageActionPhoto.photo200);
        }
        return false;
    }

    @NotNull
    public final String getPhoto100() {
        return this.photo100;
    }

    @NotNull
    public final String getPhoto200() {
        return this.photo200;
    }

    @NotNull
    public final String getPhoto50() {
        return this.photo50;
    }

    public int hashCode() {
        return (((this.photo50.hashCode() * 31) + this.photo100.hashCode()) * 31) + this.photo200.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.photo50;
        String str2 = this.photo100;
        String str3 = this.photo200;
        return "MessagesMessageActionPhoto(photo50=" + str + ", photo100=" + str2 + ", photo200=" + str3 + ")";
    }
}
