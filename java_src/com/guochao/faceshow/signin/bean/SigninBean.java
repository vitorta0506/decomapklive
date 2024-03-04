package com.guochao.faceshow.signin.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003JD\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001cJ\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\rR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/signin/bean/SigninBean;", "Landroid/os/Parcelable;", "daySign", "", "dayFlag", "regDays", "signList", "", "Lcom/guochao/faceshow/signin/bean/SignList;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V", "getDayFlag", "()Ljava/lang/Integer;", "setDayFlag", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDaySign", "setDaySign", "getRegDays", "setRegDays", "getSignList", "()Ljava/util/List;", "setSignList", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/guochao/faceshow/signin/bean/SigninBean;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SigninBean implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<SigninBean> CREATOR = new Creator();
    @Nullable
    private Integer dayFlag;
    @Nullable
    private Integer daySign;
    @Nullable
    private Integer regDays;
    @Nullable
    private List<SignList> signList;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<SigninBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final SigninBean createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            ArrayList arrayList = null;
            Integer valueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() != 0) {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList2.add(SignList.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new SigninBean(valueOf, valueOf2, valueOf3, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final SigninBean[] newArray(int i9) {
            return new SigninBean[i9];
        }
    }

    public SigninBean(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<SignList> list) {
        this.daySign = num;
        this.dayFlag = num2;
        this.regDays = num3;
        this.signList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SigninBean copy$default(SigninBean signinBean, Integer num, Integer num2, Integer num3, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = signinBean.daySign;
        }
        if ((i9 & 2) != 0) {
            num2 = signinBean.dayFlag;
        }
        if ((i9 & 4) != 0) {
            num3 = signinBean.regDays;
        }
        if ((i9 & 8) != 0) {
            list = signinBean.signList;
        }
        return signinBean.copy(num, num2, num3, list);
    }

    @Nullable
    public final Integer component1() {
        return this.daySign;
    }

    @Nullable
    public final Integer component2() {
        return this.dayFlag;
    }

    @Nullable
    public final Integer component3() {
        return this.regDays;
    }

    @Nullable
    public final List<SignList> component4() {
        return this.signList;
    }

    @NotNull
    public final SigninBean copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<SignList> list) {
        return new SigninBean(num, num2, num3, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SigninBean) {
            SigninBean signinBean = (SigninBean) obj;
            return Intrinsics.areEqual(this.daySign, signinBean.daySign) && Intrinsics.areEqual(this.dayFlag, signinBean.dayFlag) && Intrinsics.areEqual(this.regDays, signinBean.regDays) && Intrinsics.areEqual(this.signList, signinBean.signList);
        }
        return false;
    }

    @Nullable
    public final Integer getDayFlag() {
        return this.dayFlag;
    }

    @Nullable
    public final Integer getDaySign() {
        return this.daySign;
    }

    @Nullable
    public final Integer getRegDays() {
        return this.regDays;
    }

    @Nullable
    public final List<SignList> getSignList() {
        return this.signList;
    }

    public int hashCode() {
        Integer num = this.daySign;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.dayFlag;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.regDays;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<SignList> list = this.signList;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final void setDayFlag(@Nullable Integer num) {
        this.dayFlag = num;
    }

    public final void setDaySign(@Nullable Integer num) {
        this.daySign = num;
    }

    public final void setRegDays(@Nullable Integer num) {
        this.regDays = num;
    }

    public final void setSignList(@Nullable List<SignList> list) {
        this.signList = list;
    }

    @NotNull
    public String toString() {
        return "SigninBean(daySign=" + this.daySign + ", dayFlag=" + this.dayFlag + ", regDays=" + this.regDays + ", signList=" + this.signList + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        Integer num = this.daySign;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        Integer num2 = this.dayFlag;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        Integer num3 = this.regDays;
        if (num3 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num3.intValue());
        }
        List<SignList> list = this.signList;
        if (list == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(list.size());
        for (SignList signList : list) {
            signList.writeToParcel(out, i9);
        }
    }
}
