package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B³\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004¢\u0006\u0002\u0010\u0018J\t\u0010-\u001a\u00020\u0004HÆ\u0003J\t\u0010.\u001a\u00020\u0004HÆ\u0003J\t\u0010/\u001a\u00020\u0004HÆ\u0003J\t\u00100\u001a\u00020\u0004HÆ\u0003J\t\u00101\u001a\u00020\u0004HÆ\u0003J\t\u00102\u001a\u00020\u0004HÆ\u0003J\t\u00103\u001a\u00020\u0004HÆ\u0003J\t\u00104\u001a\u00020\u0004HÆ\u0003J\t\u00105\u001a\u00020\u0004HÆ\u0003J\t\u00106\u001a\u00020\u0004HÆ\u0003J\t\u00107\u001a\u00020\u0004HÆ\u0003J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\t\u00109\u001a\u00020\u0004HÆ\u0003J\u0011\u0010:\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0003J\t\u0010;\u001a\u00020\u0004HÆ\u0003J\t\u0010<\u001a\u00020\u0004HÆ\u0003J¹\u0001\u0010=\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u0004HÆ\u0001J\t\u0010>\u001a\u00020\u0004HÖ\u0001J\u0013\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010BHÖ\u0003J\t\u0010C\u001a\u00020\u0004HÖ\u0001J\t\u0010D\u001a\u00020EHÖ\u0001J\u0019\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0011\u0010\u0010\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u0011\u0010\u0011\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u0011\u0010\u0012\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001aR\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u0011\u0010%\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b&\u0010\u001aR\u0019\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b'\u0010#R\u0011\u0010\u0013\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001aR\u0011\u0010\u0015\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001aR\u0011\u0010\u0016\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001aR\u0011\u0010\u0017\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001a¨\u0006K"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;", "Landroid/os/Parcelable;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "anchorTake", "", "awardSwitch", "bigWinMax", "bigWinMin", "giftNumInfoList", "", "Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;", "id", "prizeInfoList", "", "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;", "exampleMultiple1", "exampleMultiple2", "exampleMultiple3", "exampleMultiple4", "superWinMax", "superWinMin", "trackMultiple", "winMax", "winMin", "(IIIILjava/util/List;ILjava/util/List;IIIIIIIII)V", "getAnchorTake", "()I", "getAwardSwitch", "getBigWinMax", "getBigWinMin", "getExampleMultiple1", "getExampleMultiple2", "getExampleMultiple3", "getExampleMultiple4", "getGiftNumInfoList", "()Ljava/util/List;", "getId", "maxTimes", "getMaxTimes", "getPrizeInfoList", "getSuperWinMax", "getSuperWinMin", "getTrackMultiple", "getWinMax", "getWinMin", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftLuckDetailBean extends BaseModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<GiftLuckDetailBean> CREATOR = new Creator();
    private final int anchorTake;
    private final int awardSwitch;
    private final int bigWinMax;
    private final int bigWinMin;
    private final int exampleMultiple1;
    private final int exampleMultiple2;
    private final int exampleMultiple3;
    private final int exampleMultiple4;
    @Nullable
    private final List<GiftNumInfo> giftNumInfoList;

    /* renamed from: id  reason: collision with root package name */
    private final int f16309id;
    @Nullable
    private final List<PrizeInfo> prizeInfoList;
    private final int superWinMax;
    private final int superWinMin;
    private final int trackMultiple;
    private final int winMax;
    private final int winMin;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GiftLuckDetailBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftLuckDetailBean createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            int readInt4 = parcel.readInt();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt5 = parcel.readInt();
                arrayList = new ArrayList(readInt5);
                for (int i9 = 0; i9 != readInt5; i9++) {
                    arrayList.add(GiftNumInfo.CREATOR.createFromParcel(parcel));
                }
            }
            int readInt6 = parcel.readInt();
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int readInt7 = parcel.readInt();
                arrayList2 = new ArrayList(readInt7);
                for (int i10 = 0; i10 != readInt7; i10++) {
                    arrayList2.add(PrizeInfo.CREATOR.createFromParcel(parcel));
                }
            }
            return new GiftLuckDetailBean(readInt, readInt2, readInt3, readInt4, arrayList, readInt6, arrayList2, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftLuckDetailBean[] newArray(int i9) {
            return new GiftLuckDetailBean[i9];
        }
    }

    public /* synthetic */ GiftLuckDetailBean(int i9, int i10, int i11, int i12, List list, int i13, List list2, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, DefaultConstructorMarker defaultConstructorMarker) {
        this((i23 & 1) != 0 ? 1 : i9, (i23 & 2) != 0 ? 1 : i10, (i23 & 4) != 0 ? 10000 : i11, (i23 & 8) != 0 ? 1 : i12, list, (i23 & 32) != 0 ? 1 : i13, (i23 & 64) != 0 ? null : list2, (i23 & 128) != 0 ? 10000 : i14, (i23 & 256) != 0 ? 3000 : i15, (i23 & 512) != 0 ? 1000 : i16, (i23 & 1024) != 0 ? 500 : i17, (i23 & 2048) != 0 ? 1000 : i18, (i23 & 4096) != 0 ? 1 : i19, (i23 & 8192) != 0 ? 1 : i20, (i23 & 16384) != 0 ? 1 : i21, (i23 & 32768) != 0 ? 1 : i22);
    }

    public final int component1() {
        return this.anchorTake;
    }

    public final int component10() {
        return this.exampleMultiple3;
    }

    public final int component11() {
        return this.exampleMultiple4;
    }

    public final int component12() {
        return this.superWinMax;
    }

    public final int component13() {
        return this.superWinMin;
    }

    public final int component14() {
        return this.trackMultiple;
    }

    public final int component15() {
        return this.winMax;
    }

    public final int component16() {
        return this.winMin;
    }

    public final int component2() {
        return this.awardSwitch;
    }

    public final int component3() {
        return this.bigWinMax;
    }

    public final int component4() {
        return this.bigWinMin;
    }

    @Nullable
    public final List<GiftNumInfo> component5() {
        return this.giftNumInfoList;
    }

    public final int component6() {
        return this.f16309id;
    }

    @Nullable
    public final List<PrizeInfo> component7() {
        return this.prizeInfoList;
    }

    public final int component8() {
        return this.exampleMultiple1;
    }

    public final int component9() {
        return this.exampleMultiple2;
    }

    @NotNull
    public final GiftLuckDetailBean copy(int i9, int i10, int i11, int i12, @Nullable List<GiftNumInfo> list, int i13, @Nullable List<PrizeInfo> list2, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22) {
        return new GiftLuckDetailBean(i9, i10, i11, i12, list, i13, list2, i14, i15, i16, i17, i18, i19, i20, i21, i22);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftLuckDetailBean) {
            GiftLuckDetailBean giftLuckDetailBean = (GiftLuckDetailBean) obj;
            return this.anchorTake == giftLuckDetailBean.anchorTake && this.awardSwitch == giftLuckDetailBean.awardSwitch && this.bigWinMax == giftLuckDetailBean.bigWinMax && this.bigWinMin == giftLuckDetailBean.bigWinMin && Intrinsics.areEqual(this.giftNumInfoList, giftLuckDetailBean.giftNumInfoList) && this.f16309id == giftLuckDetailBean.f16309id && Intrinsics.areEqual(this.prizeInfoList, giftLuckDetailBean.prizeInfoList) && this.exampleMultiple1 == giftLuckDetailBean.exampleMultiple1 && this.exampleMultiple2 == giftLuckDetailBean.exampleMultiple2 && this.exampleMultiple3 == giftLuckDetailBean.exampleMultiple3 && this.exampleMultiple4 == giftLuckDetailBean.exampleMultiple4 && this.superWinMax == giftLuckDetailBean.superWinMax && this.superWinMin == giftLuckDetailBean.superWinMin && this.trackMultiple == giftLuckDetailBean.trackMultiple && this.winMax == giftLuckDetailBean.winMax && this.winMin == giftLuckDetailBean.winMin;
        }
        return false;
    }

    public final int getAnchorTake() {
        return this.anchorTake;
    }

    public final int getAwardSwitch() {
        return this.awardSwitch;
    }

    public final int getBigWinMax() {
        return this.bigWinMax;
    }

    public final int getBigWinMin() {
        return this.bigWinMin;
    }

    public final int getExampleMultiple1() {
        return this.exampleMultiple1;
    }

    public final int getExampleMultiple2() {
        return this.exampleMultiple2;
    }

    public final int getExampleMultiple3() {
        return this.exampleMultiple3;
    }

    public final int getExampleMultiple4() {
        return this.exampleMultiple4;
    }

    @Nullable
    public final List<GiftNumInfo> getGiftNumInfoList() {
        return this.giftNumInfoList;
    }

    public final int getId() {
        return this.f16309id;
    }

    public final int getMaxTimes() {
        List<GiftNumInfo> list = this.giftNumInfoList;
        int i9 = 0;
        if (list == null) {
            return 0;
        }
        for (GiftNumInfo giftNumInfo : list) {
            if (giftNumInfo.getTimes() > i9) {
                i9 = giftNumInfo.getTimes();
            }
        }
        return i9;
    }

    @Nullable
    public final List<PrizeInfo> getPrizeInfoList() {
        return this.prizeInfoList;
    }

    public final int getSuperWinMax() {
        return this.superWinMax;
    }

    public final int getSuperWinMin() {
        return this.superWinMin;
    }

    public final int getTrackMultiple() {
        return this.trackMultiple;
    }

    public final int getWinMax() {
        return this.winMax;
    }

    public final int getWinMin() {
        return this.winMin;
    }

    public int hashCode() {
        int i9 = ((((((this.anchorTake * 31) + this.awardSwitch) * 31) + this.bigWinMax) * 31) + this.bigWinMin) * 31;
        List<GiftNumInfo> list = this.giftNumInfoList;
        int hashCode = (((i9 + (list == null ? 0 : list.hashCode())) * 31) + this.f16309id) * 31;
        List<PrizeInfo> list2 = this.prizeInfoList;
        return ((((((((((((((((((hashCode + (list2 != null ? list2.hashCode() : 0)) * 31) + this.exampleMultiple1) * 31) + this.exampleMultiple2) * 31) + this.exampleMultiple3) * 31) + this.exampleMultiple4) * 31) + this.superWinMax) * 31) + this.superWinMin) * 31) + this.trackMultiple) * 31) + this.winMax) * 31) + this.winMin;
    }

    @NotNull
    public String toString() {
        return "GiftLuckDetailBean(anchorTake=" + this.anchorTake + ", awardSwitch=" + this.awardSwitch + ", bigWinMax=" + this.bigWinMax + ", bigWinMin=" + this.bigWinMin + ", giftNumInfoList=" + this.giftNumInfoList + ", id=" + this.f16309id + ", prizeInfoList=" + this.prizeInfoList + ", exampleMultiple1=" + this.exampleMultiple1 + ", exampleMultiple2=" + this.exampleMultiple2 + ", exampleMultiple3=" + this.exampleMultiple3 + ", exampleMultiple4=" + this.exampleMultiple4 + ", superWinMax=" + this.superWinMax + ", superWinMin=" + this.superWinMin + ", trackMultiple=" + this.trackMultiple + ", winMax=" + this.winMax + ", winMin=" + this.winMin + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.anchorTake);
        out.writeInt(this.awardSwitch);
        out.writeInt(this.bigWinMax);
        out.writeInt(this.bigWinMin);
        List<GiftNumInfo> list = this.giftNumInfoList;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (GiftNumInfo giftNumInfo : list) {
                giftNumInfo.writeToParcel(out, i9);
            }
        }
        out.writeInt(this.f16309id);
        List<PrizeInfo> list2 = this.prizeInfoList;
        if (list2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list2.size());
            for (PrizeInfo prizeInfo : list2) {
                prizeInfo.writeToParcel(out, i9);
            }
        }
        out.writeInt(this.exampleMultiple1);
        out.writeInt(this.exampleMultiple2);
        out.writeInt(this.exampleMultiple3);
        out.writeInt(this.exampleMultiple4);
        out.writeInt(this.superWinMax);
        out.writeInt(this.superWinMin);
        out.writeInt(this.trackMultiple);
        out.writeInt(this.winMax);
        out.writeInt(this.winMin);
    }

    public GiftLuckDetailBean(int i9, int i10, int i11, int i12, @Nullable List<GiftNumInfo> list, int i13, @Nullable List<PrizeInfo> list2, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22) {
        this.anchorTake = i9;
        this.awardSwitch = i10;
        this.bigWinMax = i11;
        this.bigWinMin = i12;
        this.giftNumInfoList = list;
        this.f16309id = i13;
        this.prizeInfoList = list2;
        this.exampleMultiple1 = i14;
        this.exampleMultiple2 = i15;
        this.exampleMultiple3 = i16;
        this.exampleMultiple4 = i17;
        this.superWinMax = i18;
        this.superWinMin = i19;
        this.trackMultiple = i20;
        this.winMax = i21;
        this.winMin = i22;
    }
}
