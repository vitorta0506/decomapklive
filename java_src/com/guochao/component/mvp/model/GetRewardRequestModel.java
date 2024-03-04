package com.guochao.component.mvp.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/mvp/model/GetRewardRequestModel;", "Landroid/os/Parcelable;", "type", "", "mvpLevel", "bussinessId", "", "data", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getBussinessId", "()Ljava/lang/String;", "setBussinessId", "(Ljava/lang/String;)V", "getData", "setData", "getMvpLevel", "()Ljava/lang/Integer;", "setMvpLevel", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getType", "()I", "setType", "(I)V", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GetRewardRequestModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<GetRewardRequestModel> CREATOR = new Creator();
    @Nullable
    private String bussinessId;
    @Nullable
    private String data;
    @Nullable
    private Integer mvpLevel;
    private int type;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GetRewardRequestModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GetRewardRequestModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new GetRewardRequestModel(parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GetRewardRequestModel[] newArray(int i9) {
            return new GetRewardRequestModel[i9];
        }
    }

    public GetRewardRequestModel(int i9, @Nullable Integer num, @Nullable String str, @Nullable String str2) {
        this.type = i9;
        this.mvpLevel = num;
        this.bussinessId = str;
        this.data = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final String getBussinessId() {
        return this.bussinessId;
    }

    @Nullable
    public final String getData() {
        return this.data;
    }

    @Nullable
    public final Integer getMvpLevel() {
        return this.mvpLevel;
    }

    public final int getType() {
        return this.type;
    }

    public final void setBussinessId(@Nullable String str) {
        this.bussinessId = str;
    }

    public final void setData(@Nullable String str) {
        this.data = str;
    }

    public final void setMvpLevel(@Nullable Integer num) {
        this.mvpLevel = num;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        int intValue;
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.type);
        Integer num = this.mvpLevel;
        if (num == null) {
            intValue = 0;
        } else {
            out.writeInt(1);
            intValue = num.intValue();
        }
        out.writeInt(intValue);
        out.writeString(this.bussinessId);
        out.writeString(this.data);
    }

    public /* synthetic */ GetRewardRequestModel(int i9, Integer num, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : str2);
    }
}
