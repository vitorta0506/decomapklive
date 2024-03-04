package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\t\u0010\f\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;", "Landroid/os/Parcelable;", "num", "", "times", "(II)V", "getNum", "()I", "getTimes", "component1", "component2", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftNumInfo implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<GiftNumInfo> CREATOR = new Creator();
    private final int num;
    private final int times;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GiftNumInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftNumInfo createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new GiftNumInfo(parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftNumInfo[] newArray(int i9) {
            return new GiftNumInfo[i9];
        }
    }

    public GiftNumInfo(int i9, int i10) {
        this.num = i9;
        this.times = i10;
    }

    public static /* synthetic */ GiftNumInfo copy$default(GiftNumInfo giftNumInfo, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = giftNumInfo.num;
        }
        if ((i11 & 2) != 0) {
            i10 = giftNumInfo.times;
        }
        return giftNumInfo.copy(i9, i10);
    }

    public final int component1() {
        return this.num;
    }

    public final int component2() {
        return this.times;
    }

    @NotNull
    public final GiftNumInfo copy(int i9, int i10) {
        return new GiftNumInfo(i9, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftNumInfo) {
            GiftNumInfo giftNumInfo = (GiftNumInfo) obj;
            return this.num == giftNumInfo.num && this.times == giftNumInfo.times;
        }
        return false;
    }

    public final int getNum() {
        return this.num;
    }

    public final int getTimes() {
        return this.times;
    }

    public int hashCode() {
        return (this.num * 31) + this.times;
    }

    @NotNull
    public String toString() {
        return "GiftNumInfo(num=" + this.num + ", times=" + this.times + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.num);
        out.writeInt(this.times);
    }
}
