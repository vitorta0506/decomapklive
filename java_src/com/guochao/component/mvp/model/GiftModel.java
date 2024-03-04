package com.guochao.component.mvp.model;

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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0002\u0010\u000bJ\t\u0010\u001a\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\t\u0010\u001d\u001a\u00020\u0004HÆ\u0003J;\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u0004HÆ\u0001J\t\u0010\u001f\u001a\u00020\u0004HÖ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\u0004HÖ\u0001J\t\u0010%\u001a\u00020\u0006HÖ\u0001J\u0019\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0004HÖ\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\n\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006+"}, d2 = {"Lcom/guochao/component/mvp/model/GiftModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Landroid/os/Parcelable;", "type", "", "logo", "", "typeDataList", "", "Lcom/guochao/component/mvp/model/TypeData;", "selected", "(ILjava/lang/String;Ljava/util/List;I)V", "getLogo", "()Ljava/lang/String;", "setLogo", "(Ljava/lang/String;)V", "getSelected", "()I", "setSelected", "(I)V", "getType", "setType", "getTypeDataList", "()Ljava/util/List;", "setTypeDataList", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftModel extends BaseModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<GiftModel> CREATOR = new Creator();
    @Nullable
    private String logo;
    private int selected;
    private int type;
    @Nullable
    private List<TypeData> typeDataList;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GiftModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            int readInt = parcel.readInt();
            String readString = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt2 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt2);
                for (int i9 = 0; i9 != readInt2; i9++) {
                    arrayList2.add(TypeData.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new GiftModel(readInt, readString, arrayList, parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftModel[] newArray(int i9) {
            return new GiftModel[i9];
        }
    }

    public GiftModel() {
        this(0, null, null, 0, 15, null);
    }

    public /* synthetic */ GiftModel(int i9, String str, List list, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? -1 : i9, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : list, (i11 & 8) != 0 ? -1 : i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GiftModel copy$default(GiftModel giftModel, int i9, String str, List list, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = giftModel.type;
        }
        if ((i11 & 2) != 0) {
            str = giftModel.logo;
        }
        if ((i11 & 4) != 0) {
            list = giftModel.typeDataList;
        }
        if ((i11 & 8) != 0) {
            i10 = giftModel.selected;
        }
        return giftModel.copy(i9, str, list, i10);
    }

    public final int component1() {
        return this.type;
    }

    @Nullable
    public final String component2() {
        return this.logo;
    }

    @Nullable
    public final List<TypeData> component3() {
        return this.typeDataList;
    }

    public final int component4() {
        return this.selected;
    }

    @NotNull
    public final GiftModel copy(int i9, @Nullable String str, @Nullable List<TypeData> list, int i10) {
        return new GiftModel(i9, str, list, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftModel) {
            GiftModel giftModel = (GiftModel) obj;
            return this.type == giftModel.type && Intrinsics.areEqual(this.logo, giftModel.logo) && Intrinsics.areEqual(this.typeDataList, giftModel.typeDataList) && this.selected == giftModel.selected;
        }
        return false;
    }

    @Nullable
    public final String getLogo() {
        return this.logo;
    }

    public final int getSelected() {
        return this.selected;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final List<TypeData> getTypeDataList() {
        return this.typeDataList;
    }

    public int hashCode() {
        int i9 = this.type * 31;
        String str = this.logo;
        int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
        List<TypeData> list = this.typeDataList;
        return ((hashCode + (list != null ? list.hashCode() : 0)) * 31) + this.selected;
    }

    public final void setLogo(@Nullable String str) {
        this.logo = str;
    }

    public final void setSelected(int i9) {
        this.selected = i9;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    public final void setTypeDataList(@Nullable List<TypeData> list) {
        this.typeDataList = list;
    }

    @NotNull
    public String toString() {
        return "GiftModel(type=" + this.type + ", logo=" + this.logo + ", typeDataList=" + this.typeDataList + ", selected=" + this.selected + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.type);
        out.writeString(this.logo);
        List<TypeData> list = this.typeDataList;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (TypeData typeData : list) {
                typeData.writeToParcel(out, i9);
            }
        }
        out.writeInt(this.selected);
    }

    public GiftModel(int i9, @Nullable String str, @Nullable List<TypeData> list, int i10) {
        this.type = i9;
        this.logo = str;
        this.typeDataList = list;
        this.selected = i10;
    }
}
