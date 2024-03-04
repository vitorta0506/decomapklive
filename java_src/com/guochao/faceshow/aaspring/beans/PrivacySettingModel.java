package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\bL\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001nBµ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003¢\u0006\u0002\u0010\u001aJ\t\u0010K\u001a\u00020\u0003HÆ\u0003J\t\u0010L\u001a\u00020\u0003HÆ\u0003J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\u0003HÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\t\u0010P\u001a\u00020\u0003HÆ\u0003J\t\u0010Q\u001a\u00020\u0003HÆ\u0003J\t\u0010R\u001a\u00020\u0003HÆ\u0003J\t\u0010S\u001a\u00020\u0003HÆ\u0003J\t\u0010T\u001a\u00020\u0003HÆ\u0003J\t\u0010U\u001a\u00020\u0003HÆ\u0003J\t\u0010V\u001a\u00020\u0003HÆ\u0003J\t\u0010W\u001a\u00020\u0017HÆ\u0003J\t\u0010X\u001a\u00020\u0003HÆ\u0003J\t\u0010Y\u001a\u00020\u0003HÆ\u0003J\t\u0010Z\u001a\u00020\u0003HÆ\u0003J\t\u0010[\u001a\u00020\u0003HÆ\u0003J\t\u0010\\\u001a\u00020\u0003HÆ\u0003J\t\u0010]\u001a\u00020\u0003HÆ\u0003J\t\u0010^\u001a\u00020\u0003HÆ\u0003J\t\u0010_\u001a\u00020\u0003HÆ\u0003J\t\u0010`\u001a\u00020\u0003HÆ\u0003Jå\u0001\u0010a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003HÆ\u0001J\t\u0010b\u001a\u00020\u0003HÖ\u0001J\u0013\u0010c\u001a\u00020d2\b\u0010e\u001a\u0004\u0018\u00010fHÖ\u0003J\t\u0010g\u001a\u00020\u0003HÖ\u0001J\t\u0010h\u001a\u00020\u0017HÖ\u0001J\u0019\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001c\"\u0004\b \u0010\u001eR\u001e\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR\u001e\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001eR\u001e\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001c\"\u0004\b&\u0010\u001eR\u001e\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001c\"\u0004\b(\u0010\u001eR\u001e\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001c\"\u0004\b*\u0010\u001eR\u001e\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001c\"\u0004\b,\u0010\u001eR\u001e\u0010\u000b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001c\"\u0004\b.\u0010\u001eR\u001e\u0010\f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u001c\"\u0004\b0\u0010\u001eR\u001e\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001c\"\u0004\b2\u0010\u001eR\u001e\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u001c\"\u0004\b4\u0010\u001eR\u001e\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001c\"\u0004\b6\u0010\u001eR\u001e\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u001c\"\u0004\b8\u0010\u001eR\u001e\u0010\u0011\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u001c\"\u0004\b:\u0010\u001eR\u001e\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u001c\"\u0004\b<\u0010\u001eR\u001e\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u001c\"\u0004\b>\u0010\u001eR\u001e\u0010\u0014\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u001c\"\u0004\b@\u0010\u001eR\u001e\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u001c\"\u0004\bB\u0010\u001eR\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001e\u0010\u0018\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u001c\"\u0004\bH\u0010\u001eR\u001e\u0010\u0019\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010\u001c\"\u0004\bJ\u0010\u001e¨\u0006o"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;", "Landroid/os/Parcelable;", "addressBook", "", "appointAuth", "basicInfo", "career", "chatSet", "chatSwitch", "closeDistance", "dialogue", "distance", "emotion", NativeProtocol.AUDIENCE_FRIENDS, "imMsgSet", "interest", "language", "makeFriend", "nearby", "nearbyFunc", "online", "privateInvite", "setTime", "", "version", "voiceRoomStatus", "(IIIIIIIIIIIIIIIIIIILjava/lang/String;II)V", "getAddressBook", "()I", "setAddressBook", "(I)V", "getAppointAuth", "setAppointAuth", "getBasicInfo", "setBasicInfo", "getCareer", "setCareer", "getChatSet", "setChatSet", "getChatSwitch", "setChatSwitch", "getCloseDistance", "setCloseDistance", "getDialogue", "setDialogue", "getDistance", "setDistance", "getEmotion", "setEmotion", "getFriends", "setFriends", "getImMsgSet", "setImMsgSet", "getInterest", "setInterest", "getLanguage", "setLanguage", "getMakeFriend", "setMakeFriend", "getNearby", "setNearby", "getNearbyFunc", "setNearbyFunc", "getOnline", "setOnline", "getPrivateInvite", "setPrivateInvite", "getSetTime", "()Ljava/lang/String;", "setSetTime", "(Ljava/lang/String;)V", "getVersion", "setVersion", "getVoiceRoomStatus", "setVoiceRoomStatus", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "VoiceRoomStatusModel", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PrivacySettingModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<PrivacySettingModel> CREATOR = new Creator();
    @SerializedName("addressBook")
    private int addressBook;
    @SerializedName("appointAuth")
    private int appointAuth;
    @SerializedName("basicInfo")
    private int basicInfo;
    @SerializedName("career")
    private int career;
    @SerializedName("chatSet")
    private int chatSet;
    @SerializedName("chatSwitch")
    private int chatSwitch;
    @SerializedName("closeDistance")
    private int closeDistance;
    @SerializedName("dialogue")
    private int dialogue;
    @SerializedName("distance")
    private int distance;
    @SerializedName("emotion")
    private int emotion;
    @SerializedName(NativeProtocol.AUDIENCE_FRIENDS)
    private int friends;
    @SerializedName("imMsgSet")
    private int imMsgSet;
    @SerializedName("interest")
    private int interest;
    @SerializedName("language")
    private int language;
    @SerializedName("makeFriend")
    private int makeFriend;
    @SerializedName("nearby")
    private int nearby;
    @SerializedName("nearbyFunc")
    private int nearbyFunc;
    @SerializedName("online")
    private int online;
    @SerializedName("privateInvite")
    private int privateInvite;
    @SerializedName("setTime")
    @NotNull
    private String setTime;
    @SerializedName("version")
    private int version;
    @SerializedName("voiceRoomStatus")
    private int voiceRoomStatus;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<PrivacySettingModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final PrivacySettingModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new PrivacySettingModel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final PrivacySettingModel[] newArray(int i9) {
            return new PrivacySettingModel[i9];
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\t\u0010\n\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;", "Landroid/os/Parcelable;", "voiceRoomStatus", "", "(I)V", "getVoiceRoomStatus", "()I", "setVoiceRoomStatus", "component1", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomStatusModel implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomStatusModel> CREATOR = new Creator();
        @SerializedName("voiceRoomStatus")
        private int voiceRoomStatus;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomStatusModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomStatusModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomStatusModel(parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomStatusModel[] newArray(int i9) {
                return new VoiceRoomStatusModel[i9];
            }
        }

        public VoiceRoomStatusModel(int i9) {
            this.voiceRoomStatus = i9;
        }

        public static /* synthetic */ VoiceRoomStatusModel copy$default(VoiceRoomStatusModel voiceRoomStatusModel, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = voiceRoomStatusModel.voiceRoomStatus;
            }
            return voiceRoomStatusModel.copy(i9);
        }

        public final int component1() {
            return this.voiceRoomStatus;
        }

        @NotNull
        public final VoiceRoomStatusModel copy(int i9) {
            return new VoiceRoomStatusModel(i9);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VoiceRoomStatusModel) && this.voiceRoomStatus == ((VoiceRoomStatusModel) obj).voiceRoomStatus;
        }

        public final int getVoiceRoomStatus() {
            return this.voiceRoomStatus;
        }

        public int hashCode() {
            return this.voiceRoomStatus;
        }

        public final void setVoiceRoomStatus(int i9) {
            this.voiceRoomStatus = i9;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomStatusModel(voiceRoomStatus=" + this.voiceRoomStatus + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.voiceRoomStatus);
        }
    }

    public PrivacySettingModel(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, @NotNull String setTime, int i28, int i29) {
        Intrinsics.checkNotNullParameter(setTime, "setTime");
        this.addressBook = i9;
        this.appointAuth = i10;
        this.basicInfo = i11;
        this.career = i12;
        this.chatSet = i13;
        this.chatSwitch = i14;
        this.closeDistance = i15;
        this.dialogue = i16;
        this.distance = i17;
        this.emotion = i18;
        this.friends = i19;
        this.imMsgSet = i20;
        this.interest = i21;
        this.language = i22;
        this.makeFriend = i23;
        this.nearby = i24;
        this.nearbyFunc = i25;
        this.online = i26;
        this.privateInvite = i27;
        this.setTime = setTime;
        this.version = i28;
        this.voiceRoomStatus = i29;
    }

    public final int component1() {
        return this.addressBook;
    }

    public final int component10() {
        return this.emotion;
    }

    public final int component11() {
        return this.friends;
    }

    public final int component12() {
        return this.imMsgSet;
    }

    public final int component13() {
        return this.interest;
    }

    public final int component14() {
        return this.language;
    }

    public final int component15() {
        return this.makeFriend;
    }

    public final int component16() {
        return this.nearby;
    }

    public final int component17() {
        return this.nearbyFunc;
    }

    public final int component18() {
        return this.online;
    }

    public final int component19() {
        return this.privateInvite;
    }

    public final int component2() {
        return this.appointAuth;
    }

    @NotNull
    public final String component20() {
        return this.setTime;
    }

    public final int component21() {
        return this.version;
    }

    public final int component22() {
        return this.voiceRoomStatus;
    }

    public final int component3() {
        return this.basicInfo;
    }

    public final int component4() {
        return this.career;
    }

    public final int component5() {
        return this.chatSet;
    }

    public final int component6() {
        return this.chatSwitch;
    }

    public final int component7() {
        return this.closeDistance;
    }

    public final int component8() {
        return this.dialogue;
    }

    public final int component9() {
        return this.distance;
    }

    @NotNull
    public final PrivacySettingModel copy(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, @NotNull String setTime, int i28, int i29) {
        Intrinsics.checkNotNullParameter(setTime, "setTime");
        return new PrivacySettingModel(i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, setTime, i28, i29);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrivacySettingModel) {
            PrivacySettingModel privacySettingModel = (PrivacySettingModel) obj;
            return this.addressBook == privacySettingModel.addressBook && this.appointAuth == privacySettingModel.appointAuth && this.basicInfo == privacySettingModel.basicInfo && this.career == privacySettingModel.career && this.chatSet == privacySettingModel.chatSet && this.chatSwitch == privacySettingModel.chatSwitch && this.closeDistance == privacySettingModel.closeDistance && this.dialogue == privacySettingModel.dialogue && this.distance == privacySettingModel.distance && this.emotion == privacySettingModel.emotion && this.friends == privacySettingModel.friends && this.imMsgSet == privacySettingModel.imMsgSet && this.interest == privacySettingModel.interest && this.language == privacySettingModel.language && this.makeFriend == privacySettingModel.makeFriend && this.nearby == privacySettingModel.nearby && this.nearbyFunc == privacySettingModel.nearbyFunc && this.online == privacySettingModel.online && this.privateInvite == privacySettingModel.privateInvite && Intrinsics.areEqual(this.setTime, privacySettingModel.setTime) && this.version == privacySettingModel.version && this.voiceRoomStatus == privacySettingModel.voiceRoomStatus;
        }
        return false;
    }

    public final int getAddressBook() {
        return this.addressBook;
    }

    public final int getAppointAuth() {
        return this.appointAuth;
    }

    public final int getBasicInfo() {
        return this.basicInfo;
    }

    public final int getCareer() {
        return this.career;
    }

    public final int getChatSet() {
        return this.chatSet;
    }

    public final int getChatSwitch() {
        return this.chatSwitch;
    }

    public final int getCloseDistance() {
        return this.closeDistance;
    }

    public final int getDialogue() {
        return this.dialogue;
    }

    public final int getDistance() {
        return this.distance;
    }

    public final int getEmotion() {
        return this.emotion;
    }

    public final int getFriends() {
        return this.friends;
    }

    public final int getImMsgSet() {
        return this.imMsgSet;
    }

    public final int getInterest() {
        return this.interest;
    }

    public final int getLanguage() {
        return this.language;
    }

    public final int getMakeFriend() {
        return this.makeFriend;
    }

    public final int getNearby() {
        return this.nearby;
    }

    public final int getNearbyFunc() {
        return this.nearbyFunc;
    }

    public final int getOnline() {
        return this.online;
    }

    public final int getPrivateInvite() {
        return this.privateInvite;
    }

    @NotNull
    public final String getSetTime() {
        return this.setTime;
    }

    public final int getVersion() {
        return this.version;
    }

    public final int getVoiceRoomStatus() {
        return this.voiceRoomStatus;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((this.addressBook * 31) + this.appointAuth) * 31) + this.basicInfo) * 31) + this.career) * 31) + this.chatSet) * 31) + this.chatSwitch) * 31) + this.closeDistance) * 31) + this.dialogue) * 31) + this.distance) * 31) + this.emotion) * 31) + this.friends) * 31) + this.imMsgSet) * 31) + this.interest) * 31) + this.language) * 31) + this.makeFriend) * 31) + this.nearby) * 31) + this.nearbyFunc) * 31) + this.online) * 31) + this.privateInvite) * 31) + this.setTime.hashCode()) * 31) + this.version) * 31) + this.voiceRoomStatus;
    }

    public final void setAddressBook(int i9) {
        this.addressBook = i9;
    }

    public final void setAppointAuth(int i9) {
        this.appointAuth = i9;
    }

    public final void setBasicInfo(int i9) {
        this.basicInfo = i9;
    }

    public final void setCareer(int i9) {
        this.career = i9;
    }

    public final void setChatSet(int i9) {
        this.chatSet = i9;
    }

    public final void setChatSwitch(int i9) {
        this.chatSwitch = i9;
    }

    public final void setCloseDistance(int i9) {
        this.closeDistance = i9;
    }

    public final void setDialogue(int i9) {
        this.dialogue = i9;
    }

    public final void setDistance(int i9) {
        this.distance = i9;
    }

    public final void setEmotion(int i9) {
        this.emotion = i9;
    }

    public final void setFriends(int i9) {
        this.friends = i9;
    }

    public final void setImMsgSet(int i9) {
        this.imMsgSet = i9;
    }

    public final void setInterest(int i9) {
        this.interest = i9;
    }

    public final void setLanguage(int i9) {
        this.language = i9;
    }

    public final void setMakeFriend(int i9) {
        this.makeFriend = i9;
    }

    public final void setNearby(int i9) {
        this.nearby = i9;
    }

    public final void setNearbyFunc(int i9) {
        this.nearbyFunc = i9;
    }

    public final void setOnline(int i9) {
        this.online = i9;
    }

    public final void setPrivateInvite(int i9) {
        this.privateInvite = i9;
    }

    public final void setSetTime(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.setTime = str;
    }

    public final void setVersion(int i9) {
        this.version = i9;
    }

    public final void setVoiceRoomStatus(int i9) {
        this.voiceRoomStatus = i9;
    }

    @NotNull
    public String toString() {
        return "PrivacySettingModel(addressBook=" + this.addressBook + ", appointAuth=" + this.appointAuth + ", basicInfo=" + this.basicInfo + ", career=" + this.career + ", chatSet=" + this.chatSet + ", chatSwitch=" + this.chatSwitch + ", closeDistance=" + this.closeDistance + ", dialogue=" + this.dialogue + ", distance=" + this.distance + ", emotion=" + this.emotion + ", friends=" + this.friends + ", imMsgSet=" + this.imMsgSet + ", interest=" + this.interest + ", language=" + this.language + ", makeFriend=" + this.makeFriend + ", nearby=" + this.nearby + ", nearbyFunc=" + this.nearbyFunc + ", online=" + this.online + ", privateInvite=" + this.privateInvite + ", setTime=" + this.setTime + ", version=" + this.version + ", voiceRoomStatus=" + this.voiceRoomStatus + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.addressBook);
        out.writeInt(this.appointAuth);
        out.writeInt(this.basicInfo);
        out.writeInt(this.career);
        out.writeInt(this.chatSet);
        out.writeInt(this.chatSwitch);
        out.writeInt(this.closeDistance);
        out.writeInt(this.dialogue);
        out.writeInt(this.distance);
        out.writeInt(this.emotion);
        out.writeInt(this.friends);
        out.writeInt(this.imMsgSet);
        out.writeInt(this.interest);
        out.writeInt(this.language);
        out.writeInt(this.makeFriend);
        out.writeInt(this.nearby);
        out.writeInt(this.nearbyFunc);
        out.writeInt(this.online);
        out.writeInt(this.privateInvite);
        out.writeString(this.setTime);
        out.writeInt(this.version);
        out.writeInt(this.voiceRoomStatus);
    }
}
