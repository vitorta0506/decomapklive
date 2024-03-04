package com.guochao.component.mvp.model;

import android.os.Parcel;
import android.os.Parcelable;
import b7.a;
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
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0003+,-B=\u0012\u0010\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004\u0012\u0010\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u0013\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004HÆ\u0003J\u0013\u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0013JN\u0010\u001b\u001a\u00020\u00002\u0012\b\u0002\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00042\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\u001cJ\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u001eHÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001J\u0019\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u001eHÖ\u0001R\u001b\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006."}, d2 = {"Lcom/guochao/component/mvp/model/MVPInfoModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Landroid/os/Parcelable;", "mvpConfVoList", "", "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;", "mvpRightsVoList", "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "myMvpInfoResult", "Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;", "rechargeMoney", "", "(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)V", "getMvpConfVoList", "()Ljava/util/List;", "getMvpRightsVoList", "getMyMvpInfoResult", "()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;", "getRechargeMoney", "()Ljava/lang/Double;", "setRechargeMoney", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "component1", "component2", "component3", "component4", "copy", "(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)Lcom/guochao/component/mvp/model/MVPInfoModel;", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "MvpConfVo", "MvpRightsVo", "MyMvpInfoResult", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MVPInfoModel extends BaseModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<MVPInfoModel> CREATOR = new Creator();
    @Nullable
    private final List<MvpConfVo> mvpConfVoList;
    @Nullable
    private final List<MvpRightsVo> mvpRightsVoList;
    @Nullable
    private final MyMvpInfoResult myMvpInfoResult;
    @Nullable
    private Double rechargeMoney;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<MVPInfoModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final MVPInfoModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                arrayList = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList.add(parcel.readInt() == 0 ? null : MvpConfVo.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int readInt2 = parcel.readInt();
                arrayList2 = new ArrayList(readInt2);
                for (int i10 = 0; i10 != readInt2; i10++) {
                    arrayList2.add(parcel.readInt() == 0 ? null : MvpRightsVo.CREATOR.createFromParcel(parcel));
                }
            }
            return new MVPInfoModel(arrayList, arrayList2, parcel.readInt() == 0 ? null : MyMvpInfoResult.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final MVPInfoModel[] newArray(int i9) {
            return new MVPInfoModel[i9];
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0013\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005HÆ\u0003J.\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001b\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "Landroid/os/Parcelable;", "level", "", "dataList", "", "Lcom/guochao/component/mvp/model/GiftModel;", "(Ljava/lang/Integer;Ljava/util/List;)V", "getDataList", "()Ljava/util/List;", "getLevel", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/util/List;)Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class MvpRightsVo implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<MvpRightsVo> CREATOR = new Creator();
        @Nullable
        private final List<GiftModel> dataList;
        @Nullable
        private final Integer level;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<MvpRightsVo> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final MvpRightsVo createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                ArrayList arrayList = null;
                Integer valueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
                if (parcel.readInt() != 0) {
                    int readInt = parcel.readInt();
                    ArrayList arrayList2 = new ArrayList(readInt);
                    for (int i9 = 0; i9 != readInt; i9++) {
                        arrayList2.add(parcel.readInt() == 0 ? null : GiftModel.CREATOR.createFromParcel(parcel));
                    }
                    arrayList = arrayList2;
                }
                return new MvpRightsVo(valueOf, arrayList);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final MvpRightsVo[] newArray(int i9) {
                return new MvpRightsVo[i9];
            }
        }

        public MvpRightsVo(@Nullable Integer num, @Nullable List<GiftModel> list) {
            this.level = num;
            this.dataList = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ MvpRightsVo copy$default(MvpRightsVo mvpRightsVo, Integer num, List list, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                num = mvpRightsVo.level;
            }
            if ((i9 & 2) != 0) {
                list = mvpRightsVo.dataList;
            }
            return mvpRightsVo.copy(num, list);
        }

        @Nullable
        public final Integer component1() {
            return this.level;
        }

        @Nullable
        public final List<GiftModel> component2() {
            return this.dataList;
        }

        @NotNull
        public final MvpRightsVo copy(@Nullable Integer num, @Nullable List<GiftModel> list) {
            return new MvpRightsVo(num, list);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MvpRightsVo) {
                MvpRightsVo mvpRightsVo = (MvpRightsVo) obj;
                return Intrinsics.areEqual(this.level, mvpRightsVo.level) && Intrinsics.areEqual(this.dataList, mvpRightsVo.dataList);
            }
            return false;
        }

        @Nullable
        public final List<GiftModel> getDataList() {
            return this.dataList;
        }

        @Nullable
        public final Integer getLevel() {
            return this.level;
        }

        public int hashCode() {
            Integer num = this.level;
            int hashCode = (num == null ? 0 : num.hashCode()) * 31;
            List<GiftModel> list = this.dataList;
            return hashCode + (list != null ? list.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "MvpRightsVo(level=" + this.level + ", dataList=" + this.dataList + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            Integer num = this.level;
            if (num == null) {
                out.writeInt(0);
            } else {
                out.writeInt(1);
                out.writeInt(num.intValue());
            }
            List<GiftModel> list = this.dataList;
            if (list == null) {
                out.writeInt(0);
                return;
            }
            out.writeInt(1);
            out.writeInt(list.size());
            for (GiftModel giftModel : list) {
                if (giftModel == null) {
                    out.writeInt(0);
                } else {
                    out.writeInt(1);
                    giftModel.writeToParcel(out, i9);
                }
            }
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jz\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\t\u0010%\u001a\u00020\bHÖ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\bHÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\u0019\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\bHÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0018\u0010\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000f¨\u00061"}, d2 = {"Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;", "Landroid/os/Parcelable;", "img", "", "logo", "nickName", "headImg", "mvpLevel", "", "mvpRecordId", "mvpIcon", "mvpEmblem", "mvpBackground", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getHeadImg", "()Ljava/lang/String;", "getImg", "getLogo", "getMvpBackground", "getMvpEmblem", "getMvpIcon", "getMvpLevel", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMvpRecordId", "getNickName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class MyMvpInfoResult implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<MyMvpInfoResult> CREATOR = new Creator();
        @Nullable
        private final String headImg;
        @Nullable
        private final String img;
        @Nullable
        private final String logo;
        @Nullable
        private final String mvpBackground;
        @Nullable
        private final String mvpEmblem;
        @Nullable
        private final String mvpIcon;
        @Nullable
        private final Integer mvpLevel;
        @Nullable
        private final Integer mvpRecordId;
        @Nullable
        private final String nickName;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<MyMvpInfoResult> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final MyMvpInfoResult createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new MyMvpInfoResult(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final MyMvpInfoResult[] newArray(int i9) {
                return new MyMvpInfoResult[i9];
            }
        }

        public MyMvpInfoResult(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num, @Nullable Integer num2, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
            this.img = str;
            this.logo = str2;
            this.nickName = str3;
            this.headImg = str4;
            this.mvpLevel = num;
            this.mvpRecordId = num2;
            this.mvpIcon = str5;
            this.mvpEmblem = str6;
            this.mvpBackground = str7;
        }

        @Nullable
        public final String component1() {
            return this.img;
        }

        @Nullable
        public final String component2() {
            return this.logo;
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
        public final Integer component5() {
            return this.mvpLevel;
        }

        @Nullable
        public final Integer component6() {
            return this.mvpRecordId;
        }

        @Nullable
        public final String component7() {
            return this.mvpIcon;
        }

        @Nullable
        public final String component8() {
            return this.mvpEmblem;
        }

        @Nullable
        public final String component9() {
            return this.mvpBackground;
        }

        @NotNull
        public final MyMvpInfoResult copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num, @Nullable Integer num2, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
            return new MyMvpInfoResult(str, str2, str3, str4, num, num2, str5, str6, str7);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MyMvpInfoResult) {
                MyMvpInfoResult myMvpInfoResult = (MyMvpInfoResult) obj;
                return Intrinsics.areEqual(this.img, myMvpInfoResult.img) && Intrinsics.areEqual(this.logo, myMvpInfoResult.logo) && Intrinsics.areEqual(this.nickName, myMvpInfoResult.nickName) && Intrinsics.areEqual(this.headImg, myMvpInfoResult.headImg) && Intrinsics.areEqual(this.mvpLevel, myMvpInfoResult.mvpLevel) && Intrinsics.areEqual(this.mvpRecordId, myMvpInfoResult.mvpRecordId) && Intrinsics.areEqual(this.mvpIcon, myMvpInfoResult.mvpIcon) && Intrinsics.areEqual(this.mvpEmblem, myMvpInfoResult.mvpEmblem) && Intrinsics.areEqual(this.mvpBackground, myMvpInfoResult.mvpBackground);
            }
            return false;
        }

        @Nullable
        public final String getHeadImg() {
            return this.headImg;
        }

        @Nullable
        public final String getImg() {
            return this.img;
        }

        @Nullable
        public final String getLogo() {
            return this.logo;
        }

        @Nullable
        public final String getMvpBackground() {
            return this.mvpBackground;
        }

        @Nullable
        public final String getMvpEmblem() {
            return this.mvpEmblem;
        }

        @Nullable
        public final String getMvpIcon() {
            return this.mvpIcon;
        }

        @Nullable
        public final Integer getMvpLevel() {
            return this.mvpLevel;
        }

        @Nullable
        public final Integer getMvpRecordId() {
            return this.mvpRecordId;
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        public int hashCode() {
            String str = this.img;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.logo;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.headImg;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Integer num = this.mvpLevel;
            int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.mvpRecordId;
            int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
            String str5 = this.mvpIcon;
            int hashCode7 = (hashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.mvpEmblem;
            int hashCode8 = (hashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.mvpBackground;
            return hashCode8 + (str7 != null ? str7.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "MyMvpInfoResult(img=" + this.img + ", logo=" + this.logo + ", nickName=" + this.nickName + ", headImg=" + this.headImg + ", mvpLevel=" + this.mvpLevel + ", mvpRecordId=" + this.mvpRecordId + ", mvpIcon=" + this.mvpIcon + ", mvpEmblem=" + this.mvpEmblem + ", mvpBackground=" + this.mvpBackground + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeString(this.img);
            out.writeString(this.logo);
            out.writeString(this.nickName);
            out.writeString(this.headImg);
            Integer num = this.mvpLevel;
            if (num == null) {
                out.writeInt(0);
            } else {
                out.writeInt(1);
                out.writeInt(num.intValue());
            }
            Integer num2 = this.mvpRecordId;
            if (num2 == null) {
                out.writeInt(0);
            } else {
                out.writeInt(1);
                out.writeInt(num2.intValue());
            }
            out.writeString(this.mvpIcon);
            out.writeString(this.mvpEmblem);
            out.writeString(this.mvpBackground);
        }
    }

    public MVPInfoModel(@Nullable List<MvpConfVo> list, @Nullable List<MvpRightsVo> list2, @Nullable MyMvpInfoResult myMvpInfoResult, @Nullable Double d10) {
        this.mvpConfVoList = list;
        this.mvpRightsVoList = list2;
        this.myMvpInfoResult = myMvpInfoResult;
        this.rechargeMoney = d10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MVPInfoModel copy$default(MVPInfoModel mVPInfoModel, List list, List list2, MyMvpInfoResult myMvpInfoResult, Double d10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = mVPInfoModel.mvpConfVoList;
        }
        if ((i9 & 2) != 0) {
            list2 = mVPInfoModel.mvpRightsVoList;
        }
        if ((i9 & 4) != 0) {
            myMvpInfoResult = mVPInfoModel.myMvpInfoResult;
        }
        if ((i9 & 8) != 0) {
            d10 = mVPInfoModel.rechargeMoney;
        }
        return mVPInfoModel.copy(list, list2, myMvpInfoResult, d10);
    }

    @Nullable
    public final List<MvpConfVo> component1() {
        return this.mvpConfVoList;
    }

    @Nullable
    public final List<MvpRightsVo> component2() {
        return this.mvpRightsVoList;
    }

    @Nullable
    public final MyMvpInfoResult component3() {
        return this.myMvpInfoResult;
    }

    @Nullable
    public final Double component4() {
        return this.rechargeMoney;
    }

    @NotNull
    public final MVPInfoModel copy(@Nullable List<MvpConfVo> list, @Nullable List<MvpRightsVo> list2, @Nullable MyMvpInfoResult myMvpInfoResult, @Nullable Double d10) {
        return new MVPInfoModel(list, list2, myMvpInfoResult, d10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MVPInfoModel) {
            MVPInfoModel mVPInfoModel = (MVPInfoModel) obj;
            return Intrinsics.areEqual(this.mvpConfVoList, mVPInfoModel.mvpConfVoList) && Intrinsics.areEqual(this.mvpRightsVoList, mVPInfoModel.mvpRightsVoList) && Intrinsics.areEqual(this.myMvpInfoResult, mVPInfoModel.myMvpInfoResult) && Intrinsics.areEqual((Object) this.rechargeMoney, (Object) mVPInfoModel.rechargeMoney);
        }
        return false;
    }

    @Nullable
    public final List<MvpConfVo> getMvpConfVoList() {
        return this.mvpConfVoList;
    }

    @Nullable
    public final List<MvpRightsVo> getMvpRightsVoList() {
        return this.mvpRightsVoList;
    }

    @Nullable
    public final MyMvpInfoResult getMyMvpInfoResult() {
        return this.myMvpInfoResult;
    }

    @Nullable
    public final Double getRechargeMoney() {
        return this.rechargeMoney;
    }

    public int hashCode() {
        List<MvpConfVo> list = this.mvpConfVoList;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<MvpRightsVo> list2 = this.mvpRightsVoList;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        MyMvpInfoResult myMvpInfoResult = this.myMvpInfoResult;
        int hashCode3 = (hashCode2 + (myMvpInfoResult == null ? 0 : myMvpInfoResult.hashCode())) * 31;
        Double d10 = this.rechargeMoney;
        return hashCode3 + (d10 != null ? d10.hashCode() : 0);
    }

    public final void setRechargeMoney(@Nullable Double d10) {
        this.rechargeMoney = d10;
    }

    @NotNull
    public String toString() {
        return "MVPInfoModel(mvpConfVoList=" + this.mvpConfVoList + ", mvpRightsVoList=" + this.mvpRightsVoList + ", myMvpInfoResult=" + this.myMvpInfoResult + ", rechargeMoney=" + this.rechargeMoney + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        List<MvpConfVo> list = this.mvpConfVoList;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (MvpConfVo mvpConfVo : list) {
                if (mvpConfVo == null) {
                    out.writeInt(0);
                } else {
                    out.writeInt(1);
                    mvpConfVo.writeToParcel(out, i9);
                }
            }
        }
        List<MvpRightsVo> list2 = this.mvpRightsVoList;
        if (list2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list2.size());
            for (MvpRightsVo mvpRightsVo : list2) {
                if (mvpRightsVo == null) {
                    out.writeInt(0);
                } else {
                    out.writeInt(1);
                    mvpRightsVo.writeToParcel(out, i9);
                }
            }
        }
        MyMvpInfoResult myMvpInfoResult = this.myMvpInfoResult;
        if (myMvpInfoResult == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            myMvpInfoResult.writeToParcel(out, i9);
        }
        Double d10 = this.rechargeMoney;
        if (d10 == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeDouble(d10.doubleValue());
    }

    @Parcelize
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;", "Landroid/os/Parcelable;", "mvpLevel", "", "rechargeMax", "", "rechargeMin", "(IDD)V", "getMvpLevel", "()I", "getRechargeMax", "()D", "getRechargeMin", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class MvpConfVo implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<MvpConfVo> CREATOR = new Creator();
        private final int mvpLevel;
        private final double rechargeMax;
        private final double rechargeMin;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<MvpConfVo> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final MvpConfVo createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new MvpConfVo(parcel.readInt(), parcel.readDouble(), parcel.readDouble());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final MvpConfVo[] newArray(int i9) {
                return new MvpConfVo[i9];
            }
        }

        public MvpConfVo() {
            this(0, 0.0d, 0.0d, 7, null);
        }

        public MvpConfVo(int i9, double d10, double d11) {
            this.mvpLevel = i9;
            this.rechargeMax = d10;
            this.rechargeMin = d11;
        }

        public static /* synthetic */ MvpConfVo copy$default(MvpConfVo mvpConfVo, int i9, double d10, double d11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = mvpConfVo.mvpLevel;
            }
            if ((i10 & 2) != 0) {
                d10 = mvpConfVo.rechargeMax;
            }
            double d12 = d10;
            if ((i10 & 4) != 0) {
                d11 = mvpConfVo.rechargeMin;
            }
            return mvpConfVo.copy(i9, d12, d11);
        }

        public final int component1() {
            return this.mvpLevel;
        }

        public final double component2() {
            return this.rechargeMax;
        }

        public final double component3() {
            return this.rechargeMin;
        }

        @NotNull
        public final MvpConfVo copy(int i9, double d10, double d11) {
            return new MvpConfVo(i9, d10, d11);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MvpConfVo) {
                MvpConfVo mvpConfVo = (MvpConfVo) obj;
                return this.mvpLevel == mvpConfVo.mvpLevel && Intrinsics.areEqual((Object) Double.valueOf(this.rechargeMax), (Object) Double.valueOf(mvpConfVo.rechargeMax)) && Intrinsics.areEqual((Object) Double.valueOf(this.rechargeMin), (Object) Double.valueOf(mvpConfVo.rechargeMin));
            }
            return false;
        }

        public final int getMvpLevel() {
            return this.mvpLevel;
        }

        public final double getRechargeMax() {
            return this.rechargeMax;
        }

        public final double getRechargeMin() {
            return this.rechargeMin;
        }

        public int hashCode() {
            return (((this.mvpLevel * 31) + a.a(this.rechargeMax)) * 31) + a.a(this.rechargeMin);
        }

        @NotNull
        public String toString() {
            return "MvpConfVo(mvpLevel=" + this.mvpLevel + ", rechargeMax=" + this.rechargeMax + ", rechargeMin=" + this.rechargeMin + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.mvpLevel);
            out.writeDouble(this.rechargeMax);
            out.writeDouble(this.rechargeMin);
        }

        public /* synthetic */ MvpConfVo(int i9, double d10, double d11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 0 : i9, (i10 & 2) != 0 ? 0.0d : d10, (i10 & 4) != 0 ? 0.0d : d11);
        }
    }
}
