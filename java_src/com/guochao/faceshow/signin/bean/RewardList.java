package com.guochao.faceshow.signin.bean;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b.\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u0010\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u00101\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010#J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u00103\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0092\u0001\u0010:\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010;J\t\u0010<\u001a\u00020\u0003HÖ\u0001J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010@HÖ\u0003J\t\u0010A\u001a\u00020\u0003HÖ\u0001J\t\u0010B\u001a\u00020\u0006HÖ\u0001J\u0019\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0018\u0010\u0012\"\u0004\b\u0019\u0010\u0014R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u001a\u0010\u0012\"\u0004\b\u001b\u0010\u0014R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\u001e\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u001e\u0010\u0012\"\u0004\b\u001f\u0010\u0014R\u001e\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b \u0010\u0012\"\u0004\b!\u0010\u0014R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010(\"\u0004\b,\u0010*R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b-\u0010\u0012\"\u0004\b.\u0010\u0014¨\u0006H"}, d2 = {"Lcom/guochao/faceshow/signin/bean/RewardList;", "Landroid/os/Parcelable;", "id", "", "rewardType", "rewardName", "", "rewardImg", "prizeType", "prizeAttribute", "prizeId", "prizeNum", "prizeUseDay", "fragmentNum", "rate", "", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;)V", "getFragmentNum", "()Ljava/lang/Integer;", "setFragmentNum", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getId", "setId", "getPrizeAttribute", "setPrizeAttribute", "getPrizeId", "setPrizeId", "getPrizeNum", "setPrizeNum", "getPrizeType", "setPrizeType", "getPrizeUseDay", "setPrizeUseDay", "getRate", "()Ljava/lang/Double;", "setRate", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getRewardImg", "()Ljava/lang/String;", "setRewardImg", "(Ljava/lang/String;)V", "getRewardName", "setRewardName", "getRewardType", "setRewardType", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;)Lcom/guochao/faceshow/signin/bean/RewardList;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RewardList implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<RewardList> CREATOR = new Creator();
    @Nullable
    private Integer fragmentNum;
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private Integer f26265id;
    @Nullable
    private Integer prizeAttribute;
    @Nullable
    private Integer prizeId;
    @Nullable
    private Integer prizeNum;
    @Nullable
    private Integer prizeType;
    @Nullable
    private Integer prizeUseDay;
    @Nullable
    private Double rate;
    @Nullable
    private String rewardImg;
    @Nullable
    private String rewardName;
    @Nullable
    private Integer rewardType;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<RewardList> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final RewardList createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new RewardList(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final RewardList[] newArray(int i9) {
            return new RewardList[i9];
        }
    }

    public RewardList(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Double d10) {
        this.f26265id = num;
        this.rewardType = num2;
        this.rewardName = str;
        this.rewardImg = str2;
        this.prizeType = num3;
        this.prizeAttribute = num4;
        this.prizeId = num5;
        this.prizeNum = num6;
        this.prizeUseDay = num7;
        this.fragmentNum = num8;
        this.rate = d10;
    }

    @Nullable
    public final Integer component1() {
        return this.f26265id;
    }

    @Nullable
    public final Integer component10() {
        return this.fragmentNum;
    }

    @Nullable
    public final Double component11() {
        return this.rate;
    }

    @Nullable
    public final Integer component2() {
        return this.rewardType;
    }

    @Nullable
    public final String component3() {
        return this.rewardName;
    }

    @Nullable
    public final String component4() {
        return this.rewardImg;
    }

    @Nullable
    public final Integer component5() {
        return this.prizeType;
    }

    @Nullable
    public final Integer component6() {
        return this.prizeAttribute;
    }

    @Nullable
    public final Integer component7() {
        return this.prizeId;
    }

    @Nullable
    public final Integer component8() {
        return this.prizeNum;
    }

    @Nullable
    public final Integer component9() {
        return this.prizeUseDay;
    }

    @NotNull
    public final RewardList copy(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Double d10) {
        return new RewardList(num, num2, str, str2, num3, num4, num5, num6, num7, num8, d10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RewardList) {
            RewardList rewardList = (RewardList) obj;
            return Intrinsics.areEqual(this.f26265id, rewardList.f26265id) && Intrinsics.areEqual(this.rewardType, rewardList.rewardType) && Intrinsics.areEqual(this.rewardName, rewardList.rewardName) && Intrinsics.areEqual(this.rewardImg, rewardList.rewardImg) && Intrinsics.areEqual(this.prizeType, rewardList.prizeType) && Intrinsics.areEqual(this.prizeAttribute, rewardList.prizeAttribute) && Intrinsics.areEqual(this.prizeId, rewardList.prizeId) && Intrinsics.areEqual(this.prizeNum, rewardList.prizeNum) && Intrinsics.areEqual(this.prizeUseDay, rewardList.prizeUseDay) && Intrinsics.areEqual(this.fragmentNum, rewardList.fragmentNum) && Intrinsics.areEqual((Object) this.rate, (Object) rewardList.rate);
        }
        return false;
    }

    @Nullable
    public final Integer getFragmentNum() {
        return this.fragmentNum;
    }

    @Nullable
    public final Integer getId() {
        return this.f26265id;
    }

    @Nullable
    public final Integer getPrizeAttribute() {
        return this.prizeAttribute;
    }

    @Nullable
    public final Integer getPrizeId() {
        return this.prizeId;
    }

    @Nullable
    public final Integer getPrizeNum() {
        return this.prizeNum;
    }

    @Nullable
    public final Integer getPrizeType() {
        return this.prizeType;
    }

    @Nullable
    public final Integer getPrizeUseDay() {
        return this.prizeUseDay;
    }

    @Nullable
    public final Double getRate() {
        return this.rate;
    }

    @Nullable
    public final String getRewardImg() {
        return this.rewardImg;
    }

    @Nullable
    public final String getRewardName() {
        return this.rewardName;
    }

    @Nullable
    public final Integer getRewardType() {
        return this.rewardType;
    }

    public int hashCode() {
        Integer num = this.f26265id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.rewardType;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.rewardName;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.rewardImg;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num3 = this.prizeType;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.prizeAttribute;
        int hashCode6 = (hashCode5 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.prizeId;
        int hashCode7 = (hashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.prizeNum;
        int hashCode8 = (hashCode7 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.prizeUseDay;
        int hashCode9 = (hashCode8 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.fragmentNum;
        int hashCode10 = (hashCode9 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Double d10 = this.rate;
        return hashCode10 + (d10 != null ? d10.hashCode() : 0);
    }

    public final void setFragmentNum(@Nullable Integer num) {
        this.fragmentNum = num;
    }

    public final void setId(@Nullable Integer num) {
        this.f26265id = num;
    }

    public final void setPrizeAttribute(@Nullable Integer num) {
        this.prizeAttribute = num;
    }

    public final void setPrizeId(@Nullable Integer num) {
        this.prizeId = num;
    }

    public final void setPrizeNum(@Nullable Integer num) {
        this.prizeNum = num;
    }

    public final void setPrizeType(@Nullable Integer num) {
        this.prizeType = num;
    }

    public final void setPrizeUseDay(@Nullable Integer num) {
        this.prizeUseDay = num;
    }

    public final void setRate(@Nullable Double d10) {
        this.rate = d10;
    }

    public final void setRewardImg(@Nullable String str) {
        this.rewardImg = str;
    }

    public final void setRewardName(@Nullable String str) {
        this.rewardName = str;
    }

    public final void setRewardType(@Nullable Integer num) {
        this.rewardType = num;
    }

    @NotNull
    public String toString() {
        return "RewardList(id=" + this.f26265id + ", rewardType=" + this.rewardType + ", rewardName=" + this.rewardName + ", rewardImg=" + this.rewardImg + ", prizeType=" + this.prizeType + ", prizeAttribute=" + this.prizeAttribute + ", prizeId=" + this.prizeId + ", prizeNum=" + this.prizeNum + ", prizeUseDay=" + this.prizeUseDay + ", fragmentNum=" + this.fragmentNum + ", rate=" + this.rate + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        Integer num = this.f26265id;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        Integer num2 = this.rewardType;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        out.writeString(this.rewardName);
        out.writeString(this.rewardImg);
        Integer num3 = this.prizeType;
        if (num3 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num3.intValue());
        }
        Integer num4 = this.prizeAttribute;
        if (num4 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num4.intValue());
        }
        Integer num5 = this.prizeId;
        if (num5 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num5.intValue());
        }
        Integer num6 = this.prizeNum;
        if (num6 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num6.intValue());
        }
        Integer num7 = this.prizeUseDay;
        if (num7 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num7.intValue());
        }
        Integer num8 = this.fragmentNum;
        if (num8 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num8.intValue());
        }
        Double d10 = this.rate;
        if (d10 == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeDouble(d10.doubleValue());
    }
}
