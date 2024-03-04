package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.component.liveroom.model.GCVoiceRoomSeatModel;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b$\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 U2\u00020\u0001:\u0001UBµ\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0014J\t\u00108\u001a\u00020\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\u0010\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00104J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0007HÆ\u0003J¾\u0001\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010IJ\t\u0010J\u001a\u00020\u0003HÖ\u0001J\u0013\u0010K\u001a\u00020(2\b\u0010L\u001a\u0004\u0018\u00010MHÖ\u0003J\t\u0010N\u001a\u00020\u0003HÖ\u0001J\t\u0010O\u001a\u00020\u0007HÖ\u0001J\u0019\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\n\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0005\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u001bR\u0016\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018R\u0014\u0010\t\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u001bR\u001e\u0010\u0012\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0016\"\u0004\b\"\u0010\u001bR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010%R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0018R\u0011\u0010'\u001a\u00020(8F¢\u0006\u0006\u001a\u0004\b)\u0010*R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0016\"\u0004\b,\u0010\u001bR\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0016\"\u0004\b.\u0010\u001bR\u001e\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0016\"\u0004\b0\u0010\u001bR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u0018R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u0018R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u00105\u001a\u0004\b3\u00104R\u0014\u00106\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u0016¨\u0006V"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;", "seatIndex", "", "seatStatus", "coinNumber", Contants.USER_ID, "", "nickName", "gender", "age", "smallAvatarUrl", "countryLogo", "dressHead", "avatarUrl", "roleType", "vip", "id", "level", "mvpUrl", "(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)V", "getAge", "()I", "getAvatarUrl", "()Ljava/lang/String;", "getCoinNumber", "setCoinNumber", "(I)V", "getCountryLogo", "getDressHead", "getGender", "getId", "setId", "getLevel", "setLevel", "getMvpUrl", "setMvpUrl", "(Ljava/lang/String;)V", "getNickName", "onSeat", "", "getOnSeat", "()Z", "getRoleType", "setRoleType", "getSeatIndex", "setSeatIndex", "getSeatStatus", "setSeatStatus", "getSmallAvatarUrl", "getUserId", "getVip", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "vipLevel", "getVipLevel", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomUserOnSeatModel implements GCVoiceRoomSeatModel {
    public static final int SEAT_STATUS_CLOSE_MICRO = 4;
    public static final int SEAT_STATUS_EMPTY = 0;
    public static final int SEAT_STATUS_LOCK_MICRO = 3;
    public static final int SEAT_STATUS_OPEN_MICRO = 2;
    public static final int SEAT_STATUS_OPEN_MICRO_PRO = 1;
    private final int age;
    @Nullable
    private final String avatarUrl;
    @SerializedName("income")
    private int coinNumber;
    @Nullable
    private final String countryLogo;
    @SerializedName("dressHead")
    @Nullable
    private final String dressHead;
    private final int gender;

    /* renamed from: id  reason: collision with root package name */
    private int f15985id;
    @SerializedName(Contants.USER_levelId)
    private int level;
    @Nullable
    private String mvpUrl;
    @Nullable
    private final String nickName;
    private int roleType;
    @SerializedName("index")
    private int seatIndex;
    @SerializedName("status")
    private int seatStatus;
    @SerializedName(alternate = {"img"}, value = "smallImg")
    @Nullable
    private final String smallAvatarUrl;
    @Nullable
    private final String userId;
    @Nullable
    private final Integer vip;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<VoiceRoomUserOnSeatModel> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Companion;", "", "()V", "SEAT_STATUS_CLOSE_MICRO", "", "SEAT_STATUS_EMPTY", "SEAT_STATUS_LOCK_MICRO", "SEAT_STATUS_OPEN_MICRO", "SEAT_STATUS_OPEN_MICRO_PRO", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomUserOnSeatModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomUserOnSeatModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomUserOnSeatModel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt(), parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomUserOnSeatModel[] newArray(int i9) {
            return new VoiceRoomUserOnSeatModel[i9];
        }
    }

    public VoiceRoomUserOnSeatModel() {
        this(0, 0, 0, null, null, 0, 0, null, null, null, null, 0, null, 0, 0, null, 65535, null);
    }

    public VoiceRoomUserOnSeatModel(int i9, int i10, int i11, @Nullable String str, @Nullable String str2, int i12, int i13, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, int i14, @Nullable Integer num, int i15, int i16, @Nullable String str7) {
        this.seatIndex = i9;
        this.seatStatus = i10;
        this.coinNumber = i11;
        this.userId = str;
        this.nickName = str2;
        this.gender = i12;
        this.age = i13;
        this.smallAvatarUrl = str3;
        this.countryLogo = str4;
        this.dressHead = str5;
        this.avatarUrl = str6;
        this.roleType = i14;
        this.vip = num;
        this.f15985id = i15;
        this.level = i16;
        this.mvpUrl = str7;
    }

    public final int component1() {
        return getSeatIndex();
    }

    @Nullable
    public final String component10() {
        return getDressHead();
    }

    @Nullable
    public final String component11() {
        return getAvatarUrl();
    }

    public final int component12() {
        return this.roleType;
    }

    @Nullable
    public final Integer component13() {
        return this.vip;
    }

    public final int component14() {
        return this.f15985id;
    }

    public final int component15() {
        return getLevel();
    }

    @Nullable
    public final String component16() {
        return getMvpUrl();
    }

    public final int component2() {
        return getSeatStatus();
    }

    public final int component3() {
        return getCoinNumber();
    }

    @Nullable
    public final String component4() {
        return getUserId();
    }

    @Nullable
    public final String component5() {
        return getNickName();
    }

    public final int component6() {
        return getGender();
    }

    public final int component7() {
        return getAge();
    }

    @Nullable
    public final String component8() {
        return getSmallAvatarUrl();
    }

    @Nullable
    public final String component9() {
        return getCountryLogo();
    }

    @NotNull
    public final VoiceRoomUserOnSeatModel copy(int i9, int i10, int i11, @Nullable String str, @Nullable String str2, int i12, int i13, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, int i14, @Nullable Integer num, int i15, int i16, @Nullable String str7) {
        return new VoiceRoomUserOnSeatModel(i9, i10, i11, str, str2, i12, i13, str3, str4, str5, str6, i14, num, i15, i16, str7);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomUserOnSeatModel) {
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = (VoiceRoomUserOnSeatModel) obj;
            return getSeatIndex() == voiceRoomUserOnSeatModel.getSeatIndex() && getSeatStatus() == voiceRoomUserOnSeatModel.getSeatStatus() && getCoinNumber() == voiceRoomUserOnSeatModel.getCoinNumber() && Intrinsics.areEqual(getUserId(), voiceRoomUserOnSeatModel.getUserId()) && Intrinsics.areEqual(getNickName(), voiceRoomUserOnSeatModel.getNickName()) && getGender() == voiceRoomUserOnSeatModel.getGender() && getAge() == voiceRoomUserOnSeatModel.getAge() && Intrinsics.areEqual(getSmallAvatarUrl(), voiceRoomUserOnSeatModel.getSmallAvatarUrl()) && Intrinsics.areEqual(getCountryLogo(), voiceRoomUserOnSeatModel.getCountryLogo()) && Intrinsics.areEqual(getDressHead(), voiceRoomUserOnSeatModel.getDressHead()) && Intrinsics.areEqual(getAvatarUrl(), voiceRoomUserOnSeatModel.getAvatarUrl()) && this.roleType == voiceRoomUserOnSeatModel.roleType && Intrinsics.areEqual(this.vip, voiceRoomUserOnSeatModel.vip) && this.f15985id == voiceRoomUserOnSeatModel.f15985id && getLevel() == voiceRoomUserOnSeatModel.getLevel() && Intrinsics.areEqual(getMvpUrl(), voiceRoomUserOnSeatModel.getMvpUrl());
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public int getAge() {
        return this.age;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceRoomSeatModel
    public int getCoinNumber() {
        return this.coinNumber;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getCountryLogo() {
        return this.countryLogo;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getDressHead() {
        return this.dressHead;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public int getGender() {
        return this.gender;
    }

    public final int getId() {
        return this.f15985id;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUser
    public int getLevel() {
        return this.level;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getMvpUrl() {
        return this.mvpUrl;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getNickName() {
        return this.nickName;
    }

    public final boolean getOnSeat() {
        return getSeatStatus() == 2 || getSeatStatus() == 4;
    }

    public final int getRoleType() {
        return this.roleType;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceRoomSeatModel
    public int getSeatIndex() {
        return this.seatIndex;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceRoomSeatModel
    public int getSeatStatus() {
        return this.seatStatus;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getSmallAvatarUrl() {
        return this.smallAvatarUrl;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getUserId() {
        return this.userId;
    }

    @Nullable
    public final Integer getVip() {
        return this.vip;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserVipInfo
    public int getVipLevel() {
        Integer num = this.vip;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public int hashCode() {
        int seatIndex = ((((((((((((((((((((((getSeatIndex() * 31) + getSeatStatus()) * 31) + getCoinNumber()) * 31) + (getUserId() == null ? 0 : getUserId().hashCode())) * 31) + (getNickName() == null ? 0 : getNickName().hashCode())) * 31) + getGender()) * 31) + getAge()) * 31) + (getSmallAvatarUrl() == null ? 0 : getSmallAvatarUrl().hashCode())) * 31) + (getCountryLogo() == null ? 0 : getCountryLogo().hashCode())) * 31) + (getDressHead() == null ? 0 : getDressHead().hashCode())) * 31) + (getAvatarUrl() == null ? 0 : getAvatarUrl().hashCode())) * 31) + this.roleType) * 31;
        Integer num = this.vip;
        return ((((((seatIndex + (num == null ? 0 : num.hashCode())) * 31) + this.f15985id) * 31) + getLevel()) * 31) + (getMvpUrl() != null ? getMvpUrl().hashCode() : 0);
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceRoomSeatModel
    public void setCoinNumber(int i9) {
        this.coinNumber = i9;
    }

    public final void setId(int i9) {
        this.f15985id = i9;
    }

    public void setLevel(int i9) {
        this.level = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public void setMvpUrl(@Nullable String str) {
        this.mvpUrl = str;
    }

    public final void setRoleType(int i9) {
        this.roleType = i9;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceRoomSeatModel
    public void setSeatIndex(int i9) {
        this.seatIndex = i9;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceRoomSeatModel
    public void setSeatStatus(int i9) {
        this.seatStatus = i9;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomUserOnSeatModel(seatIndex=" + getSeatIndex() + ", seatStatus=" + getSeatStatus() + ", coinNumber=" + getCoinNumber() + ", userId=" + getUserId() + ", nickName=" + getNickName() + ", gender=" + getGender() + ", age=" + getAge() + ", smallAvatarUrl=" + getSmallAvatarUrl() + ", countryLogo=" + getCountryLogo() + ", dressHead=" + getDressHead() + ", avatarUrl=" + getAvatarUrl() + ", roleType=" + this.roleType + ", vip=" + this.vip + ", id=" + this.f15985id + ", level=" + getLevel() + ", mvpUrl=" + getMvpUrl() + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        int intValue;
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.seatIndex);
        out.writeInt(this.seatStatus);
        out.writeInt(this.coinNumber);
        out.writeString(this.userId);
        out.writeString(this.nickName);
        out.writeInt(this.gender);
        out.writeInt(this.age);
        out.writeString(this.smallAvatarUrl);
        out.writeString(this.countryLogo);
        out.writeString(this.dressHead);
        out.writeString(this.avatarUrl);
        out.writeInt(this.roleType);
        Integer num = this.vip;
        if (num == null) {
            intValue = 0;
        } else {
            out.writeInt(1);
            intValue = num.intValue();
        }
        out.writeInt(intValue);
        out.writeInt(this.f15985id);
        out.writeInt(this.level);
        out.writeString(this.mvpUrl);
    }

    public /* synthetic */ VoiceRoomUserOnSeatModel(int i9, int i10, int i11, String str, String str2, int i12, int i13, String str3, String str4, String str5, String str6, int i14, Integer num, int i15, int i16, String str7, int i17, DefaultConstructorMarker defaultConstructorMarker) {
        this((i17 & 1) != 0 ? 0 : i9, (i17 & 2) != 0 ? 0 : i10, (i17 & 4) != 0 ? 0 : i11, (i17 & 8) != 0 ? "" : str, (i17 & 16) != 0 ? "" : str2, (i17 & 32) != 0 ? 0 : i12, (i17 & 64) != 0 ? 0 : i13, (i17 & 128) != 0 ? "" : str3, (i17 & 256) != 0 ? "" : str4, (i17 & 512) != 0 ? "" : str5, (i17 & 1024) == 0 ? str6 : "", (i17 & 2048) != 0 ? 30 : i14, (i17 & 4096) != 0 ? 0 : num, (i17 & 8192) != 0 ? -1 : i15, (i17 & 16384) != 0 ? 1 : i16, (i17 & 32768) != 0 ? null : str7);
    }
}
