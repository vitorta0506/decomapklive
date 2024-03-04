package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0003J\u001b\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0001J\t\u0010\f\u001a\u00020\rHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\rHÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rHÖ\u0001R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordListBean;", "Landroid/os/Parcelable;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "list", "", "Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordBean;", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "setList", "component1", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftLuckRecordListBean extends BaseModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<GiftLuckRecordListBean> CREATOR = new Creator();
    @Nullable
    private List<GiftLuckRecordBean> list;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GiftLuckRecordListBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftLuckRecordListBean createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList2.add(GiftLuckRecordBean.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new GiftLuckRecordListBean(arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GiftLuckRecordListBean[] newArray(int i9) {
            return new GiftLuckRecordListBean[i9];
        }
    }

    public GiftLuckRecordListBean(@Nullable List<GiftLuckRecordBean> list) {
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GiftLuckRecordListBean copy$default(GiftLuckRecordListBean giftLuckRecordListBean, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = giftLuckRecordListBean.list;
        }
        return giftLuckRecordListBean.copy(list);
    }

    @Nullable
    public final List<GiftLuckRecordBean> component1() {
        return this.list;
    }

    @NotNull
    public final GiftLuckRecordListBean copy(@Nullable List<GiftLuckRecordBean> list) {
        return new GiftLuckRecordListBean(list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GiftLuckRecordListBean) && Intrinsics.areEqual(this.list, ((GiftLuckRecordListBean) obj).list);
    }

    @Nullable
    public final List<GiftLuckRecordBean> getList() {
        return this.list;
    }

    public int hashCode() {
        List<GiftLuckRecordBean> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final void setList(@Nullable List<GiftLuckRecordBean> list) {
        this.list = list;
    }

    @NotNull
    public String toString() {
        return "GiftLuckRecordListBean(list=" + this.list + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        List<GiftLuckRecordBean> list = this.list;
        if (list == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(list.size());
        for (GiftLuckRecordBean giftLuckRecordBean : list) {
            giftLuckRecordBean.writeToParcel(out, i9);
        }
    }
}
