package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003Ja\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\t\u0010%\u001a\u00020&HÖ\u0001J\u0019\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0003HÖ\u0001R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011¨\u0006,"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;", "Landroid/os/Parcelable;", "page", "", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "size", "owner", "admins", "memberMaxCount", "memberCount", "(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;II)V", "getAdmins", "()Ljava/util/List;", "getList", "getMemberCount", "()I", "getMemberMaxCount", "getOwner", "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "getPage", "getSize", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberPagedModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomMemberPagedModel> CREATOR = new Creator();
    @Nullable
    private final List<VoiceRoomMemberModel> admins;
    @Nullable
    private final List<VoiceRoomMemberModel> list;
    private final int memberCount;
    @SerializedName("memberMaxCount")
    private final int memberMaxCount;
    @Nullable
    private final VoiceRoomMemberModel owner;
    private final int page;
    private final int size;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomMemberPagedModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberPagedModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            int readInt = parcel.readInt();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt2 = parcel.readInt();
                arrayList = new ArrayList(readInt2);
                for (int i9 = 0; i9 != readInt2; i9++) {
                    arrayList.add(VoiceRoomMemberModel.CREATOR.createFromParcel(parcel));
                }
            }
            int readInt3 = parcel.readInt();
            VoiceRoomMemberModel createFromParcel = parcel.readInt() == 0 ? null : VoiceRoomMemberModel.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int readInt4 = parcel.readInt();
                arrayList2 = new ArrayList(readInt4);
                for (int i10 = 0; i10 != readInt4; i10++) {
                    arrayList2.add(VoiceRoomMemberModel.CREATOR.createFromParcel(parcel));
                }
            }
            return new VoiceRoomMemberPagedModel(readInt, arrayList, readInt3, createFromParcel, arrayList2, parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberPagedModel[] newArray(int i9) {
            return new VoiceRoomMemberPagedModel[i9];
        }
    }

    public VoiceRoomMemberPagedModel(int i9, @Nullable List<VoiceRoomMemberModel> list, int i10, @Nullable VoiceRoomMemberModel voiceRoomMemberModel, @Nullable List<VoiceRoomMemberModel> list2, int i11, int i12) {
        this.page = i9;
        this.list = list;
        this.size = i10;
        this.owner = voiceRoomMemberModel;
        this.admins = list2;
        this.memberMaxCount = i11;
        this.memberCount = i12;
    }

    public static /* synthetic */ VoiceRoomMemberPagedModel copy$default(VoiceRoomMemberPagedModel voiceRoomMemberPagedModel, int i9, List list, int i10, VoiceRoomMemberModel voiceRoomMemberModel, List list2, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i9 = voiceRoomMemberPagedModel.page;
        }
        List<VoiceRoomMemberModel> list3 = list;
        if ((i13 & 2) != 0) {
            list3 = voiceRoomMemberPagedModel.list;
        }
        List list4 = list3;
        if ((i13 & 4) != 0) {
            i10 = voiceRoomMemberPagedModel.size;
        }
        int i14 = i10;
        if ((i13 & 8) != 0) {
            voiceRoomMemberModel = voiceRoomMemberPagedModel.owner;
        }
        VoiceRoomMemberModel voiceRoomMemberModel2 = voiceRoomMemberModel;
        List<VoiceRoomMemberModel> list5 = list2;
        if ((i13 & 16) != 0) {
            list5 = voiceRoomMemberPagedModel.admins;
        }
        List list6 = list5;
        if ((i13 & 32) != 0) {
            i11 = voiceRoomMemberPagedModel.memberMaxCount;
        }
        int i15 = i11;
        if ((i13 & 64) != 0) {
            i12 = voiceRoomMemberPagedModel.memberCount;
        }
        return voiceRoomMemberPagedModel.copy(i9, list4, i14, voiceRoomMemberModel2, list6, i15, i12);
    }

    public final int component1() {
        return this.page;
    }

    @Nullable
    public final List<VoiceRoomMemberModel> component2() {
        return this.list;
    }

    public final int component3() {
        return this.size;
    }

    @Nullable
    public final VoiceRoomMemberModel component4() {
        return this.owner;
    }

    @Nullable
    public final List<VoiceRoomMemberModel> component5() {
        return this.admins;
    }

    public final int component6() {
        return this.memberMaxCount;
    }

    public final int component7() {
        return this.memberCount;
    }

    @NotNull
    public final VoiceRoomMemberPagedModel copy(int i9, @Nullable List<VoiceRoomMemberModel> list, int i10, @Nullable VoiceRoomMemberModel voiceRoomMemberModel, @Nullable List<VoiceRoomMemberModel> list2, int i11, int i12) {
        return new VoiceRoomMemberPagedModel(i9, list, i10, voiceRoomMemberModel, list2, i11, i12);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomMemberPagedModel) {
            VoiceRoomMemberPagedModel voiceRoomMemberPagedModel = (VoiceRoomMemberPagedModel) obj;
            return this.page == voiceRoomMemberPagedModel.page && Intrinsics.areEqual(this.list, voiceRoomMemberPagedModel.list) && this.size == voiceRoomMemberPagedModel.size && Intrinsics.areEqual(this.owner, voiceRoomMemberPagedModel.owner) && Intrinsics.areEqual(this.admins, voiceRoomMemberPagedModel.admins) && this.memberMaxCount == voiceRoomMemberPagedModel.memberMaxCount && this.memberCount == voiceRoomMemberPagedModel.memberCount;
        }
        return false;
    }

    @Nullable
    public final List<VoiceRoomMemberModel> getAdmins() {
        return this.admins;
    }

    @Nullable
    public final List<VoiceRoomMemberModel> getList() {
        return this.list;
    }

    public final int getMemberCount() {
        return this.memberCount;
    }

    public final int getMemberMaxCount() {
        return this.memberMaxCount;
    }

    @Nullable
    public final VoiceRoomMemberModel getOwner() {
        return this.owner;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getSize() {
        return this.size;
    }

    public int hashCode() {
        int i9 = this.page * 31;
        List<VoiceRoomMemberModel> list = this.list;
        int hashCode = (((i9 + (list == null ? 0 : list.hashCode())) * 31) + this.size) * 31;
        VoiceRoomMemberModel voiceRoomMemberModel = this.owner;
        int hashCode2 = (hashCode + (voiceRoomMemberModel == null ? 0 : voiceRoomMemberModel.hashCode())) * 31;
        List<VoiceRoomMemberModel> list2 = this.admins;
        return ((((hashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31) + this.memberMaxCount) * 31) + this.memberCount;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomMemberPagedModel(page=" + this.page + ", list=" + this.list + ", size=" + this.size + ", owner=" + this.owner + ", admins=" + this.admins + ", memberMaxCount=" + this.memberMaxCount + ", memberCount=" + this.memberCount + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.page);
        List<VoiceRoomMemberModel> list = this.list;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (VoiceRoomMemberModel voiceRoomMemberModel : list) {
                voiceRoomMemberModel.writeToParcel(out, i9);
            }
        }
        out.writeInt(this.size);
        VoiceRoomMemberModel voiceRoomMemberModel2 = this.owner;
        if (voiceRoomMemberModel2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            voiceRoomMemberModel2.writeToParcel(out, i9);
        }
        List<VoiceRoomMemberModel> list2 = this.admins;
        if (list2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list2.size());
            for (VoiceRoomMemberModel voiceRoomMemberModel3 : list2) {
                voiceRoomMemberModel3.writeToParcel(out, i9);
            }
        }
        out.writeInt(this.memberMaxCount);
        out.writeInt(this.memberCount);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ VoiceRoomMemberPagedModel(int r10, java.util.List r11, int r12, com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel r13, java.util.List r14, int r15, int r16, int r17, kotlin.jvm.internal.DefaultConstructorMarker r18) {
        /*
            r9 = this;
            r0 = r17 & 4
            if (r0 == 0) goto Le
            if (r11 == 0) goto Lb
            int r0 = r11.size()
            goto Lc
        Lb:
            r0 = 0
        Lc:
            r4 = r0
            goto Lf
        Le:
            r4 = r12
        Lf:
            r1 = r9
            r2 = r10
            r3 = r11
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.model.VoiceRoomMemberPagedModel.<init>(int, java.util.List, int, com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel, java.util.List, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
