package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.InputDeviceCompat;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.xmagic.XmagicConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import o7.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u00012\u00020\u0002:\u001a\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001eB\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004\u0082\u0001\u001a\u001f !\"#$%&'()*+,-./012345678¨\u00069"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "Lo7/a;", "Landroid/os/Parcelable;", "<init>", "()V", "VoiceRoomCMDAddAdminMessageModel", "VoiceRoomCMDCloseMicroMessageModel", "VoiceRoomCMDFeeChangeMessageModel", "VoiceRoomCMDFreeze", "VoiceRoomCMDInviteMessageModel", "VoiceRoomCMDKickMessageModel", "VoiceRoomCMDLockSeatMessageModel", "VoiceRoomCMDMuteModel", "VoiceRoomCMDNatureModel", "VoiceRoomCMDOpenMicroMessageModel", "VoiceRoomCMDRemoveAdminMessageModel", "VoiceRoomCMDRemoveMemberMessageModel", "VoiceRoomCMDReset", "VoiceRoomCMDRoomSettingChangeMessageModel", "VoiceRoomCMDSeatListMessageModel", "VoiceRoomCMDSeatModeMessageModel", "VoiceRoomCMDSwitchSeatMessageModel", "VoiceRoomCMDTobeMemberMessageModel", "VoiceRoomCMDUnMuteModel", "VoiceRoomCMDUnlockSeatMessageModel", "VoiceRoomCMDUserEnterRoomMessageModel", "VoiceRoomCMDUserLeaveRoomMessageModel", "VoiceRoomCMDUserLeaveSeatMessageModel", "VoiceRoomCMDUserOnSeatMessageModel", "VoiceRoomCMDViewerModel", "VoiceRoomCMDVoiceRoomInfoMessageModel", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDNatureModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class VoiceRoomCMDMessageModel implements a, Parcelable {

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003JC\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000b\"\u0004\b\u0017\u0010\r¨\u0006*"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "nickName", "smallImg", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNickName", "()Ljava/lang/String;", "setNickName", "(Ljava/lang/String;)V", "getRoomId", "setRoomId", "getSmallImg", "setSmallImg", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDAddAdminMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDAddAdminMessageModel> CREATOR = new Creator();
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @Nullable
        private String smallImg;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDAddAdminMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDAddAdminMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDAddAdminMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDAddAdminMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDAddAdminMessageModel[i9];
            }
        }

        public VoiceRoomCMDAddAdminMessageModel() {
            this(0, null, null, null, null, 31, null);
        }

        public /* synthetic */ VoiceRoomCMDAddAdminMessageModel(int i9, String str, String str2, String str3, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? TypedValues.PositionType.TYPE_POSITION_TYPE : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) == 0 ? str4 : "");
        }

        public static /* synthetic */ VoiceRoomCMDAddAdminMessageModel copy$default(VoiceRoomCMDAddAdminMessageModel voiceRoomCMDAddAdminMessageModel, int i9, String str, String str2, String str3, String str4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDAddAdminMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDAddAdminMessageModel.roomId;
            }
            String str5 = str;
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDAddAdminMessageModel.userId;
            }
            String str6 = str2;
            if ((i10 & 8) != 0) {
                str3 = voiceRoomCMDAddAdminMessageModel.nickName;
            }
            String str7 = str3;
            if ((i10 & 16) != 0) {
                str4 = voiceRoomCMDAddAdminMessageModel.smallImg;
            }
            return voiceRoomCMDAddAdminMessageModel.copy(i9, str5, str6, str7, str4);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.nickName;
        }

        @Nullable
        public final String component5() {
            return this.smallImg;
        }

        @NotNull
        public final VoiceRoomCMDAddAdminMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            return new VoiceRoomCMDAddAdminMessageModel(i9, str, str2, str3, str4);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDAddAdminMessageModel) {
                VoiceRoomCMDAddAdminMessageModel voiceRoomCMDAddAdminMessageModel = (VoiceRoomCMDAddAdminMessageModel) obj;
                return this.type == voiceRoomCMDAddAdminMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDAddAdminMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDAddAdminMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDAddAdminMessageModel.nickName) && Intrinsics.areEqual(this.smallImg, voiceRoomCMDAddAdminMessageModel.smallImg);
            }
            return false;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final String getSmallImg() {
            return this.smallImg;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.smallImg;
            return hashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setSmallImg(@Nullable String str) {
            this.smallImg = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDAddAdminMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", smallImg=" + this.smallImg + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.smallImg);
        }

        public VoiceRoomCMDAddAdminMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.smallImg = str4;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "index", "(ILjava/lang/String;I)V", "getIndex", "()I", "setIndex", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "setType", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDCloseMicroMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDCloseMicroMessageModel> CREATOR = new Creator();
        private int index;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDCloseMicroMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDCloseMicroMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDCloseMicroMessageModel(parcel.readInt(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDCloseMicroMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDCloseMicroMessageModel[i9];
            }
        }

        public VoiceRoomCMDCloseMicroMessageModel() {
            this(0, null, 0, 7, null);
        }

        public /* synthetic */ VoiceRoomCMDCloseMicroMessageModel(int i9, String str, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 523 : i9, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? 1 : i10);
        }

        public static /* synthetic */ VoiceRoomCMDCloseMicroMessageModel copy$default(VoiceRoomCMDCloseMicroMessageModel voiceRoomCMDCloseMicroMessageModel, int i9, String str, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDCloseMicroMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDCloseMicroMessageModel.roomId;
            }
            if ((i11 & 4) != 0) {
                i10 = voiceRoomCMDCloseMicroMessageModel.index;
            }
            return voiceRoomCMDCloseMicroMessageModel.copy(i9, str, i10);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        public final int component3() {
            return this.index;
        }

        @NotNull
        public final VoiceRoomCMDCloseMicroMessageModel copy(int i9, @Nullable String str, int i10) {
            return new VoiceRoomCMDCloseMicroMessageModel(i9, str, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDCloseMicroMessageModel) {
                VoiceRoomCMDCloseMicroMessageModel voiceRoomCMDCloseMicroMessageModel = (VoiceRoomCMDCloseMicroMessageModel) obj;
                return this.type == voiceRoomCMDCloseMicroMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDCloseMicroMessageModel.roomId) && this.index == voiceRoomCMDCloseMicroMessageModel.index;
            }
            return false;
        }

        public final int getIndex() {
            return this.index;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            return ((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.index;
        }

        public final void setIndex(int i9) {
            this.index = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDCloseMicroMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", index=" + this.index + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeInt(this.index);
        }

        public VoiceRoomCMDCloseMicroMessageModel(int i9, @Nullable String str, int i10) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.index = i10;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "fee", "(ILjava/lang/String;I)V", "getFee", "()I", "setFee", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "setType", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDFeeChangeMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDFeeChangeMessageModel> CREATOR = new Creator();
        private int fee;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDFeeChangeMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDFeeChangeMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDFeeChangeMessageModel(parcel.readInt(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDFeeChangeMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDFeeChangeMessageModel[i9];
            }
        }

        public VoiceRoomCMDFeeChangeMessageModel() {
            this(0, null, 0, 7, null);
        }

        public /* synthetic */ VoiceRoomCMDFeeChangeMessageModel(int i9, String str, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 507 : i9, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? 0 : i10);
        }

        public static /* synthetic */ VoiceRoomCMDFeeChangeMessageModel copy$default(VoiceRoomCMDFeeChangeMessageModel voiceRoomCMDFeeChangeMessageModel, int i9, String str, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDFeeChangeMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDFeeChangeMessageModel.roomId;
            }
            if ((i11 & 4) != 0) {
                i10 = voiceRoomCMDFeeChangeMessageModel.fee;
            }
            return voiceRoomCMDFeeChangeMessageModel.copy(i9, str, i10);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        public final int component3() {
            return this.fee;
        }

        @NotNull
        public final VoiceRoomCMDFeeChangeMessageModel copy(int i9, @Nullable String str, int i10) {
            return new VoiceRoomCMDFeeChangeMessageModel(i9, str, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDFeeChangeMessageModel) {
                VoiceRoomCMDFeeChangeMessageModel voiceRoomCMDFeeChangeMessageModel = (VoiceRoomCMDFeeChangeMessageModel) obj;
                return this.type == voiceRoomCMDFeeChangeMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDFeeChangeMessageModel.roomId) && this.fee == voiceRoomCMDFeeChangeMessageModel.fee;
            }
            return false;
        }

        public final int getFee() {
            return this.fee;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            return ((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.fee;
        }

        public final void setFee(int i9) {
            this.fee = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDFeeChangeMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", fee=" + this.fee + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeInt(this.fee);
        }

        public VoiceRoomCMDFeeChangeMessageModel(int i9, @Nullable String str, int i10) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.fee = i10;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J+\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "reason", "(ILjava/lang/String;Ljava/lang/String;)V", "getReason", "()Ljava/lang/String;", "setReason", "(Ljava/lang/String;)V", "getRoomId", "setRoomId", "getType", "()I", "setType", "(I)V", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDFreeze extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDFreeze> CREATOR = new Creator();
        @Nullable
        private String reason;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDFreeze> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDFreeze createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDFreeze(parcel.readInt(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDFreeze[] newArray(int i9) {
                return new VoiceRoomCMDFreeze[i9];
            }
        }

        public VoiceRoomCMDFreeze() {
            this(0, null, null, 7, null);
        }

        public /* synthetic */ VoiceRoomCMDFreeze(int i9, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 503 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2);
        }

        public static /* synthetic */ VoiceRoomCMDFreeze copy$default(VoiceRoomCMDFreeze voiceRoomCMDFreeze, int i9, String str, String str2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDFreeze.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDFreeze.roomId;
            }
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDFreeze.reason;
            }
            return voiceRoomCMDFreeze.copy(i9, str, str2);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.reason;
        }

        @NotNull
        public final VoiceRoomCMDFreeze copy(int i9, @Nullable String str, @Nullable String str2) {
            return new VoiceRoomCMDFreeze(i9, str, str2);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDFreeze) {
                VoiceRoomCMDFreeze voiceRoomCMDFreeze = (VoiceRoomCMDFreeze) obj;
                return this.type == voiceRoomCMDFreeze.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDFreeze.roomId) && Intrinsics.areEqual(this.reason, voiceRoomCMDFreeze.reason);
            }
            return false;
        }

        @Nullable
        public final String getReason() {
            return this.reason;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.reason;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final void setReason(@Nullable String str) {
            this.reason = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDFreeze(type=" + this.type + ", roomId=" + this.roomId + ", reason=" + this.reason + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.reason);
        }

        public VoiceRoomCMDFreeze(int i9, @Nullable String str, @Nullable String str2) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.reason = str2;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J[\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020\u0005HÖ\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u00062"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "nickName", "img", "chatGroupId", "countryLogo", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getChatGroupId", "()Ljava/lang/String;", "setChatGroupId", "(Ljava/lang/String;)V", "getCountryLogo", "setCountryLogo", "getImg", "setImg", "getNickName", "setNickName", "getRoomId", "setRoomId", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDInviteMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDInviteMessageModel> CREATOR = new Creator();
        @Nullable
        private String chatGroupId;
        @Nullable
        private String countryLogo;
        @Nullable
        private String img;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDInviteMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDInviteMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDInviteMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDInviteMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDInviteMessageModel[i9];
            }
        }

        public VoiceRoomCMDInviteMessageModel() {
            this(0, null, null, null, null, null, null, 127, null);
        }

        public /* synthetic */ VoiceRoomCMDInviteMessageModel(int i9, String str, String str2, String str3, String str4, String str5, String str6, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 526 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) != 0 ? "" : str4, (i10 & 32) != 0 ? "" : str5, (i10 & 64) == 0 ? str6 : "");
        }

        public static /* synthetic */ VoiceRoomCMDInviteMessageModel copy$default(VoiceRoomCMDInviteMessageModel voiceRoomCMDInviteMessageModel, int i9, String str, String str2, String str3, String str4, String str5, String str6, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDInviteMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDInviteMessageModel.roomId;
            }
            String str7 = str;
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDInviteMessageModel.userId;
            }
            String str8 = str2;
            if ((i10 & 8) != 0) {
                str3 = voiceRoomCMDInviteMessageModel.nickName;
            }
            String str9 = str3;
            if ((i10 & 16) != 0) {
                str4 = voiceRoomCMDInviteMessageModel.img;
            }
            String str10 = str4;
            if ((i10 & 32) != 0) {
                str5 = voiceRoomCMDInviteMessageModel.chatGroupId;
            }
            String str11 = str5;
            if ((i10 & 64) != 0) {
                str6 = voiceRoomCMDInviteMessageModel.countryLogo;
            }
            return voiceRoomCMDInviteMessageModel.copy(i9, str7, str8, str9, str10, str11, str6);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.nickName;
        }

        @Nullable
        public final String component5() {
            return this.img;
        }

        @Nullable
        public final String component6() {
            return this.chatGroupId;
        }

        @Nullable
        public final String component7() {
            return this.countryLogo;
        }

        @NotNull
        public final VoiceRoomCMDInviteMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
            return new VoiceRoomCMDInviteMessageModel(i9, str, str2, str3, str4, str5, str6);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDInviteMessageModel) {
                VoiceRoomCMDInviteMessageModel voiceRoomCMDInviteMessageModel = (VoiceRoomCMDInviteMessageModel) obj;
                return this.type == voiceRoomCMDInviteMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDInviteMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDInviteMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDInviteMessageModel.nickName) && Intrinsics.areEqual(this.img, voiceRoomCMDInviteMessageModel.img) && Intrinsics.areEqual(this.chatGroupId, voiceRoomCMDInviteMessageModel.chatGroupId) && Intrinsics.areEqual(this.countryLogo, voiceRoomCMDInviteMessageModel.countryLogo);
            }
            return false;
        }

        @Nullable
        public final String getChatGroupId() {
            return this.chatGroupId;
        }

        @Nullable
        public final String getCountryLogo() {
            return this.countryLogo;
        }

        @Nullable
        public final String getImg() {
            return this.img;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.img;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.chatGroupId;
            int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.countryLogo;
            return hashCode5 + (str6 != null ? str6.hashCode() : 0);
        }

        public final void setChatGroupId(@Nullable String str) {
            this.chatGroupId = str;
        }

        public final void setCountryLogo(@Nullable String str) {
            this.countryLogo = str;
        }

        public final void setImg(@Nullable String str) {
            this.img = str;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDInviteMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", img=" + this.img + ", chatGroupId=" + this.chatGroupId + ", countryLogo=" + this.countryLogo + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.img);
            out.writeString(this.chatGroupId);
            out.writeString(this.countryLogo);
        }

        public VoiceRoomCMDInviteMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.img = str4;
            this.chatGroupId = str5;
            this.countryLogo = str6;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J[\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020\u0005HÖ\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u00062"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "toUserId", "nickName", "toNickName", "toImg", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNickName", "()Ljava/lang/String;", "setNickName", "(Ljava/lang/String;)V", "getRoomId", "setRoomId", "getToImg", "setToImg", "getToNickName", "setToNickName", "getToUserId", "setToUserId", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDKickMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDKickMessageModel> CREATOR = new Creator();
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @Nullable
        private String toImg;
        @Nullable
        private String toNickName;
        @Nullable
        private String toUserId;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDKickMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDKickMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDKickMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDKickMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDKickMessageModel[i9];
            }
        }

        public VoiceRoomCMDKickMessageModel() {
            this(0, null, null, null, null, null, null, 127, null);
        }

        public /* synthetic */ VoiceRoomCMDKickMessageModel(int i9, String str, String str2, String str3, String str4, String str5, String str6, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 514 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) != 0 ? "" : str4, (i10 & 32) != 0 ? "" : str5, (i10 & 64) == 0 ? str6 : "");
        }

        public static /* synthetic */ VoiceRoomCMDKickMessageModel copy$default(VoiceRoomCMDKickMessageModel voiceRoomCMDKickMessageModel, int i9, String str, String str2, String str3, String str4, String str5, String str6, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDKickMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDKickMessageModel.roomId;
            }
            String str7 = str;
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDKickMessageModel.userId;
            }
            String str8 = str2;
            if ((i10 & 8) != 0) {
                str3 = voiceRoomCMDKickMessageModel.toUserId;
            }
            String str9 = str3;
            if ((i10 & 16) != 0) {
                str4 = voiceRoomCMDKickMessageModel.nickName;
            }
            String str10 = str4;
            if ((i10 & 32) != 0) {
                str5 = voiceRoomCMDKickMessageModel.toNickName;
            }
            String str11 = str5;
            if ((i10 & 64) != 0) {
                str6 = voiceRoomCMDKickMessageModel.toImg;
            }
            return voiceRoomCMDKickMessageModel.copy(i9, str7, str8, str9, str10, str11, str6);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.toUserId;
        }

        @Nullable
        public final String component5() {
            return this.nickName;
        }

        @Nullable
        public final String component6() {
            return this.toNickName;
        }

        @Nullable
        public final String component7() {
            return this.toImg;
        }

        @NotNull
        public final VoiceRoomCMDKickMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
            return new VoiceRoomCMDKickMessageModel(i9, str, str2, str3, str4, str5, str6);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDKickMessageModel) {
                VoiceRoomCMDKickMessageModel voiceRoomCMDKickMessageModel = (VoiceRoomCMDKickMessageModel) obj;
                return this.type == voiceRoomCMDKickMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDKickMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDKickMessageModel.userId) && Intrinsics.areEqual(this.toUserId, voiceRoomCMDKickMessageModel.toUserId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDKickMessageModel.nickName) && Intrinsics.areEqual(this.toNickName, voiceRoomCMDKickMessageModel.toNickName) && Intrinsics.areEqual(this.toImg, voiceRoomCMDKickMessageModel.toImg);
            }
            return false;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final String getToImg() {
            return this.toImg;
        }

        @Nullable
        public final String getToNickName() {
            return this.toNickName;
        }

        @Nullable
        public final String getToUserId() {
            return this.toUserId;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.toUserId;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.nickName;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.toNickName;
            int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.toImg;
            return hashCode5 + (str6 != null ? str6.hashCode() : 0);
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setToImg(@Nullable String str) {
            this.toImg = str;
        }

        public final void setToNickName(@Nullable String str) {
            this.toNickName = str;
        }

        public final void setToUserId(@Nullable String str) {
            this.toUserId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDKickMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", toUserId=" + this.toUserId + ", nickName=" + this.nickName + ", toNickName=" + this.toNickName + ", toImg=" + this.toImg + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.toUserId);
            out.writeString(this.nickName);
            out.writeString(this.toNickName);
            out.writeString(this.toImg);
        }

        public VoiceRoomCMDKickMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.toUserId = str3;
            this.nickName = str4;
            this.toNickName = str5;
            this.toImg = str6;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "index", "(ILjava/lang/String;I)V", "getIndex", "()I", "setIndex", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "setType", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDLockSeatMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDLockSeatMessageModel> CREATOR = new Creator();
        private int index;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDLockSeatMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDLockSeatMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDLockSeatMessageModel(parcel.readInt(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDLockSeatMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDLockSeatMessageModel[i9];
            }
        }

        public VoiceRoomCMDLockSeatMessageModel() {
            this(0, null, 0, 7, null);
        }

        public /* synthetic */ VoiceRoomCMDLockSeatMessageModel(int i9, String str, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 519 : i9, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? 1 : i10);
        }

        public static /* synthetic */ VoiceRoomCMDLockSeatMessageModel copy$default(VoiceRoomCMDLockSeatMessageModel voiceRoomCMDLockSeatMessageModel, int i9, String str, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDLockSeatMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDLockSeatMessageModel.roomId;
            }
            if ((i11 & 4) != 0) {
                i10 = voiceRoomCMDLockSeatMessageModel.index;
            }
            return voiceRoomCMDLockSeatMessageModel.copy(i9, str, i10);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        public final int component3() {
            return this.index;
        }

        @NotNull
        public final VoiceRoomCMDLockSeatMessageModel copy(int i9, @Nullable String str, int i10) {
            return new VoiceRoomCMDLockSeatMessageModel(i9, str, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDLockSeatMessageModel) {
                VoiceRoomCMDLockSeatMessageModel voiceRoomCMDLockSeatMessageModel = (VoiceRoomCMDLockSeatMessageModel) obj;
                return this.type == voiceRoomCMDLockSeatMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDLockSeatMessageModel.roomId) && this.index == voiceRoomCMDLockSeatMessageModel.index;
            }
            return false;
        }

        public final int getIndex() {
            return this.index;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            return ((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.index;
        }

        public final void setIndex(int i9) {
            this.index = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDLockSeatMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", index=" + this.index + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeInt(this.index);
        }

        public VoiceRoomCMDLockSeatMessageModel(int i9, @Nullable String str, int i10) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.index = i10;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jg\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\t\u00100\u001a\u00020\u0005HÖ\u0001J\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000e\"\u0004\b \u0010\u0010¨\u00066"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "toUserId", "nickName", "toNickName", "img", "toImg", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getImg", "()Ljava/lang/String;", "setImg", "(Ljava/lang/String;)V", "getNickName", "setNickName", "getRoomId", "setRoomId", "getToImg", "setToImg", "getToNickName", "setToNickName", "getToUserId", "setToUserId", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDMuteModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDMuteModel> CREATOR = new Creator();
        @Nullable
        private String img;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @Nullable
        private String toImg;
        @Nullable
        private String toNickName;
        @Nullable
        private String toUserId;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDMuteModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDMuteModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDMuteModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDMuteModel[] newArray(int i9) {
                return new VoiceRoomCMDMuteModel[i9];
            }
        }

        public VoiceRoomCMDMuteModel() {
            this(0, null, null, null, null, null, null, null, 255, null);
        }

        public /* synthetic */ VoiceRoomCMDMuteModel(int i9, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 516 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) != 0 ? "" : str4, (i10 & 32) != 0 ? "" : str5, (i10 & 64) != 0 ? "" : str6, (i10 & 128) == 0 ? str7 : "");
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.toUserId;
        }

        @Nullable
        public final String component5() {
            return this.nickName;
        }

        @Nullable
        public final String component6() {
            return this.toNickName;
        }

        @Nullable
        public final String component7() {
            return this.img;
        }

        @Nullable
        public final String component8() {
            return this.toImg;
        }

        @NotNull
        public final VoiceRoomCMDMuteModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
            return new VoiceRoomCMDMuteModel(i9, str, str2, str3, str4, str5, str6, str7);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDMuteModel) {
                VoiceRoomCMDMuteModel voiceRoomCMDMuteModel = (VoiceRoomCMDMuteModel) obj;
                return this.type == voiceRoomCMDMuteModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDMuteModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDMuteModel.userId) && Intrinsics.areEqual(this.toUserId, voiceRoomCMDMuteModel.toUserId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDMuteModel.nickName) && Intrinsics.areEqual(this.toNickName, voiceRoomCMDMuteModel.toNickName) && Intrinsics.areEqual(this.img, voiceRoomCMDMuteModel.img) && Intrinsics.areEqual(this.toImg, voiceRoomCMDMuteModel.toImg);
            }
            return false;
        }

        @Nullable
        public final String getImg() {
            return this.img;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final String getToImg() {
            return this.toImg;
        }

        @Nullable
        public final String getToNickName() {
            return this.toNickName;
        }

        @Nullable
        public final String getToUserId() {
            return this.toUserId;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.toUserId;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.nickName;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.toNickName;
            int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.img;
            int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.toImg;
            return hashCode6 + (str7 != null ? str7.hashCode() : 0);
        }

        public final void setImg(@Nullable String str) {
            this.img = str;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setToImg(@Nullable String str) {
            this.toImg = str;
        }

        public final void setToNickName(@Nullable String str) {
            this.toNickName = str;
        }

        public final void setToUserId(@Nullable String str) {
            this.toUserId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDMuteModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", toUserId=" + this.toUserId + ", nickName=" + this.nickName + ", toNickName=" + this.toNickName + ", img=" + this.img + ", toImg=" + this.toImg + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.toUserId);
            out.writeString(this.nickName);
            out.writeString(this.toNickName);
            out.writeString(this.img);
            out.writeString(this.toImg);
        }

        public VoiceRoomCMDMuteModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.toUserId = str3;
            this.nickName = str4;
            this.toNickName = str5;
            this.img = str6;
            this.toImg = str7;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDNatureModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID, "roomId", "", "(IILjava/lang/String;)V", "getNature", "()I", "setNature", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "setType", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDNatureModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDNatureModel> CREATOR = new Creator();
        private int nature;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDNatureModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDNatureModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDNatureModel(parcel.readInt(), parcel.readInt(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDNatureModel[] newArray(int i9) {
                return new VoiceRoomCMDNatureModel[i9];
            }
        }

        public /* synthetic */ VoiceRoomCMDNatureModel(int i9, int i10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 505 : i9, i10, (i11 & 4) != 0 ? "" : str);
        }

        public static /* synthetic */ VoiceRoomCMDNatureModel copy$default(VoiceRoomCMDNatureModel voiceRoomCMDNatureModel, int i9, int i10, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDNatureModel.type;
            }
            if ((i11 & 2) != 0) {
                i10 = voiceRoomCMDNatureModel.nature;
            }
            if ((i11 & 4) != 0) {
                str = voiceRoomCMDNatureModel.roomId;
            }
            return voiceRoomCMDNatureModel.copy(i9, i10, str);
        }

        public final int component1() {
            return this.type;
        }

        public final int component2() {
            return this.nature;
        }

        @Nullable
        public final String component3() {
            return this.roomId;
        }

        @NotNull
        public final VoiceRoomCMDNatureModel copy(int i9, int i10, @Nullable String str) {
            return new VoiceRoomCMDNatureModel(i9, i10, str);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDNatureModel) {
                VoiceRoomCMDNatureModel voiceRoomCMDNatureModel = (VoiceRoomCMDNatureModel) obj;
                return this.type == voiceRoomCMDNatureModel.type && this.nature == voiceRoomCMDNatureModel.nature && Intrinsics.areEqual(this.roomId, voiceRoomCMDNatureModel.roomId);
            }
            return false;
        }

        public final int getNature() {
            return this.nature;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = ((this.type * 31) + this.nature) * 31;
            String str = this.roomId;
            return i9 + (str == null ? 0 : str.hashCode());
        }

        public final void setNature(int i9) {
            this.nature = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDNatureModel(type=" + this.type + ", nature=" + this.nature + ", roomId=" + this.roomId + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeInt(this.nature);
            out.writeString(this.roomId);
        }

        public VoiceRoomCMDNatureModel(int i9, int i10, @Nullable String str) {
            super(null);
            this.type = i9;
            this.nature = i10;
            this.roomId = str;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "index", "(ILjava/lang/String;I)V", "getIndex", "()I", "setIndex", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "setType", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDOpenMicroMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDOpenMicroMessageModel> CREATOR = new Creator();
        private int index;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDOpenMicroMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDOpenMicroMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDOpenMicroMessageModel(parcel.readInt(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDOpenMicroMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDOpenMicroMessageModel[i9];
            }
        }

        public VoiceRoomCMDOpenMicroMessageModel() {
            this(0, null, 0, 7, null);
        }

        public /* synthetic */ VoiceRoomCMDOpenMicroMessageModel(int i9, String str, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 524 : i9, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? 1 : i10);
        }

        public static /* synthetic */ VoiceRoomCMDOpenMicroMessageModel copy$default(VoiceRoomCMDOpenMicroMessageModel voiceRoomCMDOpenMicroMessageModel, int i9, String str, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDOpenMicroMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDOpenMicroMessageModel.roomId;
            }
            if ((i11 & 4) != 0) {
                i10 = voiceRoomCMDOpenMicroMessageModel.index;
            }
            return voiceRoomCMDOpenMicroMessageModel.copy(i9, str, i10);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        public final int component3() {
            return this.index;
        }

        @NotNull
        public final VoiceRoomCMDOpenMicroMessageModel copy(int i9, @Nullable String str, int i10) {
            return new VoiceRoomCMDOpenMicroMessageModel(i9, str, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDOpenMicroMessageModel) {
                VoiceRoomCMDOpenMicroMessageModel voiceRoomCMDOpenMicroMessageModel = (VoiceRoomCMDOpenMicroMessageModel) obj;
                return this.type == voiceRoomCMDOpenMicroMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDOpenMicroMessageModel.roomId) && this.index == voiceRoomCMDOpenMicroMessageModel.index;
            }
            return false;
        }

        public final int getIndex() {
            return this.index;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            return ((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.index;
        }

        public final void setIndex(int i9) {
            this.index = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDOpenMicroMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", index=" + this.index + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeInt(this.index);
        }

        public VoiceRoomCMDOpenMicroMessageModel(int i9, @Nullable String str, int i10) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.index = i10;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003JC\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000b\"\u0004\b\u0017\u0010\r¨\u0006*"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "nickName", "smallImg", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNickName", "()Ljava/lang/String;", "setNickName", "(Ljava/lang/String;)V", "getRoomId", "setRoomId", "getSmallImg", "setSmallImg", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDRemoveAdminMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDRemoveAdminMessageModel> CREATOR = new Creator();
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @Nullable
        private String smallImg;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDRemoveAdminMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDRemoveAdminMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDRemoveAdminMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDRemoveAdminMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDRemoveAdminMessageModel[i9];
            }
        }

        public VoiceRoomCMDRemoveAdminMessageModel() {
            this(0, null, null, null, null, 31, null);
        }

        public /* synthetic */ VoiceRoomCMDRemoveAdminMessageModel(int i9, String str, String str2, String str3, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? FrameMetricsAggregator.EVERY_DURATION : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) == 0 ? str4 : "");
        }

        public static /* synthetic */ VoiceRoomCMDRemoveAdminMessageModel copy$default(VoiceRoomCMDRemoveAdminMessageModel voiceRoomCMDRemoveAdminMessageModel, int i9, String str, String str2, String str3, String str4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDRemoveAdminMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDRemoveAdminMessageModel.roomId;
            }
            String str5 = str;
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDRemoveAdminMessageModel.userId;
            }
            String str6 = str2;
            if ((i10 & 8) != 0) {
                str3 = voiceRoomCMDRemoveAdminMessageModel.nickName;
            }
            String str7 = str3;
            if ((i10 & 16) != 0) {
                str4 = voiceRoomCMDRemoveAdminMessageModel.smallImg;
            }
            return voiceRoomCMDRemoveAdminMessageModel.copy(i9, str5, str6, str7, str4);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.nickName;
        }

        @Nullable
        public final String component5() {
            return this.smallImg;
        }

        @NotNull
        public final VoiceRoomCMDRemoveAdminMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            return new VoiceRoomCMDRemoveAdminMessageModel(i9, str, str2, str3, str4);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDRemoveAdminMessageModel) {
                VoiceRoomCMDRemoveAdminMessageModel voiceRoomCMDRemoveAdminMessageModel = (VoiceRoomCMDRemoveAdminMessageModel) obj;
                return this.type == voiceRoomCMDRemoveAdminMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDRemoveAdminMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDRemoveAdminMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDRemoveAdminMessageModel.nickName) && Intrinsics.areEqual(this.smallImg, voiceRoomCMDRemoveAdminMessageModel.smallImg);
            }
            return false;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final String getSmallImg() {
            return this.smallImg;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.smallImg;
            return hashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setSmallImg(@Nullable String str) {
            this.smallImg = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDRemoveAdminMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", smallImg=" + this.smallImg + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.smallImg);
        }

        public VoiceRoomCMDRemoveAdminMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.smallImg = str4;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003JO\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\u0005HÖ\u0001J\u0019\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006."}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "operateUserId", "nickName", "smallImg", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNickName", "()Ljava/lang/String;", "setNickName", "(Ljava/lang/String;)V", "getOperateUserId", "setOperateUserId", "getRoomId", "setRoomId", "getSmallImg", "setSmallImg", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDRemoveMemberMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDRemoveMemberMessageModel> CREATOR = new Creator();
        @Nullable
        private String nickName;
        @Nullable
        private String operateUserId;
        @Nullable
        private String roomId;
        @Nullable
        private String smallImg;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDRemoveMemberMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDRemoveMemberMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDRemoveMemberMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDRemoveMemberMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDRemoveMemberMessageModel[i9];
            }
        }

        public VoiceRoomCMDRemoveMemberMessageModel() {
            this(0, null, null, null, null, null, 63, null);
        }

        public /* synthetic */ VoiceRoomCMDRemoveMemberMessageModel(int i9, String str, String str2, String str3, String str4, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? InputDeviceCompat.SOURCE_DPAD : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) != 0 ? "" : str4, (i10 & 32) == 0 ? str5 : "");
        }

        public static /* synthetic */ VoiceRoomCMDRemoveMemberMessageModel copy$default(VoiceRoomCMDRemoveMemberMessageModel voiceRoomCMDRemoveMemberMessageModel, int i9, String str, String str2, String str3, String str4, String str5, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDRemoveMemberMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDRemoveMemberMessageModel.roomId;
            }
            String str6 = str;
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDRemoveMemberMessageModel.userId;
            }
            String str7 = str2;
            if ((i10 & 8) != 0) {
                str3 = voiceRoomCMDRemoveMemberMessageModel.operateUserId;
            }
            String str8 = str3;
            if ((i10 & 16) != 0) {
                str4 = voiceRoomCMDRemoveMemberMessageModel.nickName;
            }
            String str9 = str4;
            if ((i10 & 32) != 0) {
                str5 = voiceRoomCMDRemoveMemberMessageModel.smallImg;
            }
            return voiceRoomCMDRemoveMemberMessageModel.copy(i9, str6, str7, str8, str9, str5);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.operateUserId;
        }

        @Nullable
        public final String component5() {
            return this.nickName;
        }

        @Nullable
        public final String component6() {
            return this.smallImg;
        }

        @NotNull
        public final VoiceRoomCMDRemoveMemberMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            return new VoiceRoomCMDRemoveMemberMessageModel(i9, str, str2, str3, str4, str5);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDRemoveMemberMessageModel) {
                VoiceRoomCMDRemoveMemberMessageModel voiceRoomCMDRemoveMemberMessageModel = (VoiceRoomCMDRemoveMemberMessageModel) obj;
                return this.type == voiceRoomCMDRemoveMemberMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDRemoveMemberMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDRemoveMemberMessageModel.userId) && Intrinsics.areEqual(this.operateUserId, voiceRoomCMDRemoveMemberMessageModel.operateUserId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDRemoveMemberMessageModel.nickName) && Intrinsics.areEqual(this.smallImg, voiceRoomCMDRemoveMemberMessageModel.smallImg);
            }
            return false;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getOperateUserId() {
            return this.operateUserId;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final String getSmallImg() {
            return this.smallImg;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.operateUserId;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.nickName;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.smallImg;
            return hashCode4 + (str5 != null ? str5.hashCode() : 0);
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setOperateUserId(@Nullable String str) {
            this.operateUserId = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setSmallImg(@Nullable String str) {
            this.smallImg = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDRemoveMemberMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", operateUserId=" + this.operateUserId + ", nickName=" + this.nickName + ", smallImg=" + this.smallImg + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.operateUserId);
            out.writeString(this.nickName);
            out.writeString(this.smallImg);
        }

        public VoiceRoomCMDRemoveMemberMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.operateUserId = str3;
            this.nickName = str4;
            this.smallImg = str5;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "(ILjava/lang/String;)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "component1", "component2", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDReset extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDReset> CREATOR = new Creator();
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDReset> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDReset createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDReset(parcel.readInt(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDReset[] newArray(int i9) {
                return new VoiceRoomCMDReset[i9];
            }
        }

        public VoiceRoomCMDReset() {
            this(0, null, 3, null);
        }

        public /* synthetic */ VoiceRoomCMDReset(int i9, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 539 : i9, (i10 & 2) != 0 ? "" : str);
        }

        public static /* synthetic */ VoiceRoomCMDReset copy$default(VoiceRoomCMDReset voiceRoomCMDReset, int i9, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDReset.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDReset.roomId;
            }
            return voiceRoomCMDReset.copy(i9, str);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @NotNull
        public final VoiceRoomCMDReset copy(int i9, @Nullable String str) {
            return new VoiceRoomCMDReset(i9, str);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDReset) {
                VoiceRoomCMDReset voiceRoomCMDReset = (VoiceRoomCMDReset) obj;
                return this.type == voiceRoomCMDReset.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDReset.roomId);
            }
            return false;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            return i9 + (str == null ? 0 : str.hashCode());
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDReset(type=" + this.type + ", roomId=" + this.roomId + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
        }

        public VoiceRoomCMDReset(int i9, @Nullable String str) {
            super(null);
            this.type = i9;
            this.roomId = str;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0002\u0010\fJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u000f\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010'\u001a\u00020\nHÆ\u0003JU\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\nHÆ\u0001J\t\u0010)\u001a\u00020\nHÖ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020\nHÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\u0019\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\nHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00065"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "backImgUrl", "", "coverImgUrl", "messageType", RemoteMessageConst.MSGID, "title", "tagIds", "", "", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V", "getBackImgUrl", "()Ljava/lang/String;", "setBackImgUrl", "(Ljava/lang/String;)V", "getCoverImgUrl", "setCoverImgUrl", "getMessageType", "setMessageType", "getMsgId", "setMsgId", "getTagIds", "()Ljava/util/List;", "setTagIds", "(Ljava/util/List;)V", "getTitle", "setTitle", "getType", "()I", "setType", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDRoomSettingChangeMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDRoomSettingChangeMessageModel> CREATOR = new Creator();
        @NotNull
        private String backImgUrl;
        @NotNull
        private String coverImgUrl;
        @NotNull
        private String messageType;
        @NotNull
        private String msgId;
        @NotNull
        private List<Integer> tagIds;
        @NotNull
        private String title;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDRoomSettingChangeMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDRoomSettingChangeMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                int readInt = parcel.readInt();
                ArrayList arrayList = new ArrayList(readInt);
                int i9 = 0;
                while (true) {
                    int readInt2 = parcel.readInt();
                    if (i9 == readInt) {
                        return new VoiceRoomCMDRoomSettingChangeMessageModel(readString, readString2, readString3, readString4, readString5, arrayList, readInt2);
                    }
                    arrayList.add(Integer.valueOf(readInt2));
                    i9++;
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDRoomSettingChangeMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDRoomSettingChangeMessageModel[i9];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VoiceRoomCMDRoomSettingChangeMessageModel(@NotNull String backImgUrl, @NotNull String coverImgUrl, @NotNull String messageType, @NotNull String msgId, @NotNull String title, @NotNull List<Integer> tagIds, int i9) {
            super(null);
            Intrinsics.checkNotNullParameter(backImgUrl, "backImgUrl");
            Intrinsics.checkNotNullParameter(coverImgUrl, "coverImgUrl");
            Intrinsics.checkNotNullParameter(messageType, "messageType");
            Intrinsics.checkNotNullParameter(msgId, "msgId");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(tagIds, "tagIds");
            this.backImgUrl = backImgUrl;
            this.coverImgUrl = coverImgUrl;
            this.messageType = messageType;
            this.msgId = msgId;
            this.title = title;
            this.tagIds = tagIds;
            this.type = i9;
        }

        public static /* synthetic */ VoiceRoomCMDRoomSettingChangeMessageModel copy$default(VoiceRoomCMDRoomSettingChangeMessageModel voiceRoomCMDRoomSettingChangeMessageModel, String str, String str2, String str3, String str4, String str5, List list, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = voiceRoomCMDRoomSettingChangeMessageModel.backImgUrl;
            }
            if ((i10 & 2) != 0) {
                str2 = voiceRoomCMDRoomSettingChangeMessageModel.coverImgUrl;
            }
            String str6 = str2;
            if ((i10 & 4) != 0) {
                str3 = voiceRoomCMDRoomSettingChangeMessageModel.messageType;
            }
            String str7 = str3;
            if ((i10 & 8) != 0) {
                str4 = voiceRoomCMDRoomSettingChangeMessageModel.msgId;
            }
            String str8 = str4;
            if ((i10 & 16) != 0) {
                str5 = voiceRoomCMDRoomSettingChangeMessageModel.title;
            }
            String str9 = str5;
            List<Integer> list2 = list;
            if ((i10 & 32) != 0) {
                list2 = voiceRoomCMDRoomSettingChangeMessageModel.tagIds;
            }
            List list3 = list2;
            if ((i10 & 64) != 0) {
                i9 = voiceRoomCMDRoomSettingChangeMessageModel.type;
            }
            return voiceRoomCMDRoomSettingChangeMessageModel.copy(str, str6, str7, str8, str9, list3, i9);
        }

        @NotNull
        public final String component1() {
            return this.backImgUrl;
        }

        @NotNull
        public final String component2() {
            return this.coverImgUrl;
        }

        @NotNull
        public final String component3() {
            return this.messageType;
        }

        @NotNull
        public final String component4() {
            return this.msgId;
        }

        @NotNull
        public final String component5() {
            return this.title;
        }

        @NotNull
        public final List<Integer> component6() {
            return this.tagIds;
        }

        public final int component7() {
            return this.type;
        }

        @NotNull
        public final VoiceRoomCMDRoomSettingChangeMessageModel copy(@NotNull String backImgUrl, @NotNull String coverImgUrl, @NotNull String messageType, @NotNull String msgId, @NotNull String title, @NotNull List<Integer> tagIds, int i9) {
            Intrinsics.checkNotNullParameter(backImgUrl, "backImgUrl");
            Intrinsics.checkNotNullParameter(coverImgUrl, "coverImgUrl");
            Intrinsics.checkNotNullParameter(messageType, "messageType");
            Intrinsics.checkNotNullParameter(msgId, "msgId");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(tagIds, "tagIds");
            return new VoiceRoomCMDRoomSettingChangeMessageModel(backImgUrl, coverImgUrl, messageType, msgId, title, tagIds, i9);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDRoomSettingChangeMessageModel) {
                VoiceRoomCMDRoomSettingChangeMessageModel voiceRoomCMDRoomSettingChangeMessageModel = (VoiceRoomCMDRoomSettingChangeMessageModel) obj;
                return Intrinsics.areEqual(this.backImgUrl, voiceRoomCMDRoomSettingChangeMessageModel.backImgUrl) && Intrinsics.areEqual(this.coverImgUrl, voiceRoomCMDRoomSettingChangeMessageModel.coverImgUrl) && Intrinsics.areEqual(this.messageType, voiceRoomCMDRoomSettingChangeMessageModel.messageType) && Intrinsics.areEqual(this.msgId, voiceRoomCMDRoomSettingChangeMessageModel.msgId) && Intrinsics.areEqual(this.title, voiceRoomCMDRoomSettingChangeMessageModel.title) && Intrinsics.areEqual(this.tagIds, voiceRoomCMDRoomSettingChangeMessageModel.tagIds) && this.type == voiceRoomCMDRoomSettingChangeMessageModel.type;
            }
            return false;
        }

        @NotNull
        public final String getBackImgUrl() {
            return this.backImgUrl;
        }

        @NotNull
        public final String getCoverImgUrl() {
            return this.coverImgUrl;
        }

        @NotNull
        public final String getMessageType() {
            return this.messageType;
        }

        @NotNull
        public final String getMsgId() {
            return this.msgId;
        }

        @NotNull
        public final List<Integer> getTagIds() {
            return this.tagIds;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            return (((((((((((this.backImgUrl.hashCode() * 31) + this.coverImgUrl.hashCode()) * 31) + this.messageType.hashCode()) * 31) + this.msgId.hashCode()) * 31) + this.title.hashCode()) * 31) + this.tagIds.hashCode()) * 31) + this.type;
        }

        public final void setBackImgUrl(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.backImgUrl = str;
        }

        public final void setCoverImgUrl(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.coverImgUrl = str;
        }

        public final void setMessageType(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.messageType = str;
        }

        public final void setMsgId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.msgId = str;
        }

        public final void setTagIds(@NotNull List<Integer> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.tagIds = list;
        }

        public final void setTitle(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.title = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDRoomSettingChangeMessageModel(backImgUrl=" + this.backImgUrl + ", coverImgUrl=" + this.coverImgUrl + ", messageType=" + this.messageType + ", msgId=" + this.msgId + ", title=" + this.title + ", tagIds=" + this.tagIds + ", type=" + this.type + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeString(this.backImgUrl);
            out.writeString(this.coverImgUrl);
            out.writeString(this.messageType);
            out.writeString(this.msgId);
            out.writeString(this.title);
            List<Integer> list = this.tagIds;
            out.writeInt(list.size());
            for (Integer num : list) {
                out.writeInt(num.intValue());
            }
            out.writeInt(this.type);
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J1\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0003HÖ\u0001R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006&"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "(ILjava/lang/String;Ljava/util/List;)V", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDSeatListMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDSeatListMessageModel> CREATOR = new Creator();
        @Nullable
        private List<VoiceRoomUserOnSeatModel> list;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDSeatListMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDSeatListMessageModel createFromParcel(@NotNull Parcel parcel) {
                ArrayList arrayList;
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                int readInt = parcel.readInt();
                String readString = parcel.readString();
                if (parcel.readInt() == 0) {
                    arrayList = null;
                } else {
                    int readInt2 = parcel.readInt();
                    ArrayList arrayList2 = new ArrayList(readInt2);
                    for (int i9 = 0; i9 != readInt2; i9++) {
                        arrayList2.add(VoiceRoomUserOnSeatModel.CREATOR.createFromParcel(parcel));
                    }
                    arrayList = arrayList2;
                }
                return new VoiceRoomCMDSeatListMessageModel(readInt, readString, arrayList);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDSeatListMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDSeatListMessageModel[i9];
            }
        }

        public /* synthetic */ VoiceRoomCMDSeatListMessageModel(int i9, String str, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 529 : i9, (i10 & 2) != 0 ? "" : str, list);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ VoiceRoomCMDSeatListMessageModel copy$default(VoiceRoomCMDSeatListMessageModel voiceRoomCMDSeatListMessageModel, int i9, String str, List list, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDSeatListMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDSeatListMessageModel.roomId;
            }
            if ((i10 & 4) != 0) {
                list = voiceRoomCMDSeatListMessageModel.list;
            }
            return voiceRoomCMDSeatListMessageModel.copy(i9, str, list);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final List<VoiceRoomUserOnSeatModel> component3() {
            return this.list;
        }

        @NotNull
        public final VoiceRoomCMDSeatListMessageModel copy(int i9, @Nullable String str, @Nullable List<VoiceRoomUserOnSeatModel> list) {
            return new VoiceRoomCMDSeatListMessageModel(i9, str, list);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDSeatListMessageModel) {
                VoiceRoomCMDSeatListMessageModel voiceRoomCMDSeatListMessageModel = (VoiceRoomCMDSeatListMessageModel) obj;
                return this.type == voiceRoomCMDSeatListMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDSeatListMessageModel.roomId) && Intrinsics.areEqual(this.list, voiceRoomCMDSeatListMessageModel.list);
            }
            return false;
        }

        @Nullable
        public final List<VoiceRoomUserOnSeatModel> getList() {
            return this.list;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            List<VoiceRoomUserOnSeatModel> list = this.list;
            return hashCode + (list != null ? list.hashCode() : 0);
        }

        public final void setList(@Nullable List<VoiceRoomUserOnSeatModel> list) {
            this.list = list;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDSeatListMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", list=" + this.list + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            List<VoiceRoomUserOnSeatModel> list = this.list;
            if (list == null) {
                out.writeInt(0);
                return;
            }
            out.writeInt(1);
            out.writeInt(list.size());
            for (VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel : list) {
                voiceRoomUserOnSeatModel.writeToParcel(out, i9);
            }
        }

        public VoiceRoomCMDSeatListMessageModel(int i9, @Nullable String str, @Nullable List<VoiceRoomUserOnSeatModel> list) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.list = list;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "miroType", "(ILjava/lang/String;I)V", "getMiroType", "()I", "setMiroType", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "setType", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDSeatModeMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDSeatModeMessageModel> CREATOR = new Creator();
        private int miroType;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDSeatModeMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDSeatModeMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDSeatModeMessageModel(parcel.readInt(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDSeatModeMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDSeatModeMessageModel[i9];
            }
        }

        public /* synthetic */ VoiceRoomCMDSeatModeMessageModel(int i9, String str, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 518 : i9, (i11 & 2) != 0 ? "" : str, i10);
        }

        public static /* synthetic */ VoiceRoomCMDSeatModeMessageModel copy$default(VoiceRoomCMDSeatModeMessageModel voiceRoomCMDSeatModeMessageModel, int i9, String str, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDSeatModeMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDSeatModeMessageModel.roomId;
            }
            if ((i11 & 4) != 0) {
                i10 = voiceRoomCMDSeatModeMessageModel.miroType;
            }
            return voiceRoomCMDSeatModeMessageModel.copy(i9, str, i10);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        public final int component3() {
            return this.miroType;
        }

        @NotNull
        public final VoiceRoomCMDSeatModeMessageModel copy(int i9, @Nullable String str, int i10) {
            return new VoiceRoomCMDSeatModeMessageModel(i9, str, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDSeatModeMessageModel) {
                VoiceRoomCMDSeatModeMessageModel voiceRoomCMDSeatModeMessageModel = (VoiceRoomCMDSeatModeMessageModel) obj;
                return this.type == voiceRoomCMDSeatModeMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDSeatModeMessageModel.roomId) && this.miroType == voiceRoomCMDSeatModeMessageModel.miroType;
            }
            return false;
        }

        public final int getMiroType() {
            return this.miroType;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            return ((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.miroType;
        }

        public final void setMiroType(int i9) {
            this.miroType = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDSeatModeMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", miroType=" + this.miroType + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeInt(this.miroType);
        }

        public VoiceRoomCMDSeatModeMessageModel(int i9, @Nullable String str, int i10) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.miroType = i10;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J?\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011¨\u0006*"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "fromIndex", "toIndex", "(ILjava/lang/String;Ljava/lang/String;II)V", "getFromIndex", "()I", "setFromIndex", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getToIndex", "setToIndex", "getType", "setType", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDSwitchSeatMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDSwitchSeatMessageModel> CREATOR = new Creator();
        private int fromIndex;
        @Nullable
        private String roomId;
        private int toIndex;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDSwitchSeatMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDSwitchSeatMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDSwitchSeatMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDSwitchSeatMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDSwitchSeatMessageModel[i9];
            }
        }

        public /* synthetic */ VoiceRoomCMDSwitchSeatMessageModel(int i9, String str, String str2, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? 525 : i9, (i12 & 2) != 0 ? "" : str, (i12 & 4) != 0 ? "" : str2, i10, i11);
        }

        public static /* synthetic */ VoiceRoomCMDSwitchSeatMessageModel copy$default(VoiceRoomCMDSwitchSeatMessageModel voiceRoomCMDSwitchSeatMessageModel, int i9, String str, String str2, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i9 = voiceRoomCMDSwitchSeatMessageModel.type;
            }
            if ((i12 & 2) != 0) {
                str = voiceRoomCMDSwitchSeatMessageModel.roomId;
            }
            String str3 = str;
            if ((i12 & 4) != 0) {
                str2 = voiceRoomCMDSwitchSeatMessageModel.userId;
            }
            String str4 = str2;
            if ((i12 & 8) != 0) {
                i10 = voiceRoomCMDSwitchSeatMessageModel.fromIndex;
            }
            int i13 = i10;
            if ((i12 & 16) != 0) {
                i11 = voiceRoomCMDSwitchSeatMessageModel.toIndex;
            }
            return voiceRoomCMDSwitchSeatMessageModel.copy(i9, str3, str4, i13, i11);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        public final int component4() {
            return this.fromIndex;
        }

        public final int component5() {
            return this.toIndex;
        }

        @NotNull
        public final VoiceRoomCMDSwitchSeatMessageModel copy(int i9, @Nullable String str, @Nullable String str2, int i10, int i11) {
            return new VoiceRoomCMDSwitchSeatMessageModel(i9, str, str2, i10, i11);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDSwitchSeatMessageModel) {
                VoiceRoomCMDSwitchSeatMessageModel voiceRoomCMDSwitchSeatMessageModel = (VoiceRoomCMDSwitchSeatMessageModel) obj;
                return this.type == voiceRoomCMDSwitchSeatMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDSwitchSeatMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDSwitchSeatMessageModel.userId) && this.fromIndex == voiceRoomCMDSwitchSeatMessageModel.fromIndex && this.toIndex == voiceRoomCMDSwitchSeatMessageModel.toIndex;
            }
            return false;
        }

        public final int getFromIndex() {
            return this.fromIndex;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getToIndex() {
            return this.toIndex;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            return ((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.fromIndex) * 31) + this.toIndex;
        }

        public final void setFromIndex(int i9) {
            this.fromIndex = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setToIndex(int i9) {
            this.toIndex = i9;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDSwitchSeatMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", fromIndex=" + this.fromIndex + ", toIndex=" + this.toIndex + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeInt(this.fromIndex);
            out.writeInt(this.toIndex);
        }

        public VoiceRoomCMDSwitchSeatMessageModel(int i9, @Nullable String str, @Nullable String str2, int i10, int i11) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.fromIndex = i10;
            this.toIndex = i11;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003JY\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020\u0005HÖ\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u00062"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "nickName", "smallImg", Contants.USER_levelId, "dressHead", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getDressHead", "()Ljava/lang/String;", "setDressHead", "(Ljava/lang/String;)V", "getLevelId", "()I", "setLevelId", "(I)V", "getNickName", "setNickName", "getRoomId", "setRoomId", "getSmallImg", "setSmallImg", "getType", "setType", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDTobeMemberMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDTobeMemberMessageModel> CREATOR = new Creator();
        @Nullable
        private String dressHead;
        private int levelId;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @Nullable
        private String smallImg;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDTobeMemberMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDTobeMemberMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDTobeMemberMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDTobeMemberMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDTobeMemberMessageModel[i9];
            }
        }

        public VoiceRoomCMDTobeMemberMessageModel() {
            this(0, null, null, null, null, 0, null, 127, null);
        }

        public /* synthetic */ VoiceRoomCMDTobeMemberMessageModel(int i9, String str, String str2, String str3, String str4, int i10, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 512 : i9, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? "" : str2, (i11 & 8) != 0 ? "" : str3, (i11 & 16) != 0 ? "" : str4, (i11 & 32) != 0 ? 1 : i10, (i11 & 64) == 0 ? str5 : "");
        }

        public static /* synthetic */ VoiceRoomCMDTobeMemberMessageModel copy$default(VoiceRoomCMDTobeMemberMessageModel voiceRoomCMDTobeMemberMessageModel, int i9, String str, String str2, String str3, String str4, int i10, String str5, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDTobeMemberMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDTobeMemberMessageModel.roomId;
            }
            String str6 = str;
            if ((i11 & 4) != 0) {
                str2 = voiceRoomCMDTobeMemberMessageModel.userId;
            }
            String str7 = str2;
            if ((i11 & 8) != 0) {
                str3 = voiceRoomCMDTobeMemberMessageModel.nickName;
            }
            String str8 = str3;
            if ((i11 & 16) != 0) {
                str4 = voiceRoomCMDTobeMemberMessageModel.smallImg;
            }
            String str9 = str4;
            if ((i11 & 32) != 0) {
                i10 = voiceRoomCMDTobeMemberMessageModel.levelId;
            }
            int i12 = i10;
            if ((i11 & 64) != 0) {
                str5 = voiceRoomCMDTobeMemberMessageModel.dressHead;
            }
            return voiceRoomCMDTobeMemberMessageModel.copy(i9, str6, str7, str8, str9, i12, str5);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.nickName;
        }

        @Nullable
        public final String component5() {
            return this.smallImg;
        }

        public final int component6() {
            return this.levelId;
        }

        @Nullable
        public final String component7() {
            return this.dressHead;
        }

        @NotNull
        public final VoiceRoomCMDTobeMemberMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i10, @Nullable String str5) {
            return new VoiceRoomCMDTobeMemberMessageModel(i9, str, str2, str3, str4, i10, str5);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDTobeMemberMessageModel) {
                VoiceRoomCMDTobeMemberMessageModel voiceRoomCMDTobeMemberMessageModel = (VoiceRoomCMDTobeMemberMessageModel) obj;
                return this.type == voiceRoomCMDTobeMemberMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDTobeMemberMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDTobeMemberMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDTobeMemberMessageModel.nickName) && Intrinsics.areEqual(this.smallImg, voiceRoomCMDTobeMemberMessageModel.smallImg) && this.levelId == voiceRoomCMDTobeMemberMessageModel.levelId && Intrinsics.areEqual(this.dressHead, voiceRoomCMDTobeMemberMessageModel.dressHead);
            }
            return false;
        }

        @Nullable
        public final String getDressHead() {
            return this.dressHead;
        }

        public final int getLevelId() {
            return this.levelId;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final String getSmallImg() {
            return this.smallImg;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.smallImg;
            int hashCode4 = (((hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.levelId) * 31;
            String str5 = this.dressHead;
            return hashCode4 + (str5 != null ? str5.hashCode() : 0);
        }

        public final void setDressHead(@Nullable String str) {
            this.dressHead = str;
        }

        public final void setLevelId(int i9) {
            this.levelId = i9;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setSmallImg(@Nullable String str) {
            this.smallImg = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDTobeMemberMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", smallImg=" + this.smallImg + ", levelId=" + this.levelId + ", dressHead=" + this.dressHead + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.smallImg);
            out.writeInt(this.levelId);
            out.writeString(this.dressHead);
        }

        public VoiceRoomCMDTobeMemberMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i10, @Nullable String str5) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.smallImg = str4;
            this.levelId = i10;
            this.dressHead = str5;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jg\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\t\u00100\u001a\u00020\u0005HÖ\u0001J\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000e\"\u0004\b \u0010\u0010¨\u00066"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "nickName", "toUserId", "toNickName", "toImg", "img", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getImg", "()Ljava/lang/String;", "setImg", "(Ljava/lang/String;)V", "getNickName", "setNickName", "getRoomId", "setRoomId", "getToImg", "setToImg", "getToNickName", "setToNickName", "getToUserId", "setToUserId", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDUnMuteModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDUnMuteModel> CREATOR = new Creator();
        @Nullable
        private String img;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @Nullable
        private String toImg;
        @Nullable
        private String toNickName;
        @Nullable
        private String toUserId;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDUnMuteModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUnMuteModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDUnMuteModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUnMuteModel[] newArray(int i9) {
                return new VoiceRoomCMDUnMuteModel[i9];
            }
        }

        public VoiceRoomCMDUnMuteModel() {
            this(0, null, null, null, null, null, null, null, 255, null);
        }

        public /* synthetic */ VoiceRoomCMDUnMuteModel(int i9, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 517 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) != 0 ? "" : str4, (i10 & 32) != 0 ? "" : str5, (i10 & 64) != 0 ? "" : str6, (i10 & 128) == 0 ? str7 : "");
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.nickName;
        }

        @Nullable
        public final String component5() {
            return this.toUserId;
        }

        @Nullable
        public final String component6() {
            return this.toNickName;
        }

        @Nullable
        public final String component7() {
            return this.toImg;
        }

        @Nullable
        public final String component8() {
            return this.img;
        }

        @NotNull
        public final VoiceRoomCMDUnMuteModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
            return new VoiceRoomCMDUnMuteModel(i9, str, str2, str3, str4, str5, str6, str7);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDUnMuteModel) {
                VoiceRoomCMDUnMuteModel voiceRoomCMDUnMuteModel = (VoiceRoomCMDUnMuteModel) obj;
                return this.type == voiceRoomCMDUnMuteModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDUnMuteModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDUnMuteModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDUnMuteModel.nickName) && Intrinsics.areEqual(this.toUserId, voiceRoomCMDUnMuteModel.toUserId) && Intrinsics.areEqual(this.toNickName, voiceRoomCMDUnMuteModel.toNickName) && Intrinsics.areEqual(this.toImg, voiceRoomCMDUnMuteModel.toImg) && Intrinsics.areEqual(this.img, voiceRoomCMDUnMuteModel.img);
            }
            return false;
        }

        @Nullable
        public final String getImg() {
            return this.img;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final String getToImg() {
            return this.toImg;
        }

        @Nullable
        public final String getToNickName() {
            return this.toNickName;
        }

        @Nullable
        public final String getToUserId() {
            return this.toUserId;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.toUserId;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.toNickName;
            int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.toImg;
            int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.img;
            return hashCode6 + (str7 != null ? str7.hashCode() : 0);
        }

        public final void setImg(@Nullable String str) {
            this.img = str;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setToImg(@Nullable String str) {
            this.toImg = str;
        }

        public final void setToNickName(@Nullable String str) {
            this.toNickName = str;
        }

        public final void setToUserId(@Nullable String str) {
            this.toUserId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDUnMuteModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", toUserId=" + this.toUserId + ", toNickName=" + this.toNickName + ", toImg=" + this.toImg + ", img=" + this.img + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.toUserId);
            out.writeString(this.toNickName);
            out.writeString(this.toImg);
            out.writeString(this.img);
        }

        public VoiceRoomCMDUnMuteModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.toUserId = str4;
            this.toNickName = str5;
            this.toImg = str6;
            this.img = str7;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\""}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "index", "(ILjava/lang/String;I)V", "getIndex", "()I", "setIndex", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "setType", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDUnlockSeatMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDUnlockSeatMessageModel> CREATOR = new Creator();
        private int index;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDUnlockSeatMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUnlockSeatMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDUnlockSeatMessageModel(parcel.readInt(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUnlockSeatMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDUnlockSeatMessageModel[i9];
            }
        }

        public VoiceRoomCMDUnlockSeatMessageModel() {
            this(0, null, 0, 7, null);
        }

        public /* synthetic */ VoiceRoomCMDUnlockSeatMessageModel(int i9, String str, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 520 : i9, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? 1 : i10);
        }

        public static /* synthetic */ VoiceRoomCMDUnlockSeatMessageModel copy$default(VoiceRoomCMDUnlockSeatMessageModel voiceRoomCMDUnlockSeatMessageModel, int i9, String str, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDUnlockSeatMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDUnlockSeatMessageModel.roomId;
            }
            if ((i11 & 4) != 0) {
                i10 = voiceRoomCMDUnlockSeatMessageModel.index;
            }
            return voiceRoomCMDUnlockSeatMessageModel.copy(i9, str, i10);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        public final int component3() {
            return this.index;
        }

        @NotNull
        public final VoiceRoomCMDUnlockSeatMessageModel copy(int i9, @Nullable String str, int i10) {
            return new VoiceRoomCMDUnlockSeatMessageModel(i9, str, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDUnlockSeatMessageModel) {
                VoiceRoomCMDUnlockSeatMessageModel voiceRoomCMDUnlockSeatMessageModel = (VoiceRoomCMDUnlockSeatMessageModel) obj;
                return this.type == voiceRoomCMDUnlockSeatMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDUnlockSeatMessageModel.roomId) && this.index == voiceRoomCMDUnlockSeatMessageModel.index;
            }
            return false;
        }

        public final int getIndex() {
            return this.index;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            return ((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.index;
        }

        public final void setIndex(int i9) {
            this.index = i9;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDUnlockSeatMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", index=" + this.index + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeInt(this.index);
        }

        public VoiceRoomCMDUnlockSeatMessageModel(int i9, @Nullable String str, int i10) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.index = i10;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003JY\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020\u0005HÖ\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u00062"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "nickName", "dressHead", "img", Contants.USER_levelId, "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getDressHead", "()Ljava/lang/String;", "setDressHead", "(Ljava/lang/String;)V", "getImg", "setImg", "getLevelId", "()I", "setLevelId", "(I)V", "getNickName", "setNickName", "getRoomId", "setRoomId", "getType", "setType", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDUserEnterRoomMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDUserEnterRoomMessageModel> CREATOR = new Creator();
        @Nullable
        private String dressHead;
        @Nullable
        private String img;
        private int levelId;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDUserEnterRoomMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserEnterRoomMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDUserEnterRoomMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserEnterRoomMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDUserEnterRoomMessageModel[i9];
            }
        }

        public VoiceRoomCMDUserEnterRoomMessageModel() {
            this(0, null, null, null, null, null, 0, 127, null);
        }

        public /* synthetic */ VoiceRoomCMDUserEnterRoomMessageModel(int i9, String str, String str2, String str3, String str4, String str5, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 501 : i9, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? "" : str2, (i11 & 8) != 0 ? "" : str3, (i11 & 16) != 0 ? "" : str4, (i11 & 32) == 0 ? str5 : "", (i11 & 64) != 0 ? 0 : i10);
        }

        public static /* synthetic */ VoiceRoomCMDUserEnterRoomMessageModel copy$default(VoiceRoomCMDUserEnterRoomMessageModel voiceRoomCMDUserEnterRoomMessageModel, int i9, String str, String str2, String str3, String str4, String str5, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDUserEnterRoomMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                str = voiceRoomCMDUserEnterRoomMessageModel.roomId;
            }
            String str6 = str;
            if ((i11 & 4) != 0) {
                str2 = voiceRoomCMDUserEnterRoomMessageModel.userId;
            }
            String str7 = str2;
            if ((i11 & 8) != 0) {
                str3 = voiceRoomCMDUserEnterRoomMessageModel.nickName;
            }
            String str8 = str3;
            if ((i11 & 16) != 0) {
                str4 = voiceRoomCMDUserEnterRoomMessageModel.dressHead;
            }
            String str9 = str4;
            if ((i11 & 32) != 0) {
                str5 = voiceRoomCMDUserEnterRoomMessageModel.img;
            }
            String str10 = str5;
            if ((i11 & 64) != 0) {
                i10 = voiceRoomCMDUserEnterRoomMessageModel.levelId;
            }
            return voiceRoomCMDUserEnterRoomMessageModel.copy(i9, str6, str7, str8, str9, str10, i10);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.nickName;
        }

        @Nullable
        public final String component5() {
            return this.dressHead;
        }

        @Nullable
        public final String component6() {
            return this.img;
        }

        public final int component7() {
            return this.levelId;
        }

        @NotNull
        public final VoiceRoomCMDUserEnterRoomMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i10) {
            return new VoiceRoomCMDUserEnterRoomMessageModel(i9, str, str2, str3, str4, str5, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDUserEnterRoomMessageModel) {
                VoiceRoomCMDUserEnterRoomMessageModel voiceRoomCMDUserEnterRoomMessageModel = (VoiceRoomCMDUserEnterRoomMessageModel) obj;
                return this.type == voiceRoomCMDUserEnterRoomMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDUserEnterRoomMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDUserEnterRoomMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDUserEnterRoomMessageModel.nickName) && Intrinsics.areEqual(this.dressHead, voiceRoomCMDUserEnterRoomMessageModel.dressHead) && Intrinsics.areEqual(this.img, voiceRoomCMDUserEnterRoomMessageModel.img) && this.levelId == voiceRoomCMDUserEnterRoomMessageModel.levelId;
            }
            return false;
        }

        @Nullable
        public final String getDressHead() {
            return this.dressHead;
        }

        @Nullable
        public final String getImg() {
            return this.img;
        }

        public final int getLevelId() {
            return this.levelId;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.dressHead;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.img;
            return ((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.levelId;
        }

        public final void setDressHead(@Nullable String str) {
            this.dressHead = str;
        }

        public final void setImg(@Nullable String str) {
            this.img = str;
        }

        public final void setLevelId(int i9) {
            this.levelId = i9;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDUserEnterRoomMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", dressHead=" + this.dressHead + ", img=" + this.img + ", levelId=" + this.levelId + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.dressHead);
            out.writeString(this.img);
            out.writeInt(this.levelId);
        }

        public VoiceRoomCMDUserEnterRoomMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i10) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.dressHead = str4;
            this.img = str5;
            this.levelId = i10;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003JC\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000b\"\u0004\b\u0017\u0010\r¨\u0006*"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", Contants.USER_ID, "nickName", "img", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getImg", "()Ljava/lang/String;", "setImg", "(Ljava/lang/String;)V", "getNickName", "setNickName", "getRoomId", "setRoomId", "getType", "()I", "setType", "(I)V", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDUserLeaveRoomMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDUserLeaveRoomMessageModel> CREATOR = new Creator();
        @Nullable
        private String img;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDUserLeaveRoomMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserLeaveRoomMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDUserLeaveRoomMessageModel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserLeaveRoomMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDUserLeaveRoomMessageModel[i9];
            }
        }

        public VoiceRoomCMDUserLeaveRoomMessageModel() {
            this(0, null, null, null, null, 31, null);
        }

        public /* synthetic */ VoiceRoomCMDUserLeaveRoomMessageModel(int i9, String str, String str2, String str3, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 502 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) == 0 ? str4 : "");
        }

        public static /* synthetic */ VoiceRoomCMDUserLeaveRoomMessageModel copy$default(VoiceRoomCMDUserLeaveRoomMessageModel voiceRoomCMDUserLeaveRoomMessageModel, int i9, String str, String str2, String str3, String str4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDUserLeaveRoomMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDUserLeaveRoomMessageModel.roomId;
            }
            String str5 = str;
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDUserLeaveRoomMessageModel.userId;
            }
            String str6 = str2;
            if ((i10 & 8) != 0) {
                str3 = voiceRoomCMDUserLeaveRoomMessageModel.nickName;
            }
            String str7 = str3;
            if ((i10 & 16) != 0) {
                str4 = voiceRoomCMDUserLeaveRoomMessageModel.img;
            }
            return voiceRoomCMDUserLeaveRoomMessageModel.copy(i9, str5, str6, str7, str4);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.nickName;
        }

        @Nullable
        public final String component5() {
            return this.img;
        }

        @NotNull
        public final VoiceRoomCMDUserLeaveRoomMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            return new VoiceRoomCMDUserLeaveRoomMessageModel(i9, str, str2, str3, str4);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDUserLeaveRoomMessageModel) {
                VoiceRoomCMDUserLeaveRoomMessageModel voiceRoomCMDUserLeaveRoomMessageModel = (VoiceRoomCMDUserLeaveRoomMessageModel) obj;
                return this.type == voiceRoomCMDUserLeaveRoomMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDUserLeaveRoomMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDUserLeaveRoomMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDUserLeaveRoomMessageModel.nickName) && Intrinsics.areEqual(this.img, voiceRoomCMDUserLeaveRoomMessageModel.img);
            }
            return false;
        }

        @Nullable
        public final String getImg() {
            return this.img;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.img;
            return hashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        public final void setImg(@Nullable String str) {
            this.img = str;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDUserLeaveRoomMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", img=" + this.img + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.img);
        }

        public VoiceRoomCMDUserLeaveRoomMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.img = str4;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b!\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003JY\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020\u0006HÖ\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u00062"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "seatIndex", "roomId", "", Contants.USER_ID, "nickName", "smallImg", "dressHead", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDressHead", "()Ljava/lang/String;", "setDressHead", "(Ljava/lang/String;)V", "getNickName", "setNickName", "getRoomId", "setRoomId", "getSeatIndex", "()I", "setSeatIndex", "(I)V", "getSmallImg", "setSmallImg", "getType", "setType", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDUserLeaveSeatMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDUserLeaveSeatMessageModel> CREATOR = new Creator();
        @Nullable
        private String dressHead;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @SerializedName("index")
        private int seatIndex;
        @Nullable
        private String smallImg;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDUserLeaveSeatMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserLeaveSeatMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDUserLeaveSeatMessageModel(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserLeaveSeatMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDUserLeaveSeatMessageModel[i9];
            }
        }

        public VoiceRoomCMDUserLeaveSeatMessageModel() {
            this(0, 0, null, null, null, null, null, 127, null);
        }

        public /* synthetic */ VoiceRoomCMDUserLeaveSeatMessageModel(int i9, int i10, String str, String str2, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 522 : i9, (i11 & 2) != 0 ? 0 : i10, (i11 & 4) != 0 ? "" : str, (i11 & 8) != 0 ? "" : str2, (i11 & 16) != 0 ? "" : str3, (i11 & 32) != 0 ? "" : str4, (i11 & 64) == 0 ? str5 : "");
        }

        public static /* synthetic */ VoiceRoomCMDUserLeaveSeatMessageModel copy$default(VoiceRoomCMDUserLeaveSeatMessageModel voiceRoomCMDUserLeaveSeatMessageModel, int i9, int i10, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i9 = voiceRoomCMDUserLeaveSeatMessageModel.type;
            }
            if ((i11 & 2) != 0) {
                i10 = voiceRoomCMDUserLeaveSeatMessageModel.seatIndex;
            }
            int i12 = i10;
            if ((i11 & 4) != 0) {
                str = voiceRoomCMDUserLeaveSeatMessageModel.roomId;
            }
            String str6 = str;
            if ((i11 & 8) != 0) {
                str2 = voiceRoomCMDUserLeaveSeatMessageModel.userId;
            }
            String str7 = str2;
            if ((i11 & 16) != 0) {
                str3 = voiceRoomCMDUserLeaveSeatMessageModel.nickName;
            }
            String str8 = str3;
            if ((i11 & 32) != 0) {
                str4 = voiceRoomCMDUserLeaveSeatMessageModel.smallImg;
            }
            String str9 = str4;
            if ((i11 & 64) != 0) {
                str5 = voiceRoomCMDUserLeaveSeatMessageModel.dressHead;
            }
            return voiceRoomCMDUserLeaveSeatMessageModel.copy(i9, i12, str6, str7, str8, str9, str5);
        }

        public final int component1() {
            return this.type;
        }

        public final int component2() {
            return this.seatIndex;
        }

        @Nullable
        public final String component3() {
            return this.roomId;
        }

        @Nullable
        public final String component4() {
            return this.userId;
        }

        @Nullable
        public final String component5() {
            return this.nickName;
        }

        @Nullable
        public final String component6() {
            return this.smallImg;
        }

        @Nullable
        public final String component7() {
            return this.dressHead;
        }

        @NotNull
        public final VoiceRoomCMDUserLeaveSeatMessageModel copy(int i9, int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            return new VoiceRoomCMDUserLeaveSeatMessageModel(i9, i10, str, str2, str3, str4, str5);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDUserLeaveSeatMessageModel) {
                VoiceRoomCMDUserLeaveSeatMessageModel voiceRoomCMDUserLeaveSeatMessageModel = (VoiceRoomCMDUserLeaveSeatMessageModel) obj;
                return this.type == voiceRoomCMDUserLeaveSeatMessageModel.type && this.seatIndex == voiceRoomCMDUserLeaveSeatMessageModel.seatIndex && Intrinsics.areEqual(this.roomId, voiceRoomCMDUserLeaveSeatMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDUserLeaveSeatMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDUserLeaveSeatMessageModel.nickName) && Intrinsics.areEqual(this.smallImg, voiceRoomCMDUserLeaveSeatMessageModel.smallImg) && Intrinsics.areEqual(this.dressHead, voiceRoomCMDUserLeaveSeatMessageModel.dressHead);
            }
            return false;
        }

        @Nullable
        public final String getDressHead() {
            return this.dressHead;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getSeatIndex() {
            return this.seatIndex;
        }

        @Nullable
        public final String getSmallImg() {
            return this.smallImg;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = ((this.type * 31) + this.seatIndex) * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.smallImg;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.dressHead;
            return hashCode4 + (str5 != null ? str5.hashCode() : 0);
        }

        public final void setDressHead(@Nullable String str) {
            this.dressHead = str;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setSeatIndex(int i9) {
            this.seatIndex = i9;
        }

        public final void setSmallImg(@Nullable String str) {
            this.smallImg = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDUserLeaveSeatMessageModel(type=" + this.type + ", seatIndex=" + this.seatIndex + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", smallImg=" + this.smallImg + ", dressHead=" + this.dressHead + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeInt(this.seatIndex);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.smallImg);
            out.writeString(this.dressHead);
        }

        public VoiceRoomCMDUserLeaveSeatMessageModel(int i9, int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            super(null);
            this.type = i9;
            this.seatIndex = i10;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.smallImg = str4;
            this.dressHead = str5;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J\u0019\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006%"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "pageResult", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;", "(ILjava/lang/String;Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;)V", "getPageResult", "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;", "setPageResult", "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDViewerModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDViewerModel> CREATOR = new Creator();
        @Nullable
        private VoiceRoomViewerListModel pageResult;
        @Nullable
        private String roomId;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDViewerModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDViewerModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDViewerModel(parcel.readInt(), parcel.readString(), parcel.readInt() == 0 ? null : VoiceRoomViewerListModel.CREATOR.createFromParcel(parcel));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDViewerModel[] newArray(int i9) {
                return new VoiceRoomCMDViewerModel[i9];
            }
        }

        public VoiceRoomCMDViewerModel() {
            this(0, null, null, 7, null);
        }

        public /* synthetic */ VoiceRoomCMDViewerModel(int i9, String str, VoiceRoomViewerListModel voiceRoomViewerListModel, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 530 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? null : voiceRoomViewerListModel);
        }

        public static /* synthetic */ VoiceRoomCMDViewerModel copy$default(VoiceRoomCMDViewerModel voiceRoomCMDViewerModel, int i9, String str, VoiceRoomViewerListModel voiceRoomViewerListModel, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDViewerModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDViewerModel.roomId;
            }
            if ((i10 & 4) != 0) {
                voiceRoomViewerListModel = voiceRoomCMDViewerModel.pageResult;
            }
            return voiceRoomCMDViewerModel.copy(i9, str, voiceRoomViewerListModel);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final VoiceRoomViewerListModel component3() {
            return this.pageResult;
        }

        @NotNull
        public final VoiceRoomCMDViewerModel copy(int i9, @Nullable String str, @Nullable VoiceRoomViewerListModel voiceRoomViewerListModel) {
            return new VoiceRoomCMDViewerModel(i9, str, voiceRoomViewerListModel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDViewerModel) {
                VoiceRoomCMDViewerModel voiceRoomCMDViewerModel = (VoiceRoomCMDViewerModel) obj;
                return this.type == voiceRoomCMDViewerModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDViewerModel.roomId) && Intrinsics.areEqual(this.pageResult, voiceRoomCMDViewerModel.pageResult);
            }
            return false;
        }

        @Nullable
        public final VoiceRoomViewerListModel getPageResult() {
            return this.pageResult;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            VoiceRoomViewerListModel voiceRoomViewerListModel = this.pageResult;
            return hashCode + (voiceRoomViewerListModel != null ? voiceRoomViewerListModel.hashCode() : 0);
        }

        public final void setPageResult(@Nullable VoiceRoomViewerListModel voiceRoomViewerListModel) {
            this.pageResult = voiceRoomViewerListModel;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDViewerModel(type=" + this.type + ", roomId=" + this.roomId + ", pageResult=" + this.pageResult + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            VoiceRoomViewerListModel voiceRoomViewerListModel = this.pageResult;
            if (voiceRoomViewerListModel == null) {
                out.writeInt(0);
                return;
            }
            out.writeInt(1);
            voiceRoomViewerListModel.writeToParcel(out, i9);
        }

        public VoiceRoomCMDViewerModel(int i9, @Nullable String str, @Nullable VoiceRoomViewerListModel voiceRoomViewerListModel) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.pageResult = voiceRoomViewerListModel;
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003Ja\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020\u0003HÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001J\u0019\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00065"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "roomId", "", "title", "coverImgUrl", "notice", "tagIds", "", "backImgUrl", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getBackImgUrl", "()Ljava/lang/String;", "setBackImgUrl", "(Ljava/lang/String;)V", "getCoverImgUrl", "setCoverImgUrl", "getNotice", "setNotice", "getRoomId", "setRoomId", "getTagIds", "()Ljava/util/List;", "setTagIds", "(Ljava/util/List;)V", "getTitle", "setTitle", "getType", "()I", "setType", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDVoiceRoomInfoMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDVoiceRoomInfoMessageModel> CREATOR = new Creator();
        @Nullable
        private String backImgUrl;
        @Nullable
        private String coverImgUrl;
        @Nullable
        private String notice;
        @Nullable
        private String roomId;
        @Nullable
        private List<Integer> tagIds;
        @Nullable
        private String title;
        private int type;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDVoiceRoomInfoMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDVoiceRoomInfoMessageModel createFromParcel(@NotNull Parcel parcel) {
                ArrayList arrayList;
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                int readInt = parcel.readInt();
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                if (parcel.readInt() == 0) {
                    arrayList = null;
                } else {
                    int readInt2 = parcel.readInt();
                    ArrayList arrayList2 = new ArrayList(readInt2);
                    for (int i9 = 0; i9 != readInt2; i9++) {
                        arrayList2.add(Integer.valueOf(parcel.readInt()));
                    }
                    arrayList = arrayList2;
                }
                return new VoiceRoomCMDVoiceRoomInfoMessageModel(readInt, readString, readString2, readString3, readString4, arrayList, parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDVoiceRoomInfoMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDVoiceRoomInfoMessageModel[i9];
            }
        }

        public VoiceRoomCMDVoiceRoomInfoMessageModel() {
            this(0, null, null, null, null, null, null, 127, null);
        }

        public /* synthetic */ VoiceRoomCMDVoiceRoomInfoMessageModel(int i9, String str, String str2, String str3, String str4, List list, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 528 : i9, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) != 0 ? "" : str4, (i10 & 32) != 0 ? null : list, (i10 & 64) == 0 ? str5 : "");
        }

        public static /* synthetic */ VoiceRoomCMDVoiceRoomInfoMessageModel copy$default(VoiceRoomCMDVoiceRoomInfoMessageModel voiceRoomCMDVoiceRoomInfoMessageModel, int i9, String str, String str2, String str3, String str4, List list, String str5, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomCMDVoiceRoomInfoMessageModel.type;
            }
            if ((i10 & 2) != 0) {
                str = voiceRoomCMDVoiceRoomInfoMessageModel.roomId;
            }
            String str6 = str;
            if ((i10 & 4) != 0) {
                str2 = voiceRoomCMDVoiceRoomInfoMessageModel.title;
            }
            String str7 = str2;
            if ((i10 & 8) != 0) {
                str3 = voiceRoomCMDVoiceRoomInfoMessageModel.coverImgUrl;
            }
            String str8 = str3;
            if ((i10 & 16) != 0) {
                str4 = voiceRoomCMDVoiceRoomInfoMessageModel.notice;
            }
            String str9 = str4;
            List<Integer> list2 = list;
            if ((i10 & 32) != 0) {
                list2 = voiceRoomCMDVoiceRoomInfoMessageModel.tagIds;
            }
            List list3 = list2;
            if ((i10 & 64) != 0) {
                str5 = voiceRoomCMDVoiceRoomInfoMessageModel.backImgUrl;
            }
            return voiceRoomCMDVoiceRoomInfoMessageModel.copy(i9, str6, str7, str8, str9, list3, str5);
        }

        public final int component1() {
            return this.type;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final String component3() {
            return this.title;
        }

        @Nullable
        public final String component4() {
            return this.coverImgUrl;
        }

        @Nullable
        public final String component5() {
            return this.notice;
        }

        @Nullable
        public final List<Integer> component6() {
            return this.tagIds;
        }

        @Nullable
        public final String component7() {
            return this.backImgUrl;
        }

        @NotNull
        public final VoiceRoomCMDVoiceRoomInfoMessageModel copy(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable List<Integer> list, @Nullable String str5) {
            return new VoiceRoomCMDVoiceRoomInfoMessageModel(i9, str, str2, str3, str4, list, str5);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDVoiceRoomInfoMessageModel) {
                VoiceRoomCMDVoiceRoomInfoMessageModel voiceRoomCMDVoiceRoomInfoMessageModel = (VoiceRoomCMDVoiceRoomInfoMessageModel) obj;
                return this.type == voiceRoomCMDVoiceRoomInfoMessageModel.type && Intrinsics.areEqual(this.roomId, voiceRoomCMDVoiceRoomInfoMessageModel.roomId) && Intrinsics.areEqual(this.title, voiceRoomCMDVoiceRoomInfoMessageModel.title) && Intrinsics.areEqual(this.coverImgUrl, voiceRoomCMDVoiceRoomInfoMessageModel.coverImgUrl) && Intrinsics.areEqual(this.notice, voiceRoomCMDVoiceRoomInfoMessageModel.notice) && Intrinsics.areEqual(this.tagIds, voiceRoomCMDVoiceRoomInfoMessageModel.tagIds) && Intrinsics.areEqual(this.backImgUrl, voiceRoomCMDVoiceRoomInfoMessageModel.backImgUrl);
            }
            return false;
        }

        @Nullable
        public final String getBackImgUrl() {
            return this.backImgUrl;
        }

        @Nullable
        public final String getCoverImgUrl() {
            return this.coverImgUrl;
        }

        @Nullable
        public final String getNotice() {
            return this.notice;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final List<Integer> getTagIds() {
            return this.tagIds;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int i9 = this.type * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.title;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.coverImgUrl;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.notice;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            List<Integer> list = this.tagIds;
            int hashCode5 = (hashCode4 + (list == null ? 0 : list.hashCode())) * 31;
            String str5 = this.backImgUrl;
            return hashCode5 + (str5 != null ? str5.hashCode() : 0);
        }

        public final void setBackImgUrl(@Nullable String str) {
            this.backImgUrl = str;
        }

        public final void setCoverImgUrl(@Nullable String str) {
            this.coverImgUrl = str;
        }

        public final void setNotice(@Nullable String str) {
            this.notice = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setTagIds(@Nullable List<Integer> list) {
            this.tagIds = list;
        }

        public final void setTitle(@Nullable String str) {
            this.title = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDVoiceRoomInfoMessageModel(type=" + this.type + ", roomId=" + this.roomId + ", title=" + this.title + ", coverImgUrl=" + this.coverImgUrl + ", notice=" + this.notice + ", tagIds=" + this.tagIds + ", backImgUrl=" + this.backImgUrl + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeString(this.roomId);
            out.writeString(this.title);
            out.writeString(this.coverImgUrl);
            out.writeString(this.notice);
            List<Integer> list = this.tagIds;
            if (list == null) {
                out.writeInt(0);
            } else {
                out.writeInt(1);
                out.writeInt(list.size());
                for (Integer num : list) {
                    out.writeInt(num.intValue());
                }
            }
            out.writeString(this.backImgUrl);
        }

        public VoiceRoomCMDVoiceRoomInfoMessageModel(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable List<Integer> list, @Nullable String str5) {
            super(null);
            this.type = i9;
            this.roomId = str;
            this.title = str2;
            this.coverImgUrl = str3;
            this.notice = str4;
            this.tagIds = list;
            this.backImgUrl = str5;
        }
    }

    private VoiceRoomCMDMessageModel() {
    }

    public /* synthetic */ VoiceRoomCMDMessageModel(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Parcelize
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b-\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\t\u0010/\u001a\u00020\u0003HÆ\u0003Jt\u00100\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u00101J\t\u00102\u001a\u00020\u0003HÖ\u0001J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\t\u00107\u001a\u00020\u0003HÖ\u0001J\t\u00108\u001a\u00020\u0006HÖ\u0001J\u0019\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000f\"\u0004\b\u001c\u0010\u0011R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000f\"\u0004\b\u001e\u0010\u0011R\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0013\"\u0004\b \u0010\u0015R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000f\"\u0004\b\"\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0013\"\u0004\b$\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000f\"\u0004\b&\u0010\u0011¨\u0006>"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "seatIndex", "roomId", "", Contants.USER_ID, "nickName", "smallImg", "dressHead", Contants.USER_levelId, "id", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V", "getDressHead", "()Ljava/lang/String;", "setDressHead", "(Ljava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getLevelId", "()Ljava/lang/Integer;", "setLevelId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getNickName", "setNickName", "getRoomId", "setRoomId", "getSeatIndex", "setSeatIndex", "getSmallImg", "setSmallImg", "getType", "setType", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomCMDUserOnSeatMessageModel extends VoiceRoomCMDMessageModel {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomCMDUserOnSeatMessageModel> CREATOR = new Creator();
        @Nullable
        private String dressHead;

        /* renamed from: id  reason: collision with root package name */
        private int f15982id;
        @Nullable
        private Integer levelId;
        @Nullable
        private String nickName;
        @Nullable
        private String roomId;
        @SerializedName("index")
        private int seatIndex;
        @Nullable
        private String smallImg;
        private int type;
        @Nullable
        private String userId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomCMDUserOnSeatMessageModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserOnSeatMessageModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomCMDUserOnSeatMessageModel(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomCMDUserOnSeatMessageModel[] newArray(int i9) {
                return new VoiceRoomCMDUserOnSeatMessageModel[i9];
            }
        }

        public VoiceRoomCMDUserOnSeatMessageModel() {
            this(0, 0, null, null, null, null, null, null, 0, FrameMetricsAggregator.EVERY_DURATION, null);
        }

        public /* synthetic */ VoiceRoomCMDUserOnSeatMessageModel(int i9, int i10, String str, String str2, String str3, String str4, String str5, Integer num, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? 521 : i9, (i12 & 2) != 0 ? 0 : i10, (i12 & 4) != 0 ? "" : str, (i12 & 8) != 0 ? "" : str2, (i12 & 16) != 0 ? "" : str3, (i12 & 32) != 0 ? "" : str4, (i12 & 64) == 0 ? str5 : "", (i12 & 128) != 0 ? 1 : num, (i12 & 256) != 0 ? -1 : i11);
        }

        public final int component1() {
            return this.type;
        }

        public final int component2() {
            return this.seatIndex;
        }

        @Nullable
        public final String component3() {
            return this.roomId;
        }

        @Nullable
        public final String component4() {
            return this.userId;
        }

        @Nullable
        public final String component5() {
            return this.nickName;
        }

        @Nullable
        public final String component6() {
            return this.smallImg;
        }

        @Nullable
        public final String component7() {
            return this.dressHead;
        }

        @Nullable
        public final Integer component8() {
            return this.levelId;
        }

        public final int component9() {
            return this.f15982id;
        }

        @NotNull
        public final VoiceRoomCMDUserOnSeatMessageModel copy(int i9, int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Integer num, int i11) {
            return new VoiceRoomCMDUserOnSeatMessageModel(i9, i10, str, str2, str3, str4, str5, num, i11);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomCMDUserOnSeatMessageModel) {
                VoiceRoomCMDUserOnSeatMessageModel voiceRoomCMDUserOnSeatMessageModel = (VoiceRoomCMDUserOnSeatMessageModel) obj;
                return this.type == voiceRoomCMDUserOnSeatMessageModel.type && this.seatIndex == voiceRoomCMDUserOnSeatMessageModel.seatIndex && Intrinsics.areEqual(this.roomId, voiceRoomCMDUserOnSeatMessageModel.roomId) && Intrinsics.areEqual(this.userId, voiceRoomCMDUserOnSeatMessageModel.userId) && Intrinsics.areEqual(this.nickName, voiceRoomCMDUserOnSeatMessageModel.nickName) && Intrinsics.areEqual(this.smallImg, voiceRoomCMDUserOnSeatMessageModel.smallImg) && Intrinsics.areEqual(this.dressHead, voiceRoomCMDUserOnSeatMessageModel.dressHead) && Intrinsics.areEqual(this.levelId, voiceRoomCMDUserOnSeatMessageModel.levelId) && this.f15982id == voiceRoomCMDUserOnSeatMessageModel.f15982id;
            }
            return false;
        }

        @Nullable
        public final String getDressHead() {
            return this.dressHead;
        }

        public final int getId() {
            return this.f15982id;
        }

        @Nullable
        public final Integer getLevelId() {
            return this.levelId;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getSeatIndex() {
            return this.seatIndex;
        }

        @Nullable
        public final String getSmallImg() {
            return this.smallImg;
        }

        public final int getType() {
            return this.type;
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            int i9 = ((this.type * 31) + this.seatIndex) * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userId;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.smallImg;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.dressHead;
            int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            Integer num = this.levelId;
            return ((hashCode5 + (num != null ? num.hashCode() : 0)) * 31) + this.f15982id;
        }

        public final void setDressHead(@Nullable String str) {
            this.dressHead = str;
        }

        public final void setId(int i9) {
            this.f15982id = i9;
        }

        public final void setLevelId(@Nullable Integer num) {
            this.levelId = num;
        }

        public final void setNickName(@Nullable String str) {
            this.nickName = str;
        }

        public final void setRoomId(@Nullable String str) {
            this.roomId = str;
        }

        public final void setSeatIndex(int i9) {
            this.seatIndex = i9;
        }

        public final void setSmallImg(@Nullable String str) {
            this.smallImg = str;
        }

        public final void setType(int i9) {
            this.type = i9;
        }

        public final void setUserId(@Nullable String str) {
            this.userId = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomCMDUserOnSeatMessageModel(type=" + this.type + ", seatIndex=" + this.seatIndex + ", roomId=" + this.roomId + ", userId=" + this.userId + ", nickName=" + this.nickName + ", smallImg=" + this.smallImg + ", dressHead=" + this.dressHead + ", levelId=" + this.levelId + ", id=" + this.f15982id + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            int intValue;
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.type);
            out.writeInt(this.seatIndex);
            out.writeString(this.roomId);
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.smallImg);
            out.writeString(this.dressHead);
            Integer num = this.levelId;
            if (num == null) {
                intValue = 0;
            } else {
                out.writeInt(1);
                intValue = num.intValue();
            }
            out.writeInt(intValue);
            out.writeInt(this.f15982id);
        }

        public VoiceRoomCMDUserOnSeatMessageModel(int i9, int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Integer num, int i11) {
            super(null);
            this.type = i9;
            this.seatIndex = i10;
            this.roomId = str;
            this.userId = str2;
            this.nickName = str3;
            this.smallImg = str4;
            this.dressHead = str5;
            this.levelId = num;
            this.f15982id = i11;
        }
    }
}
