package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;", "Landroid/os/Parcelable;", "nickName", "", "times", "", Contants.USER_ID, "(Ljava/lang/String;ILjava/lang/String;)V", "getNickName", "()Ljava/lang/String;", "getTimes", "()I", "getUserId", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PrizeInfo implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<PrizeInfo> CREATOR = new Creator();
    @NotNull
    private final String nickName;
    private final int times;
    @NotNull
    private final String userId;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<PrizeInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final PrizeInfo createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new PrizeInfo(parcel.readString(), parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final PrizeInfo[] newArray(int i9) {
            return new PrizeInfo[i9];
        }
    }

    public PrizeInfo(@NotNull String nickName, int i9, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(nickName, "nickName");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.nickName = nickName;
        this.times = i9;
        this.userId = userId;
    }

    public static /* synthetic */ PrizeInfo copy$default(PrizeInfo prizeInfo, String str, int i9, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = prizeInfo.nickName;
        }
        if ((i10 & 2) != 0) {
            i9 = prizeInfo.times;
        }
        if ((i10 & 4) != 0) {
            str2 = prizeInfo.userId;
        }
        return prizeInfo.copy(str, i9, str2);
    }

    @NotNull
    public final String component1() {
        return this.nickName;
    }

    public final int component2() {
        return this.times;
    }

    @NotNull
    public final String component3() {
        return this.userId;
    }

    @NotNull
    public final PrizeInfo copy(@NotNull String nickName, int i9, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(nickName, "nickName");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new PrizeInfo(nickName, i9, userId);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrizeInfo) {
            PrizeInfo prizeInfo = (PrizeInfo) obj;
            return Intrinsics.areEqual(this.nickName, prizeInfo.nickName) && this.times == prizeInfo.times && Intrinsics.areEqual(this.userId, prizeInfo.userId);
        }
        return false;
    }

    @NotNull
    public final String getNickName() {
        return this.nickName;
    }

    public final int getTimes() {
        return this.times;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((this.nickName.hashCode() * 31) + this.times) * 31) + this.userId.hashCode();
    }

    @NotNull
    public String toString() {
        return "PrizeInfo(nickName=" + this.nickName + ", times=" + this.times + ", userId=" + this.userId + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.nickName);
        out.writeInt(this.times);
        out.writeString(this.userId);
    }
}
