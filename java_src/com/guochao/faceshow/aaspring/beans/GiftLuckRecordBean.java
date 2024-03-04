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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJn\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\bHÖ\u0001J\u0019\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0003HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0018\u0010\u000fR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0019\u0010\u000fR\u0015\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u001a\u0010\u000f¨\u00061"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordBean;", "Landroid/os/Parcelable;", "awardMultiple", "", "awardNum", "createTime", "", "giftImg", "", "giftId", "giftNum", Contants.USER_ID, "winType", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAwardMultiple", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAwardNum", "getCreateTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getGiftId", "getGiftImg", "()Ljava/lang/String;", "getGiftNum", "getUserId", "getWinType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordBean;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftLuckRecordBean implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<GiftLuckRecordBean> CREATOR = new Creator();
    @Nullable
    private final Integer awardMultiple;
    @Nullable
    private final Integer awardNum;
    @Nullable
    private final Long createTime;
    @Nullable
    private final Integer giftId;
    @Nullable
    private final String giftImg;
    @Nullable
    private final Integer giftNum;
    @Nullable
    private final Integer userId;
    @Nullable
    private final Integer winType;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GiftLuckRecordBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftLuckRecordBean createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new GiftLuckRecordBean(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftLuckRecordBean[] newArray(int i9) {
            return new GiftLuckRecordBean[i9];
        }
    }

    public GiftLuckRecordBean(@Nullable Integer num, @Nullable Integer num2, @Nullable Long l10, @Nullable String str, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6) {
        this.awardMultiple = num;
        this.awardNum = num2;
        this.createTime = l10;
        this.giftImg = str;
        this.giftId = num3;
        this.giftNum = num4;
        this.userId = num5;
        this.winType = num6;
    }

    @Nullable
    public final Integer component1() {
        return this.awardMultiple;
    }

    @Nullable
    public final Integer component2() {
        return this.awardNum;
    }

    @Nullable
    public final Long component3() {
        return this.createTime;
    }

    @Nullable
    public final String component4() {
        return this.giftImg;
    }

    @Nullable
    public final Integer component5() {
        return this.giftId;
    }

    @Nullable
    public final Integer component6() {
        return this.giftNum;
    }

    @Nullable
    public final Integer component7() {
        return this.userId;
    }

    @Nullable
    public final Integer component8() {
        return this.winType;
    }

    @NotNull
    public final GiftLuckRecordBean copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Long l10, @Nullable String str, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6) {
        return new GiftLuckRecordBean(num, num2, l10, str, num3, num4, num5, num6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftLuckRecordBean) {
            GiftLuckRecordBean giftLuckRecordBean = (GiftLuckRecordBean) obj;
            return Intrinsics.areEqual(this.awardMultiple, giftLuckRecordBean.awardMultiple) && Intrinsics.areEqual(this.awardNum, giftLuckRecordBean.awardNum) && Intrinsics.areEqual(this.createTime, giftLuckRecordBean.createTime) && Intrinsics.areEqual(this.giftImg, giftLuckRecordBean.giftImg) && Intrinsics.areEqual(this.giftId, giftLuckRecordBean.giftId) && Intrinsics.areEqual(this.giftNum, giftLuckRecordBean.giftNum) && Intrinsics.areEqual(this.userId, giftLuckRecordBean.userId) && Intrinsics.areEqual(this.winType, giftLuckRecordBean.winType);
        }
        return false;
    }

    @Nullable
    public final Integer getAwardMultiple() {
        return this.awardMultiple;
    }

    @Nullable
    public final Integer getAwardNum() {
        return this.awardNum;
    }

    @Nullable
    public final Long getCreateTime() {
        return this.createTime;
    }

    @Nullable
    public final Integer getGiftId() {
        return this.giftId;
    }

    @Nullable
    public final String getGiftImg() {
        return this.giftImg;
    }

    @Nullable
    public final Integer getGiftNum() {
        return this.giftNum;
    }

    @Nullable
    public final Integer getUserId() {
        return this.userId;
    }

    @Nullable
    public final Integer getWinType() {
        return this.winType;
    }

    public int hashCode() {
        Integer num = this.awardMultiple;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.awardNum;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l10 = this.createTime;
        int hashCode3 = (hashCode2 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str = this.giftImg;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.giftId;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.giftNum;
        int hashCode6 = (hashCode5 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.userId;
        int hashCode7 = (hashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.winType;
        return hashCode7 + (num6 != null ? num6.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "GiftLuckRecordBean(awardMultiple=" + this.awardMultiple + ", awardNum=" + this.awardNum + ", createTime=" + this.createTime + ", giftImg=" + this.giftImg + ", giftId=" + this.giftId + ", giftNum=" + this.giftNum + ", userId=" + this.userId + ", winType=" + this.winType + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        Integer num = this.awardMultiple;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        Integer num2 = this.awardNum;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        Long l10 = this.createTime;
        if (l10 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l10.longValue());
        }
        out.writeString(this.giftImg);
        Integer num3 = this.giftId;
        if (num3 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num3.intValue());
        }
        Integer num4 = this.giftNum;
        if (num4 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num4.intValue());
        }
        Integer num5 = this.userId;
        if (num5 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num5.intValue());
        }
        Integer num6 = this.winType;
        if (num6 == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(num6.intValue());
    }
}
