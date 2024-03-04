package com.guochao.component.mvp.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017BK\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0002\u0010\rJ\u0010\u0010#\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\u000fJ\t\u0010(\u001a\u00020\u000bHÆ\u0003J\t\u0010)\u001a\u00020\u0004HÆ\u0003J^\u0010*\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u0004HÆ\u0001¢\u0006\u0002\u0010+J\t\u0010,\u001a\u00020\u0004HÖ\u0001J\u0013\u0010-\u001a\u00020\u000b2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020\u0004HÖ\u0001J\t\u00101\u001a\u00020\u0006HÖ\u0001J\u0019\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0004HÖ\u0001R\u0015\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001e\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00068"}, d2 = {"Lcom/guochao/component/mvp/model/TypeData;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Landroid/os/Parcelable;", "bussinessId", "", "confData", "", "data", "name", "status", "selected", "", "type", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZI)V", "getBussinessId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getConfData", "()Ljava/lang/String;", "setConfData", "(Ljava/lang/String;)V", "getData", "setData", "getName", "getSelected", "()Z", "setSelected", "(Z)V", "getStatus", "setStatus", "(Ljava/lang/Integer;)V", "getType", "()I", "setType", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZI)Lcom/guochao/component/mvp/model/TypeData;", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TypeData extends BaseModel implements Parcelable {
    public static final int STATUS_FINISHED = 2;
    @Nullable
    private final Integer bussinessId;
    @Nullable
    private String confData;
    @Nullable
    private String data;
    @Nullable
    private final String name;
    private boolean selected;
    @Nullable
    private Integer status;
    private int type;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<TypeData> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/component/mvp/model/TypeData$Companion;", "", "()V", "STATUS_FINISHED", "", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<TypeData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final TypeData createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new TypeData(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0, parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final TypeData[] newArray(int i9) {
            return new TypeData[i9];
        }
    }

    public /* synthetic */ TypeData(Integer num, String str, String str2, String str3, Integer num2, boolean z10, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, str, str2, str3, num2, (i10 & 32) != 0 ? false : z10, (i10 & 64) != 0 ? -1 : i9);
    }

    public static /* synthetic */ TypeData copy$default(TypeData typeData, Integer num, String str, String str2, String str3, Integer num2, boolean z10, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = typeData.bussinessId;
        }
        if ((i10 & 2) != 0) {
            str = typeData.confData;
        }
        String str4 = str;
        if ((i10 & 4) != 0) {
            str2 = typeData.data;
        }
        String str5 = str2;
        if ((i10 & 8) != 0) {
            str3 = typeData.name;
        }
        String str6 = str3;
        if ((i10 & 16) != 0) {
            num2 = typeData.status;
        }
        Integer num3 = num2;
        if ((i10 & 32) != 0) {
            z10 = typeData.selected;
        }
        boolean z11 = z10;
        if ((i10 & 64) != 0) {
            i9 = typeData.type;
        }
        return typeData.copy(num, str4, str5, str6, num3, z11, i9);
    }

    @Nullable
    public final Integer component1() {
        return this.bussinessId;
    }

    @Nullable
    public final String component2() {
        return this.confData;
    }

    @Nullable
    public final String component3() {
        return this.data;
    }

    @Nullable
    public final String component4() {
        return this.name;
    }

    @Nullable
    public final Integer component5() {
        return this.status;
    }

    public final boolean component6() {
        return this.selected;
    }

    public final int component7() {
        return this.type;
    }

    @NotNull
    public final TypeData copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num2, boolean z10, int i9) {
        return new TypeData(num, str, str2, str3, num2, z10, i9);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TypeData) {
            TypeData typeData = (TypeData) obj;
            return Intrinsics.areEqual(this.bussinessId, typeData.bussinessId) && Intrinsics.areEqual(this.confData, typeData.confData) && Intrinsics.areEqual(this.data, typeData.data) && Intrinsics.areEqual(this.name, typeData.name) && Intrinsics.areEqual(this.status, typeData.status) && this.selected == typeData.selected && this.type == typeData.type;
        }
        return false;
    }

    @Nullable
    public final Integer getBussinessId() {
        return this.bussinessId;
    }

    @Nullable
    public final String getConfData() {
        return this.confData;
    }

    @Nullable
    public final String getData() {
        return this.data;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    public final int getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        Integer num = this.bussinessId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.confData;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.data;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.name;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num2 = this.status;
        int hashCode5 = (hashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31;
        boolean z10 = this.selected;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return ((hashCode5 + i9) * 31) + this.type;
    }

    public final void setConfData(@Nullable String str) {
        this.confData = str;
    }

    public final void setData(@Nullable String str) {
        this.data = str;
    }

    public final void setSelected(boolean z10) {
        this.selected = z10;
    }

    public final void setStatus(@Nullable Integer num) {
        this.status = num;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    @NotNull
    public String toString() {
        return "TypeData(bussinessId=" + this.bussinessId + ", confData=" + this.confData + ", data=" + this.data + ", name=" + this.name + ", status=" + this.status + ", selected=" + this.selected + ", type=" + this.type + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        Integer num = this.bussinessId;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        out.writeString(this.confData);
        out.writeString(this.data);
        out.writeString(this.name);
        Integer num2 = this.status;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        out.writeInt(this.selected ? 1 : 0);
        out.writeInt(this.type);
    }

    public TypeData(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num2, boolean z10, int i9) {
        this.bussinessId = num;
        this.confData = str;
        this.data = str2;
        this.name = str3;
        this.status = num2;
        this.selected = z10;
        this.type = i9;
    }
}
