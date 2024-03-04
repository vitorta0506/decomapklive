package com.guochao.faceshow.aaspring.db;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Entity(tableName = "friendGroup")
@Parcelize
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BQ\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0002\u0010\rJ\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010)\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0012J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003JZ\u0010+\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010,J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\u0013\u0010.\u001a\u00020\t2\b\u0010/\u001a\u0004\u0018\u000100HÖ\u0003J\t\u00101\u001a\u00020\u0003HÖ\u0001J\t\u00102\u001a\u00020\u0005HÖ\u0001J\u0019\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\b\u0010\u0012\"\u0004\b\u0013\u0010\u0014R&\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001d¨\u00068"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "Landroid/os/Parcelable;", "id", "", "name", "", "sortNum", "memberNum", "isSelect", "", "list", "", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)V", "getId", "()I", "setId", "(I)V", "()Ljava/lang/Boolean;", "setSelect", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "getMemberNum", "()Ljava/lang/Integer;", "setMemberNum", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getSortNum", "setSortNum", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GroupInfo implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<GroupInfo> CREATOR = new Creator();
    @PrimaryKey

    /* renamed from: id  reason: collision with root package name */
    private int f16367id;
    @Nullable
    private Boolean isSelect;
    @Ignore
    @Nullable
    private List<FriendInfo> list;
    @Nullable
    private Integer memberNum;
    @Nullable
    private String name;
    @Nullable
    private Integer sortNum;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GroupInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GroupInfo createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            int readInt = parcel.readInt();
            String readString = parcel.readString();
            Integer valueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Boolean valueOf3 = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt2 = parcel.readInt();
                arrayList = new ArrayList(readInt2);
                for (int i9 = 0; i9 != readInt2; i9++) {
                    arrayList.add(FriendInfo.CREATOR.createFromParcel(parcel));
                }
            }
            return new GroupInfo(readInt, readString, valueOf, valueOf2, valueOf3, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GroupInfo[] newArray(int i9) {
            return new GroupInfo[i9];
        }
    }

    public GroupInfo() {
        this(0, null, null, null, null, null, 63, null);
    }

    public GroupInfo(@NonNull int i9, @Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable List<FriendInfo> list) {
        this.f16367id = i9;
        this.name = str;
        this.sortNum = num;
        this.memberNum = num2;
        this.isSelect = bool;
        this.list = list;
    }

    public static /* synthetic */ GroupInfo copy$default(GroupInfo groupInfo, int i9, String str, Integer num, Integer num2, Boolean bool, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = groupInfo.f16367id;
        }
        if ((i10 & 2) != 0) {
            str = groupInfo.name;
        }
        String str2 = str;
        if ((i10 & 4) != 0) {
            num = groupInfo.sortNum;
        }
        Integer num3 = num;
        if ((i10 & 8) != 0) {
            num2 = groupInfo.memberNum;
        }
        Integer num4 = num2;
        if ((i10 & 16) != 0) {
            bool = groupInfo.isSelect;
        }
        Boolean bool2 = bool;
        List<FriendInfo> list2 = list;
        if ((i10 & 32) != 0) {
            list2 = groupInfo.list;
        }
        return groupInfo.copy(i9, str2, num3, num4, bool2, list2);
    }

    public final int component1() {
        return this.f16367id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final Integer component3() {
        return this.sortNum;
    }

    @Nullable
    public final Integer component4() {
        return this.memberNum;
    }

    @Nullable
    public final Boolean component5() {
        return this.isSelect;
    }

    @Nullable
    public final List<FriendInfo> component6() {
        return this.list;
    }

    @NotNull
    public final GroupInfo copy(@NonNull int i9, @Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable List<FriendInfo> list) {
        return new GroupInfo(i9, str, num, num2, bool, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupInfo) {
            GroupInfo groupInfo = (GroupInfo) obj;
            return this.f16367id == groupInfo.f16367id && Intrinsics.areEqual(this.name, groupInfo.name) && Intrinsics.areEqual(this.sortNum, groupInfo.sortNum) && Intrinsics.areEqual(this.memberNum, groupInfo.memberNum) && Intrinsics.areEqual(this.isSelect, groupInfo.isSelect) && Intrinsics.areEqual(this.list, groupInfo.list);
        }
        return false;
    }

    public final int getId() {
        return this.f16367id;
    }

    @Nullable
    public final List<FriendInfo> getList() {
        return this.list;
    }

    @Nullable
    public final Integer getMemberNum() {
        return this.memberNum;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Integer getSortNum() {
        return this.sortNum;
    }

    public int hashCode() {
        int i9 = this.f16367id * 31;
        String str = this.name;
        int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.sortNum;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.memberNum;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool = this.isSelect;
        int hashCode4 = (hashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<FriendInfo> list = this.list;
        return hashCode4 + (list != null ? list.hashCode() : 0);
    }

    @Nullable
    public final Boolean isSelect() {
        return this.isSelect;
    }

    public final void setId(int i9) {
        this.f16367id = i9;
    }

    public final void setList(@Nullable List<FriendInfo> list) {
        this.list = list;
    }

    public final void setMemberNum(@Nullable Integer num) {
        this.memberNum = num;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setSelect(@Nullable Boolean bool) {
        this.isSelect = bool;
    }

    public final void setSortNum(@Nullable Integer num) {
        this.sortNum = num;
    }

    @NotNull
    public String toString() {
        return "GroupInfo(id=" + this.f16367id + ", name=" + this.name + ", sortNum=" + this.sortNum + ", memberNum=" + this.memberNum + ", isSelect=" + this.isSelect + ", list=" + this.list + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.f16367id);
        out.writeString(this.name);
        Integer num = this.sortNum;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        Integer num2 = this.memberNum;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        Boolean bool = this.isSelect;
        if (bool == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(bool.booleanValue() ? 1 : 0);
        }
        List<FriendInfo> list = this.list;
        if (list == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(list.size());
        for (FriendInfo friendInfo : list) {
            friendInfo.writeToParcel(out, i9);
        }
    }

    public /* synthetic */ GroupInfo(int i9, String str, Integer num, Integer num2, Boolean bool, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i9, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : num, (i10 & 8) != 0 ? null : num2, (i10 & 16) != 0 ? Boolean.FALSE : bool, (i10 & 32) == 0 ? list : null);
    }
}
