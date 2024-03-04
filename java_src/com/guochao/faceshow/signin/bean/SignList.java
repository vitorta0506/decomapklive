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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\fJ\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003Jb\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010'J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\t\u0010.\u001a\u00020\u0007HÖ\u0001J\u0019\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u001e\u0010\u0012\"\u0004\b\u001f\u0010\u0014¨\u00064"}, d2 = {"Lcom/guochao/faceshow/signin/bean/SignList;", "Landroid/os/Parcelable;", "taskId", "", "day", "signFlag", "checkMode", "", "fixList", "", "Lcom/guochao/faceshow/signin/bean/RewardList;", "luckList", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getCheckMode", "()Ljava/lang/String;", "setCheckMode", "(Ljava/lang/String;)V", "getDay", "()Ljava/lang/Integer;", "setDay", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getFixList", "()Ljava/util/List;", "setFixList", "(Ljava/util/List;)V", "getLuckList", "setLuckList", "getSignFlag", "setSignFlag", "getTaskId", "setTaskId", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/guochao/faceshow/signin/bean/SignList;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SignList implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<SignList> CREATOR = new Creator();
    @Nullable
    private String checkMode;
    @Nullable
    private Integer day;
    @Nullable
    private List<RewardList> fixList;
    @Nullable
    private List<RewardList> luckList;
    @Nullable
    private Integer signFlag;
    @Nullable
    private Integer taskId;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<SignList> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final SignList createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            ArrayList arrayList2 = null;
            Integer valueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String readString = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                arrayList = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList.add(RewardList.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() != 0) {
                int readInt2 = parcel.readInt();
                arrayList2 = new ArrayList(readInt2);
                for (int i10 = 0; i10 != readInt2; i10++) {
                    arrayList2.add(RewardList.CREATOR.createFromParcel(parcel));
                }
            }
            return new SignList(valueOf, valueOf2, valueOf3, readString, arrayList, arrayList2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final SignList[] newArray(int i9) {
            return new SignList[i9];
        }
    }

    public SignList(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable List<RewardList> list, @Nullable List<RewardList> list2) {
        this.taskId = num;
        this.day = num2;
        this.signFlag = num3;
        this.checkMode = str;
        this.fixList = list;
        this.luckList = list2;
    }

    public static /* synthetic */ SignList copy$default(SignList signList, Integer num, Integer num2, Integer num3, String str, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = signList.taskId;
        }
        if ((i9 & 2) != 0) {
            num2 = signList.day;
        }
        Integer num4 = num2;
        if ((i9 & 4) != 0) {
            num3 = signList.signFlag;
        }
        Integer num5 = num3;
        if ((i9 & 8) != 0) {
            str = signList.checkMode;
        }
        String str2 = str;
        List<RewardList> list3 = list;
        if ((i9 & 16) != 0) {
            list3 = signList.fixList;
        }
        List list4 = list3;
        List<RewardList> list5 = list2;
        if ((i9 & 32) != 0) {
            list5 = signList.luckList;
        }
        return signList.copy(num, num4, num5, str2, list4, list5);
    }

    @Nullable
    public final Integer component1() {
        return this.taskId;
    }

    @Nullable
    public final Integer component2() {
        return this.day;
    }

    @Nullable
    public final Integer component3() {
        return this.signFlag;
    }

    @Nullable
    public final String component4() {
        return this.checkMode;
    }

    @Nullable
    public final List<RewardList> component5() {
        return this.fixList;
    }

    @Nullable
    public final List<RewardList> component6() {
        return this.luckList;
    }

    @NotNull
    public final SignList copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable List<RewardList> list, @Nullable List<RewardList> list2) {
        return new SignList(num, num2, num3, str, list, list2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SignList) {
            SignList signList = (SignList) obj;
            return Intrinsics.areEqual(this.taskId, signList.taskId) && Intrinsics.areEqual(this.day, signList.day) && Intrinsics.areEqual(this.signFlag, signList.signFlag) && Intrinsics.areEqual(this.checkMode, signList.checkMode) && Intrinsics.areEqual(this.fixList, signList.fixList) && Intrinsics.areEqual(this.luckList, signList.luckList);
        }
        return false;
    }

    @Nullable
    public final String getCheckMode() {
        return this.checkMode;
    }

    @Nullable
    public final Integer getDay() {
        return this.day;
    }

    @Nullable
    public final List<RewardList> getFixList() {
        return this.fixList;
    }

    @Nullable
    public final List<RewardList> getLuckList() {
        return this.luckList;
    }

    @Nullable
    public final Integer getSignFlag() {
        return this.signFlag;
    }

    @Nullable
    public final Integer getTaskId() {
        return this.taskId;
    }

    public int hashCode() {
        Integer num = this.taskId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.day;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.signFlag;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str = this.checkMode;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        List<RewardList> list = this.fixList;
        int hashCode5 = (hashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        List<RewardList> list2 = this.luckList;
        return hashCode5 + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setCheckMode(@Nullable String str) {
        this.checkMode = str;
    }

    public final void setDay(@Nullable Integer num) {
        this.day = num;
    }

    public final void setFixList(@Nullable List<RewardList> list) {
        this.fixList = list;
    }

    public final void setLuckList(@Nullable List<RewardList> list) {
        this.luckList = list;
    }

    public final void setSignFlag(@Nullable Integer num) {
        this.signFlag = num;
    }

    public final void setTaskId(@Nullable Integer num) {
        this.taskId = num;
    }

    @NotNull
    public String toString() {
        return "SignList(taskId=" + this.taskId + ", day=" + this.day + ", signFlag=" + this.signFlag + ", checkMode=" + this.checkMode + ", fixList=" + this.fixList + ", luckList=" + this.luckList + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        Integer num = this.taskId;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        Integer num2 = this.day;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        Integer num3 = this.signFlag;
        if (num3 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num3.intValue());
        }
        out.writeString(this.checkMode);
        List<RewardList> list = this.fixList;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (RewardList rewardList : list) {
                rewardList.writeToParcel(out, i9);
            }
        }
        List<RewardList> list2 = this.luckList;
        if (list2 == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(list2.size());
        for (RewardList rewardList2 : list2) {
            rewardList2.writeToParcel(out, i9);
        }
    }
}
