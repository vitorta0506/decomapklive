package com.guochao.faceshow.aaspring.db;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.tencent.ugc.datereport.UGCDataReportDef;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Entity(tableName = "friend")
@Parcelize
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b/\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bw\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u000fHÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u00107\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010(J\u0010\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0080\u0001\u0010:\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u000fHÆ\u0001¢\u0006\u0002\u0010;J\t\u0010<\u001a\u00020\u0005HÖ\u0001J\u0013\u0010=\u001a\u00020\u000f2\b\u0010>\u001a\u0004\u0018\u00010?HÖ\u0003J\t\u0010@\u001a\u00020\u0005HÖ\u0001J\t\u0010A\u001a\u00020\u0003HÖ\u0001J\u0019\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001e\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0012\"\u0004\b!\u0010\u0014R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b,\u0010#\"\u0004\b-\u0010%R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0012\"\u0004\b/\u0010\u0014¨\u0006G"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "Landroid/os/Parcelable;", "friendId", "", "groupId", "", "nickName", "headImg", "signature", "onlineStatue", "onlineTime", "", "sendGiftNum", "countryFlag", "isSelect", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)V", "getCountryFlag", "()Ljava/lang/String;", "setCountryFlag", "(Ljava/lang/String;)V", "getFriendId", "setFriendId", "getGroupId", "()I", "setGroupId", "(I)V", "getHeadImg", "setHeadImg", "()Z", "setSelect", "(Z)V", "getNickName", "setNickName", "getOnlineStatue", "()Ljava/lang/Integer;", "setOnlineStatue", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getOnlineTime", "()Ljava/lang/Long;", "setOnlineTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getSendGiftNum", "setSendGiftNum", "getSignature", "setSignature", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendInfo implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<FriendInfo> CREATOR = new Creator();
    @Nullable
    private String countryFlag;
    @PrimaryKey
    @NotNull
    private String friendId;
    private int groupId;
    @Nullable
    private String headImg;
    @Ignore
    private boolean isSelect;
    @Nullable
    private String nickName;
    @Nullable
    private Integer onlineStatue;
    @Nullable
    private Long onlineTime;
    @Nullable
    private Integer sendGiftNum;
    @Nullable
    private String signature;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<FriendInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final FriendInfo createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new FriendInfo(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final FriendInfo[] newArray(int i9) {
            return new FriendInfo[i9];
        }
    }

    public FriendInfo() {
        this(null, 0, null, null, null, null, null, null, null, false, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER, null);
    }

    public FriendInfo(@NonNull @NotNull String friendId, int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Long l10, @Nullable Integer num2, @Nullable String str4, boolean z10) {
        Intrinsics.checkNotNullParameter(friendId, "friendId");
        this.friendId = friendId;
        this.groupId = i9;
        this.nickName = str;
        this.headImg = str2;
        this.signature = str3;
        this.onlineStatue = num;
        this.onlineTime = l10;
        this.sendGiftNum = num2;
        this.countryFlag = str4;
        this.isSelect = z10;
    }

    @NotNull
    public final String component1() {
        return this.friendId;
    }

    public final boolean component10() {
        return this.isSelect;
    }

    public final int component2() {
        return this.groupId;
    }

    @Nullable
    public final String component3() {
        return this.nickName;
    }

    @Nullable
    public final String component4() {
        return this.headImg;
    }

    @Nullable
    public final String component5() {
        return this.signature;
    }

    @Nullable
    public final Integer component6() {
        return this.onlineStatue;
    }

    @Nullable
    public final Long component7() {
        return this.onlineTime;
    }

    @Nullable
    public final Integer component8() {
        return this.sendGiftNum;
    }

    @Nullable
    public final String component9() {
        return this.countryFlag;
    }

    @NotNull
    public final FriendInfo copy(@NonNull @NotNull String friendId, int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Long l10, @Nullable Integer num2, @Nullable String str4, boolean z10) {
        Intrinsics.checkNotNullParameter(friendId, "friendId");
        return new FriendInfo(friendId, i9, str, str2, str3, num, l10, num2, str4, z10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendInfo) {
            FriendInfo friendInfo = (FriendInfo) obj;
            return Intrinsics.areEqual(this.friendId, friendInfo.friendId) && this.groupId == friendInfo.groupId && Intrinsics.areEqual(this.nickName, friendInfo.nickName) && Intrinsics.areEqual(this.headImg, friendInfo.headImg) && Intrinsics.areEqual(this.signature, friendInfo.signature) && Intrinsics.areEqual(this.onlineStatue, friendInfo.onlineStatue) && Intrinsics.areEqual(this.onlineTime, friendInfo.onlineTime) && Intrinsics.areEqual(this.sendGiftNum, friendInfo.sendGiftNum) && Intrinsics.areEqual(this.countryFlag, friendInfo.countryFlag) && this.isSelect == friendInfo.isSelect;
        }
        return false;
    }

    @Nullable
    public final String getCountryFlag() {
        return this.countryFlag;
    }

    @NotNull
    public final String getFriendId() {
        return this.friendId;
    }

    public final int getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final String getHeadImg() {
        return this.headImg;
    }

    @Nullable
    public final String getNickName() {
        return this.nickName;
    }

    @Nullable
    public final Integer getOnlineStatue() {
        return this.onlineStatue;
    }

    @Nullable
    public final Long getOnlineTime() {
        return this.onlineTime;
    }

    @Nullable
    public final Integer getSendGiftNum() {
        return this.sendGiftNum;
    }

    @Nullable
    public final String getSignature() {
        return this.signature;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.friendId.hashCode() * 31) + this.groupId) * 31;
        String str = this.nickName;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.headImg;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.signature;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.onlineStatue;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Long l10 = this.onlineTime;
        int hashCode6 = (hashCode5 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Integer num2 = this.sendGiftNum;
        int hashCode7 = (hashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.countryFlag;
        int hashCode8 = (hashCode7 + (str4 != null ? str4.hashCode() : 0)) * 31;
        boolean z10 = this.isSelect;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return hashCode8 + i9;
    }

    public final boolean isSelect() {
        return this.isSelect;
    }

    public final void setCountryFlag(@Nullable String str) {
        this.countryFlag = str;
    }

    public final void setFriendId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.friendId = str;
    }

    public final void setGroupId(int i9) {
        this.groupId = i9;
    }

    public final void setHeadImg(@Nullable String str) {
        this.headImg = str;
    }

    public final void setNickName(@Nullable String str) {
        this.nickName = str;
    }

    public final void setOnlineStatue(@Nullable Integer num) {
        this.onlineStatue = num;
    }

    public final void setOnlineTime(@Nullable Long l10) {
        this.onlineTime = l10;
    }

    public final void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public final void setSendGiftNum(@Nullable Integer num) {
        this.sendGiftNum = num;
    }

    public final void setSignature(@Nullable String str) {
        this.signature = str;
    }

    @NotNull
    public String toString() {
        return "FriendInfo(friendId=" + this.friendId + ", groupId=" + this.groupId + ", nickName=" + this.nickName + ", headImg=" + this.headImg + ", signature=" + this.signature + ", onlineStatue=" + this.onlineStatue + ", onlineTime=" + this.onlineTime + ", sendGiftNum=" + this.sendGiftNum + ", countryFlag=" + this.countryFlag + ", isSelect=" + this.isSelect + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.friendId);
        out.writeInt(this.groupId);
        out.writeString(this.nickName);
        out.writeString(this.headImg);
        out.writeString(this.signature);
        Integer num = this.onlineStatue;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        Long l10 = this.onlineTime;
        if (l10 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l10.longValue());
        }
        Integer num2 = this.sendGiftNum;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        out.writeString(this.countryFlag);
        out.writeInt(this.isSelect ? 1 : 0);
    }

    public /* synthetic */ FriendInfo(String str, int i9, String str2, String str3, String str4, Integer num, Long l10, Integer num2, String str5, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0 : i9, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : str3, (i10 & 16) != 0 ? null : str4, (i10 & 32) != 0 ? null : num, (i10 & 64) != 0 ? null : l10, (i10 & 128) != 0 ? null : num2, (i10 & 256) == 0 ? str5 : null, (i10 & 512) == 0 ? z10 : false);
    }
}
