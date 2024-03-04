package com.guochao.faceshow.signin.bean;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 22\u00020\u0001:\u00012B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004BO\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u000eJ\t\u0010 \u001a\u00020\u0006HÆ\u0003J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000bHÆ\u0003JS\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\b\u0010(\u001a\u00020\u0006H\u0016J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0006HÖ\u0001J\t\u0010.\u001a\u00020\u000bHÖ\u0001J\u0018\u0010/\u001a\u0002002\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0006H\u0016R\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0010\"\u0004\b\u0019\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0010\"\u0004\b\u001d\u0010\u0012R\u001a\u0010\f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0010\"\u0004\b\u001f\u0010\u0012¨\u00063"}, d2 = {"Lcom/guochao/faceshow/signin/bean/NewUser;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "isNewUser", "", "regDay", "charmValues", "rewardDiamond", "fCerHeadImg", "", "usedDay", "fCerIndex", "(IIIILjava/lang/String;ILjava/lang/String;)V", "getCharmValues", "()I", "setCharmValues", "(I)V", "getFCerHeadImg", "()Ljava/lang/String;", "setFCerHeadImg", "(Ljava/lang/String;)V", "getFCerIndex", "setFCerIndex", "setNewUser", "getRegDay", "setRegDay", "getRewardDiamond", "setRewardDiamond", "getUsedDay", "setUsedDay", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class NewUser implements Parcelable {
    @NotNull
    public static final CREATOR CREATOR = new CREATOR(null);
    private int charmValues;
    @Nullable
    private String fCerHeadImg;
    @Nullable
    private String fCerIndex;
    private int isNewUser;
    private int regDay;
    private int rewardDiamond;
    private int usedDay;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/signin/bean/NewUser$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/guochao/faceshow/signin/bean/NewUser;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/guochao/faceshow/signin/bean/NewUser;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class CREATOR implements Parcelable.Creator<NewUser> {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public NewUser createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new NewUser(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public NewUser[] newArray(int i9) {
            return new NewUser[i9];
        }
    }

    public NewUser() {
        this(0, 0, 0, 0, null, 0, null, 127, null);
    }

    public NewUser(int i9, int i10, int i11, int i12, @Nullable String str, int i13, @Nullable String str2) {
        this.isNewUser = i9;
        this.regDay = i10;
        this.charmValues = i11;
        this.rewardDiamond = i12;
        this.fCerHeadImg = str;
        this.usedDay = i13;
        this.fCerIndex = str2;
    }

    public static /* synthetic */ NewUser copy$default(NewUser newUser, int i9, int i10, int i11, int i12, String str, int i13, String str2, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i9 = newUser.isNewUser;
        }
        if ((i14 & 2) != 0) {
            i10 = newUser.regDay;
        }
        int i15 = i10;
        if ((i14 & 4) != 0) {
            i11 = newUser.charmValues;
        }
        int i16 = i11;
        if ((i14 & 8) != 0) {
            i12 = newUser.rewardDiamond;
        }
        int i17 = i12;
        if ((i14 & 16) != 0) {
            str = newUser.fCerHeadImg;
        }
        String str3 = str;
        if ((i14 & 32) != 0) {
            i13 = newUser.usedDay;
        }
        int i18 = i13;
        if ((i14 & 64) != 0) {
            str2 = newUser.fCerIndex;
        }
        return newUser.copy(i9, i15, i16, i17, str3, i18, str2);
    }

    public final int component1() {
        return this.isNewUser;
    }

    public final int component2() {
        return this.regDay;
    }

    public final int component3() {
        return this.charmValues;
    }

    public final int component4() {
        return this.rewardDiamond;
    }

    @Nullable
    public final String component5() {
        return this.fCerHeadImg;
    }

    public final int component6() {
        return this.usedDay;
    }

    @Nullable
    public final String component7() {
        return this.fCerIndex;
    }

    @NotNull
    public final NewUser copy(int i9, int i10, int i11, int i12, @Nullable String str, int i13, @Nullable String str2) {
        return new NewUser(i9, i10, i11, i12, str, i13, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewUser) {
            NewUser newUser = (NewUser) obj;
            return this.isNewUser == newUser.isNewUser && this.regDay == newUser.regDay && this.charmValues == newUser.charmValues && this.rewardDiamond == newUser.rewardDiamond && Intrinsics.areEqual(this.fCerHeadImg, newUser.fCerHeadImg) && this.usedDay == newUser.usedDay && Intrinsics.areEqual(this.fCerIndex, newUser.fCerIndex);
        }
        return false;
    }

    public final int getCharmValues() {
        return this.charmValues;
    }

    @Nullable
    public final String getFCerHeadImg() {
        return this.fCerHeadImg;
    }

    @Nullable
    public final String getFCerIndex() {
        return this.fCerIndex;
    }

    public final int getRegDay() {
        return this.regDay;
    }

    public final int getRewardDiamond() {
        return this.rewardDiamond;
    }

    public final int getUsedDay() {
        return this.usedDay;
    }

    public int hashCode() {
        int i9 = ((((((this.isNewUser * 31) + this.regDay) * 31) + this.charmValues) * 31) + this.rewardDiamond) * 31;
        String str = this.fCerHeadImg;
        int hashCode = (((i9 + (str == null ? 0 : str.hashCode())) * 31) + this.usedDay) * 31;
        String str2 = this.fCerIndex;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final int isNewUser() {
        return this.isNewUser;
    }

    public final void setCharmValues(int i9) {
        this.charmValues = i9;
    }

    public final void setFCerHeadImg(@Nullable String str) {
        this.fCerHeadImg = str;
    }

    public final void setFCerIndex(@Nullable String str) {
        this.fCerIndex = str;
    }

    public final void setNewUser(int i9) {
        this.isNewUser = i9;
    }

    public final void setRegDay(int i9) {
        this.regDay = i9;
    }

    public final void setRewardDiamond(int i9) {
        this.rewardDiamond = i9;
    }

    public final void setUsedDay(int i9) {
        this.usedDay = i9;
    }

    @NotNull
    public String toString() {
        return "NewUser(isNewUser=" + this.isNewUser + ", regDay=" + this.regDay + ", charmValues=" + this.charmValues + ", rewardDiamond=" + this.rewardDiamond + ", fCerHeadImg=" + this.fCerHeadImg + ", usedDay=" + this.usedDay + ", fCerIndex=" + this.fCerIndex + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i9) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeInt(this.isNewUser);
        parcel.writeInt(this.regDay);
        parcel.writeInt(this.charmValues);
        parcel.writeInt(this.rewardDiamond);
        parcel.writeString(this.fCerHeadImg);
        parcel.writeInt(this.usedDay);
        parcel.writeString(this.fCerIndex);
    }

    public /* synthetic */ NewUser(int i9, int i10, int i11, int i12, String str, int i13, String str2, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? 0 : i9, (i14 & 2) != 0 ? 0 : i10, (i14 & 4) != 0 ? 0 : i11, (i14 & 8) != 0 ? 0 : i12, (i14 & 16) != 0 ? "" : str, (i14 & 32) == 0 ? i13 : 0, (i14 & 64) != 0 ? "" : str2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewUser(@NotNull Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString());
        Intrinsics.checkNotNullParameter(parcel, "parcel");
    }
}
