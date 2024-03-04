package com.linecorp.linesdk.openchat;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.android.parcel.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\t\u0010\f\u001a\u00020\rHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\rHÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;", "Landroid/os/Parcelable;", "roomId", "", "landingPageUrl", "(Ljava/lang/String;Ljava/lang/String;)V", "getLandingPageUrl", "()Ljava/lang/String;", "getRoomId", "component1", "component2", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class OpenChatRoomInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    @NotNull
    private final String landingPageUrl;
    @NotNull
    private final String roomId;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public static class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final Object createFromParcel(@NotNull Parcel parcel) {
            return new OpenChatRoomInfo(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        public final Object[] newArray(int i9) {
            return new OpenChatRoomInfo[i9];
        }
    }

    public OpenChatRoomInfo(@NotNull String str, @NotNull String str2) {
        this.roomId = str;
        this.landingPageUrl = str2;
    }

    public static /* synthetic */ OpenChatRoomInfo copy$default(OpenChatRoomInfo openChatRoomInfo, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = openChatRoomInfo.roomId;
        }
        if ((i9 & 2) != 0) {
            str2 = openChatRoomInfo.landingPageUrl;
        }
        return openChatRoomInfo.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.roomId;
    }

    @NotNull
    public final String component2() {
        return this.landingPageUrl;
    }

    @NotNull
    public final OpenChatRoomInfo copy(@NotNull String str, @NotNull String str2) {
        return new OpenChatRoomInfo(str, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof OpenChatRoomInfo) {
                OpenChatRoomInfo openChatRoomInfo = (OpenChatRoomInfo) obj;
                return Intrinsics.areEqual(this.roomId, openChatRoomInfo.roomId) && Intrinsics.areEqual(this.landingPageUrl, openChatRoomInfo.landingPageUrl);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final String getLandingPageUrl() {
        return this.landingPageUrl;
    }

    @NotNull
    public final String getRoomId() {
        return this.roomId;
    }

    public int hashCode() {
        String str = this.roomId;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.landingPageUrl;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "OpenChatRoomInfo(roomId=" + this.roomId + ", landingPageUrl=" + this.landingPageUrl + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i9) {
        parcel.writeString(this.roomId);
        parcel.writeString(this.landingPageUrl);
    }
}
