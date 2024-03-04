package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;", "Landroid/os/Parcelable;", "signatureExpireSeconds", "", "userSig", "", "sdkAppId", "(ILjava/lang/String;I)V", "getSdkAppId", "()I", "setSdkAppId", "(I)V", "getSignatureExpireSeconds", "setSignatureExpireSeconds", "getUserSig", "()Ljava/lang/String;", "setUserSig", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomSeatTokenModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomSeatTokenModel> CREATOR = new Creator();
    private int sdkAppId;
    private int signatureExpireSeconds;
    @Nullable
    private String userSig;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomSeatTokenModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomSeatTokenModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomSeatTokenModel(parcel.readInt(), parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomSeatTokenModel[] newArray(int i9) {
            return new VoiceRoomSeatTokenModel[i9];
        }
    }

    public VoiceRoomSeatTokenModel(int i9, @Nullable String str, int i10) {
        this.signatureExpireSeconds = i9;
        this.userSig = str;
        this.sdkAppId = i10;
    }

    public static /* synthetic */ VoiceRoomSeatTokenModel copy$default(VoiceRoomSeatTokenModel voiceRoomSeatTokenModel, int i9, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = voiceRoomSeatTokenModel.signatureExpireSeconds;
        }
        if ((i11 & 2) != 0) {
            str = voiceRoomSeatTokenModel.userSig;
        }
        if ((i11 & 4) != 0) {
            i10 = voiceRoomSeatTokenModel.sdkAppId;
        }
        return voiceRoomSeatTokenModel.copy(i9, str, i10);
    }

    public final int component1() {
        return this.signatureExpireSeconds;
    }

    @Nullable
    public final String component2() {
        return this.userSig;
    }

    public final int component3() {
        return this.sdkAppId;
    }

    @NotNull
    public final VoiceRoomSeatTokenModel copy(int i9, @Nullable String str, int i10) {
        return new VoiceRoomSeatTokenModel(i9, str, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomSeatTokenModel) {
            VoiceRoomSeatTokenModel voiceRoomSeatTokenModel = (VoiceRoomSeatTokenModel) obj;
            return this.signatureExpireSeconds == voiceRoomSeatTokenModel.signatureExpireSeconds && Intrinsics.areEqual(this.userSig, voiceRoomSeatTokenModel.userSig) && this.sdkAppId == voiceRoomSeatTokenModel.sdkAppId;
        }
        return false;
    }

    public final int getSdkAppId() {
        return this.sdkAppId;
    }

    public final int getSignatureExpireSeconds() {
        return this.signatureExpireSeconds;
    }

    @Nullable
    public final String getUserSig() {
        return this.userSig;
    }

    public int hashCode() {
        int i9 = this.signatureExpireSeconds * 31;
        String str = this.userSig;
        return ((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.sdkAppId;
    }

    public final void setSdkAppId(int i9) {
        this.sdkAppId = i9;
    }

    public final void setSignatureExpireSeconds(int i9) {
        this.signatureExpireSeconds = i9;
    }

    public final void setUserSig(@Nullable String str) {
        this.userSig = str;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomSeatTokenModel(signatureExpireSeconds=" + this.signatureExpireSeconds + ", userSig=" + this.userSig + ", sdkAppId=" + this.sdkAppId + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.signatureExpireSeconds);
        out.writeString(this.userSig);
        out.writeInt(this.sdkAppId);
    }
}
