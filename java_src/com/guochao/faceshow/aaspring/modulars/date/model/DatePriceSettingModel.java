package com.guochao.faceshow.aaspring.modulars.date.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.beans.DataAuth;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0001+B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J9\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001J\t\u0010\u001e\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0013HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001J\u0019\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0013HÖ\u0001R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011¨\u0006,"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Landroid/os/Parcelable;", "appointSetting", "Lcom/guochao/faceshow/aaspring/beans/DataAuth;", "audioPriceRules", "", "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;", "videoPriceRules", "(Lcom/guochao/faceshow/aaspring/beans/DataAuth;Ljava/util/List;Ljava/util/List;)V", "getAppointSetting", "()Lcom/guochao/faceshow/aaspring/beans/DataAuth;", "setAppointSetting", "(Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V", "getAudioPriceRules", "()Ljava/util/List;", "setAudioPriceRules", "(Ljava/util/List;)V", "currentAudioPrice", "", "getCurrentAudioPrice", "()I", "currentVideoPrice", "getCurrentVideoPrice", "getVideoPriceRules", "setVideoPriceRules", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "DatePriceRoleModel", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DatePriceSettingModel extends BaseModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<DatePriceSettingModel> CREATOR = new Creator();
    @Nullable
    private DataAuth appointSetting;
    @Nullable
    private List<DatePriceRoleModel> audioPriceRules;
    @Nullable
    private List<DatePriceRoleModel> videoPriceRules;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<DatePriceSettingModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final DatePriceSettingModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            DataAuth dataAuth = (DataAuth) parcel.readParcelable(DatePriceSettingModel.class.getClassLoader());
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                arrayList = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList.add(DatePriceRoleModel.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() != 0) {
                int readInt2 = parcel.readInt();
                arrayList2 = new ArrayList(readInt2);
                for (int i10 = 0; i10 != readInt2; i10++) {
                    arrayList2.add(DatePriceRoleModel.CREATOR.createFromParcel(parcel));
                }
            }
            return new DatePriceSettingModel(dataAuth, arrayList, arrayList2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final DatePriceSettingModel[] newArray(int i9) {
            return new DatePriceSettingModel[i9];
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\u0019\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;", "Landroid/os/Parcelable;", "ruleId", "", "order", "diamond", "checked", "(IIII)V", "getChecked", "()I", "setChecked", "(I)V", "getDiamond", "setDiamond", "getOrder", "setOrder", "getRuleId", "setRuleId", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DatePriceRoleModel implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<DatePriceRoleModel> CREATOR = new Creator();
        private int checked;
        private int diamond;
        private int order;
        private int ruleId;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<DatePriceRoleModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final DatePriceRoleModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new DatePriceRoleModel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final DatePriceRoleModel[] newArray(int i9) {
                return new DatePriceRoleModel[i9];
            }
        }

        public DatePriceRoleModel(int i9, int i10, int i11, int i12) {
            this.ruleId = i9;
            this.order = i10;
            this.diamond = i11;
            this.checked = i12;
        }

        public static /* synthetic */ DatePriceRoleModel copy$default(DatePriceRoleModel datePriceRoleModel, int i9, int i10, int i11, int i12, int i13, Object obj) {
            if ((i13 & 1) != 0) {
                i9 = datePriceRoleModel.ruleId;
            }
            if ((i13 & 2) != 0) {
                i10 = datePriceRoleModel.order;
            }
            if ((i13 & 4) != 0) {
                i11 = datePriceRoleModel.diamond;
            }
            if ((i13 & 8) != 0) {
                i12 = datePriceRoleModel.checked;
            }
            return datePriceRoleModel.copy(i9, i10, i11, i12);
        }

        public final int component1() {
            return this.ruleId;
        }

        public final int component2() {
            return this.order;
        }

        public final int component3() {
            return this.diamond;
        }

        public final int component4() {
            return this.checked;
        }

        @NotNull
        public final DatePriceRoleModel copy(int i9, int i10, int i11, int i12) {
            return new DatePriceRoleModel(i9, i10, i11, i12);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DatePriceRoleModel) {
                DatePriceRoleModel datePriceRoleModel = (DatePriceRoleModel) obj;
                return this.ruleId == datePriceRoleModel.ruleId && this.order == datePriceRoleModel.order && this.diamond == datePriceRoleModel.diamond && this.checked == datePriceRoleModel.checked;
            }
            return false;
        }

        public final int getChecked() {
            return this.checked;
        }

        public final int getDiamond() {
            return this.diamond;
        }

        public final int getOrder() {
            return this.order;
        }

        public final int getRuleId() {
            return this.ruleId;
        }

        public int hashCode() {
            return (((((this.ruleId * 31) + this.order) * 31) + this.diamond) * 31) + this.checked;
        }

        public final void setChecked(int i9) {
            this.checked = i9;
        }

        public final void setDiamond(int i9) {
            this.diamond = i9;
        }

        public final void setOrder(int i9) {
            this.order = i9;
        }

        public final void setRuleId(int i9) {
            this.ruleId = i9;
        }

        @NotNull
        public String toString() {
            return "DatePriceRoleModel(ruleId=" + this.ruleId + ", order=" + this.order + ", diamond=" + this.diamond + ", checked=" + this.checked + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.ruleId);
            out.writeInt(this.order);
            out.writeInt(this.diamond);
            out.writeInt(this.checked);
        }
    }

    public DatePriceSettingModel(@Nullable DataAuth dataAuth, @Nullable List<DatePriceRoleModel> list, @Nullable List<DatePriceRoleModel> list2) {
        this.appointSetting = dataAuth;
        this.audioPriceRules = list;
        this.videoPriceRules = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DatePriceSettingModel copy$default(DatePriceSettingModel datePriceSettingModel, DataAuth dataAuth, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            dataAuth = datePriceSettingModel.appointSetting;
        }
        if ((i9 & 2) != 0) {
            list = datePriceSettingModel.audioPriceRules;
        }
        if ((i9 & 4) != 0) {
            list2 = datePriceSettingModel.videoPriceRules;
        }
        return datePriceSettingModel.copy(dataAuth, list, list2);
    }

    @Nullable
    public final DataAuth component1() {
        return this.appointSetting;
    }

    @Nullable
    public final List<DatePriceRoleModel> component2() {
        return this.audioPriceRules;
    }

    @Nullable
    public final List<DatePriceRoleModel> component3() {
        return this.videoPriceRules;
    }

    @NotNull
    public final DatePriceSettingModel copy(@Nullable DataAuth dataAuth, @Nullable List<DatePriceRoleModel> list, @Nullable List<DatePriceRoleModel> list2) {
        return new DatePriceSettingModel(dataAuth, list, list2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DatePriceSettingModel) {
            DatePriceSettingModel datePriceSettingModel = (DatePriceSettingModel) obj;
            return Intrinsics.areEqual(this.appointSetting, datePriceSettingModel.appointSetting) && Intrinsics.areEqual(this.audioPriceRules, datePriceSettingModel.audioPriceRules) && Intrinsics.areEqual(this.videoPriceRules, datePriceSettingModel.videoPriceRules);
        }
        return false;
    }

    @Nullable
    public final DataAuth getAppointSetting() {
        return this.appointSetting;
    }

    @Nullable
    public final List<DatePriceRoleModel> getAudioPriceRules() {
        return this.audioPriceRules;
    }

    public final int getCurrentAudioPrice() {
        List<DatePriceRoleModel> list = this.audioPriceRules;
        if (list != null) {
            for (DatePriceRoleModel datePriceRoleModel : list) {
                if (datePriceRoleModel.getChecked() == 1) {
                    return datePriceRoleModel.getDiamond();
                }
            }
        }
        return 0;
    }

    public final int getCurrentVideoPrice() {
        List<DatePriceRoleModel> list = this.videoPriceRules;
        if (list != null) {
            for (DatePriceRoleModel datePriceRoleModel : list) {
                if (datePriceRoleModel.getChecked() == 1) {
                    return datePriceRoleModel.getDiamond();
                }
            }
        }
        return 0;
    }

    @Nullable
    public final List<DatePriceRoleModel> getVideoPriceRules() {
        return this.videoPriceRules;
    }

    public int hashCode() {
        DataAuth dataAuth = this.appointSetting;
        int hashCode = (dataAuth == null ? 0 : dataAuth.hashCode()) * 31;
        List<DatePriceRoleModel> list = this.audioPriceRules;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<DatePriceRoleModel> list2 = this.videoPriceRules;
        return hashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setAppointSetting(@Nullable DataAuth dataAuth) {
        this.appointSetting = dataAuth;
    }

    public final void setAudioPriceRules(@Nullable List<DatePriceRoleModel> list) {
        this.audioPriceRules = list;
    }

    public final void setVideoPriceRules(@Nullable List<DatePriceRoleModel> list) {
        this.videoPriceRules = list;
    }

    @NotNull
    public String toString() {
        return "DatePriceSettingModel(appointSetting=" + this.appointSetting + ", audioPriceRules=" + this.audioPriceRules + ", videoPriceRules=" + this.videoPriceRules + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeParcelable(this.appointSetting, i9);
        List<DatePriceRoleModel> list = this.audioPriceRules;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (DatePriceRoleModel datePriceRoleModel : list) {
                datePriceRoleModel.writeToParcel(out, i9);
            }
        }
        List<DatePriceRoleModel> list2 = this.videoPriceRules;
        if (list2 == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(list2.size());
        for (DatePriceRoleModel datePriceRoleModel2 : list2) {
            datePriceRoleModel2.writeToParcel(out, i9);
        }
    }
}
