package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\t\u0010\u0015\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;", "Landroid/os/Parcelable;", Contants.USER_ID, "", "smallImg", "dressHead", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDressHead", "()Ljava/lang/String;", "getSmallImg", "getUserId", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomViewerModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomViewerModel> CREATOR = new Creator();
    @Nullable
    private final String dressHead;
    @Nullable
    private final String smallImg;
    @Nullable
    private final String userId;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomViewerModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomViewerModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomViewerModel(parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomViewerModel[] newArray(int i9) {
            return new VoiceRoomViewerModel[i9];
        }
    }

    public VoiceRoomViewerModel(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.userId = str;
        this.smallImg = str2;
        this.dressHead = str3;
    }

    public static /* synthetic */ VoiceRoomViewerModel copy$default(VoiceRoomViewerModel voiceRoomViewerModel, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = voiceRoomViewerModel.userId;
        }
        if ((i9 & 2) != 0) {
            str2 = voiceRoomViewerModel.smallImg;
        }
        if ((i9 & 4) != 0) {
            str3 = voiceRoomViewerModel.dressHead;
        }
        return voiceRoomViewerModel.copy(str, str2, str3);
    }

    @Nullable
    public final String component1() {
        return this.userId;
    }

    @Nullable
    public final String component2() {
        return this.smallImg;
    }

    @Nullable
    public final String component3() {
        return this.dressHead;
    }

    @NotNull
    public final VoiceRoomViewerModel copy(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new VoiceRoomViewerModel(str, str2, str3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof VoiceRoomViewerModel) && Intrinsics.areEqual(this.userId, ((VoiceRoomViewerModel) obj).userId);
    }

    @Nullable
    public final String getDressHead() {
        return this.dressHead;
    }

    @Nullable
    public final String getSmallImg() {
        return this.smallImg;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.userId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.smallImg;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.dressHead;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "VoiceRoomViewerModel(userId=" + this.userId + ", smallImg=" + this.smallImg + ", dressHead=" + this.dressHead + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.userId);
        out.writeString(this.smallImg);
        out.writeString(this.dressHead);
    }
}
