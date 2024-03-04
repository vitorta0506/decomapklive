package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\t\u0010\f\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;", "Landroid/os/Parcelable;", "joinRoomMax", "", "joinRoomMin", "(II)V", "getJoinRoomMax", "()I", "getJoinRoomMin", "component1", "component2", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberFeeConf implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomMemberFeeConf> CREATOR = new Creator();
    private final int joinRoomMax;
    private final int joinRoomMin;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomMemberFeeConf> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberFeeConf createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomMemberFeeConf(parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberFeeConf[] newArray(int i9) {
            return new VoiceRoomMemberFeeConf[i9];
        }
    }

    public VoiceRoomMemberFeeConf(int i9, int i10) {
        this.joinRoomMax = i9;
        this.joinRoomMin = i10;
    }

    public static /* synthetic */ VoiceRoomMemberFeeConf copy$default(VoiceRoomMemberFeeConf voiceRoomMemberFeeConf, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = voiceRoomMemberFeeConf.joinRoomMax;
        }
        if ((i11 & 2) != 0) {
            i10 = voiceRoomMemberFeeConf.joinRoomMin;
        }
        return voiceRoomMemberFeeConf.copy(i9, i10);
    }

    public final int component1() {
        return this.joinRoomMax;
    }

    public final int component2() {
        return this.joinRoomMin;
    }

    @NotNull
    public final VoiceRoomMemberFeeConf copy(int i9, int i10) {
        return new VoiceRoomMemberFeeConf(i9, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomMemberFeeConf) {
            VoiceRoomMemberFeeConf voiceRoomMemberFeeConf = (VoiceRoomMemberFeeConf) obj;
            return this.joinRoomMax == voiceRoomMemberFeeConf.joinRoomMax && this.joinRoomMin == voiceRoomMemberFeeConf.joinRoomMin;
        }
        return false;
    }

    public final int getJoinRoomMax() {
        return this.joinRoomMax;
    }

    public final int getJoinRoomMin() {
        return this.joinRoomMin;
    }

    public int hashCode() {
        return (this.joinRoomMax * 31) + this.joinRoomMin;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomMemberFeeConf(joinRoomMax=" + this.joinRoomMax + ", joinRoomMin=" + this.joinRoomMin + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.joinRoomMax);
        out.writeInt(this.joinRoomMin);
    }
}
