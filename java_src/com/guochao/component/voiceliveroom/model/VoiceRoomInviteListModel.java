package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.tencent.xmagic.XmagicConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0019B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\fHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\fHÖ\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u001a"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;", "Landroid/os/Parcelable;", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "setList", "component1", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "VoiceRoomInviteUser", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomInviteListModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomInviteListModel> CREATOR = new Creator();
    @SerializedName("list")
    @Nullable
    private List<VoiceRoomInviteUser> list;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomInviteListModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomInviteListModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList2.add(VoiceRoomInviteUser.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new VoiceRoomInviteListModel(arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomInviteListModel[] newArray(int i9) {
            return new VoiceRoomInviteListModel[i9];
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jb\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010'J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\t\u0010.\u001a\u00020\u0007HÖ\u0001J\u0019\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0017\u0010\u0011\"\u0004\b\u0018\u0010\u0013R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u000fR \u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000fR \u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000f¨\u00064"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;", "Landroid/os/Parcelable;", XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID, "", "roomId", Contants.USER_ID, "userImg", "", "userNickName", "valueStr", "chatGroupId", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getChatGroupId", "()Ljava/lang/String;", "setChatGroupId", "(Ljava/lang/String;)V", "getNature", "()Ljava/lang/Integer;", "setNature", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getRoomId", "setRoomId", "getUserId", "setUserId", "getUserImg", "setUserImg", "getUserNickName", "setUserNickName", "getValueStr", "setValueStr", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class VoiceRoomInviteUser implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<VoiceRoomInviteUser> CREATOR = new Creator();
        @Nullable
        private String chatGroupId;
        @SerializedName(XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID)
        @Nullable
        private Integer nature;
        @SerializedName("roomId")
        @Nullable
        private Integer roomId;
        @SerializedName(Contants.USER_ID)
        @Nullable
        private Integer userId;
        @SerializedName("userImg")
        @Nullable
        private String userImg;
        @SerializedName("userNickName")
        @Nullable
        private String userNickName;
        @SerializedName("valueStr")
        @Nullable
        private String valueStr;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<VoiceRoomInviteUser> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomInviteUser createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new VoiceRoomInviteUser(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final VoiceRoomInviteUser[] newArray(int i9) {
                return new VoiceRoomInviteUser[i9];
            }
        }

        public VoiceRoomInviteUser(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.nature = num;
            this.roomId = num2;
            this.userId = num3;
            this.userImg = str;
            this.userNickName = str2;
            this.valueStr = str3;
            this.chatGroupId = str4;
        }

        public static /* synthetic */ VoiceRoomInviteUser copy$default(VoiceRoomInviteUser voiceRoomInviteUser, Integer num, Integer num2, Integer num3, String str, String str2, String str3, String str4, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                num = voiceRoomInviteUser.nature;
            }
            if ((i9 & 2) != 0) {
                num2 = voiceRoomInviteUser.roomId;
            }
            Integer num4 = num2;
            if ((i9 & 4) != 0) {
                num3 = voiceRoomInviteUser.userId;
            }
            Integer num5 = num3;
            if ((i9 & 8) != 0) {
                str = voiceRoomInviteUser.userImg;
            }
            String str5 = str;
            if ((i9 & 16) != 0) {
                str2 = voiceRoomInviteUser.userNickName;
            }
            String str6 = str2;
            if ((i9 & 32) != 0) {
                str3 = voiceRoomInviteUser.valueStr;
            }
            String str7 = str3;
            if ((i9 & 64) != 0) {
                str4 = voiceRoomInviteUser.chatGroupId;
            }
            return voiceRoomInviteUser.copy(num, num4, num5, str5, str6, str7, str4);
        }

        @Nullable
        public final Integer component1() {
            return this.nature;
        }

        @Nullable
        public final Integer component2() {
            return this.roomId;
        }

        @Nullable
        public final Integer component3() {
            return this.userId;
        }

        @Nullable
        public final String component4() {
            return this.userImg;
        }

        @Nullable
        public final String component5() {
            return this.userNickName;
        }

        @Nullable
        public final String component6() {
            return this.valueStr;
        }

        @Nullable
        public final String component7() {
            return this.chatGroupId;
        }

        @NotNull
        public final VoiceRoomInviteUser copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            return new VoiceRoomInviteUser(num, num2, num3, str, str2, str3, str4);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VoiceRoomInviteUser) {
                VoiceRoomInviteUser voiceRoomInviteUser = (VoiceRoomInviteUser) obj;
                return Intrinsics.areEqual(this.nature, voiceRoomInviteUser.nature) && Intrinsics.areEqual(this.roomId, voiceRoomInviteUser.roomId) && Intrinsics.areEqual(this.userId, voiceRoomInviteUser.userId) && Intrinsics.areEqual(this.userImg, voiceRoomInviteUser.userImg) && Intrinsics.areEqual(this.userNickName, voiceRoomInviteUser.userNickName) && Intrinsics.areEqual(this.valueStr, voiceRoomInviteUser.valueStr) && Intrinsics.areEqual(this.chatGroupId, voiceRoomInviteUser.chatGroupId);
            }
            return false;
        }

        @Nullable
        public final String getChatGroupId() {
            return this.chatGroupId;
        }

        @Nullable
        public final Integer getNature() {
            return this.nature;
        }

        @Nullable
        public final Integer getRoomId() {
            return this.roomId;
        }

        @Nullable
        public final Integer getUserId() {
            return this.userId;
        }

        @Nullable
        public final String getUserImg() {
            return this.userImg;
        }

        @Nullable
        public final String getUserNickName() {
            return this.userNickName;
        }

        @Nullable
        public final String getValueStr() {
            return this.valueStr;
        }

        public int hashCode() {
            Integer num = this.nature;
            int hashCode = (num == null ? 0 : num.hashCode()) * 31;
            Integer num2 = this.roomId;
            int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
            Integer num3 = this.userId;
            int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
            String str = this.userImg;
            int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.userNickName;
            int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.valueStr;
            int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.chatGroupId;
            return hashCode6 + (str4 != null ? str4.hashCode() : 0);
        }

        public final void setChatGroupId(@Nullable String str) {
            this.chatGroupId = str;
        }

        public final void setNature(@Nullable Integer num) {
            this.nature = num;
        }

        public final void setRoomId(@Nullable Integer num) {
            this.roomId = num;
        }

        public final void setUserId(@Nullable Integer num) {
            this.userId = num;
        }

        public final void setUserImg(@Nullable String str) {
            this.userImg = str;
        }

        public final void setUserNickName(@Nullable String str) {
            this.userNickName = str;
        }

        public final void setValueStr(@Nullable String str) {
            this.valueStr = str;
        }

        @NotNull
        public String toString() {
            return "VoiceRoomInviteUser(nature=" + this.nature + ", roomId=" + this.roomId + ", userId=" + this.userId + ", userImg=" + this.userImg + ", userNickName=" + this.userNickName + ", valueStr=" + this.valueStr + ", chatGroupId=" + this.chatGroupId + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            Integer num = this.nature;
            if (num == null) {
                out.writeInt(0);
            } else {
                out.writeInt(1);
                out.writeInt(num.intValue());
            }
            Integer num2 = this.roomId;
            if (num2 == null) {
                out.writeInt(0);
            } else {
                out.writeInt(1);
                out.writeInt(num2.intValue());
            }
            Integer num3 = this.userId;
            if (num3 == null) {
                out.writeInt(0);
            } else {
                out.writeInt(1);
                out.writeInt(num3.intValue());
            }
            out.writeString(this.userImg);
            out.writeString(this.userNickName);
            out.writeString(this.valueStr);
            out.writeString(this.chatGroupId);
        }
    }

    public VoiceRoomInviteListModel(@Nullable List<VoiceRoomInviteUser> list) {
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VoiceRoomInviteListModel copy$default(VoiceRoomInviteListModel voiceRoomInviteListModel, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = voiceRoomInviteListModel.list;
        }
        return voiceRoomInviteListModel.copy(list);
    }

    @Nullable
    public final List<VoiceRoomInviteUser> component1() {
        return this.list;
    }

    @NotNull
    public final VoiceRoomInviteListModel copy(@Nullable List<VoiceRoomInviteUser> list) {
        return new VoiceRoomInviteListModel(list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VoiceRoomInviteListModel) && Intrinsics.areEqual(this.list, ((VoiceRoomInviteListModel) obj).list);
    }

    @Nullable
    public final List<VoiceRoomInviteUser> getList() {
        return this.list;
    }

    public int hashCode() {
        List<VoiceRoomInviteUser> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final void setList(@Nullable List<VoiceRoomInviteUser> list) {
        this.list = list;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomInviteListModel(list=" + this.list + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        List<VoiceRoomInviteUser> list = this.list;
        if (list == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(list.size());
        for (VoiceRoomInviteUser voiceRoomInviteUser : list) {
            voiceRoomInviteUser.writeToParcel(out, i9);
        }
    }
}
