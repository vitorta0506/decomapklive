package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u001d\u0010\u001c\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\\\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010!J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020)HÖ\u0001J\u0019\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0003HÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR2\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0015\u0010\r\"\u0004\b\u0016\u0010\u000fR\"\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR\"\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u000f¨\u0006/"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;", "Landroid/os/Parcelable;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "list", "Ljava/util/ArrayList;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "Lkotlin/collections/ArrayList;", "page", "size", "total", "(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "setCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getList", "()Ljava/util/ArrayList;", "setList", "(Ljava/util/ArrayList;)V", "getPage", "setPage", "getSize", "setSize", "getTotal", "setTotal", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomVisitorListModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomVisitorListModel> CREATOR = new Creator();
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private Integer count;
    @SerializedName("list")
    @Nullable
    private ArrayList<VoiceRoomMemberModel> list;
    @SerializedName("page")
    @Nullable
    private Integer page;
    @SerializedName("size")
    @Nullable
    private Integer size;
    @SerializedName("total")
    @Nullable
    private Integer total;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomVisitorListModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomVisitorListModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            Integer valueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList2.add(VoiceRoomMemberModel.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new VoiceRoomVisitorListModel(valueOf, arrayList, parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomVisitorListModel[] newArray(int i9) {
            return new VoiceRoomVisitorListModel[i9];
        }
    }

    public VoiceRoomVisitorListModel(@Nullable Integer num, @Nullable ArrayList<VoiceRoomMemberModel> arrayList, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        this.count = num;
        this.list = arrayList;
        this.page = num2;
        this.size = num3;
        this.total = num4;
    }

    public static /* synthetic */ VoiceRoomVisitorListModel copy$default(VoiceRoomVisitorListModel voiceRoomVisitorListModel, Integer num, ArrayList arrayList, Integer num2, Integer num3, Integer num4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = voiceRoomVisitorListModel.count;
        }
        ArrayList<VoiceRoomMemberModel> arrayList2 = arrayList;
        if ((i9 & 2) != 0) {
            arrayList2 = voiceRoomVisitorListModel.list;
        }
        ArrayList arrayList3 = arrayList2;
        if ((i9 & 4) != 0) {
            num2 = voiceRoomVisitorListModel.page;
        }
        Integer num5 = num2;
        if ((i9 & 8) != 0) {
            num3 = voiceRoomVisitorListModel.size;
        }
        Integer num6 = num3;
        if ((i9 & 16) != 0) {
            num4 = voiceRoomVisitorListModel.total;
        }
        return voiceRoomVisitorListModel.copy(num, arrayList3, num5, num6, num4);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final ArrayList<VoiceRoomMemberModel> component2() {
        return this.list;
    }

    @Nullable
    public final Integer component3() {
        return this.page;
    }

    @Nullable
    public final Integer component4() {
        return this.size;
    }

    @Nullable
    public final Integer component5() {
        return this.total;
    }

    @NotNull
    public final VoiceRoomVisitorListModel copy(@Nullable Integer num, @Nullable ArrayList<VoiceRoomMemberModel> arrayList, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        return new VoiceRoomVisitorListModel(num, arrayList, num2, num3, num4);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomVisitorListModel) {
            VoiceRoomVisitorListModel voiceRoomVisitorListModel = (VoiceRoomVisitorListModel) obj;
            return Intrinsics.areEqual(this.count, voiceRoomVisitorListModel.count) && Intrinsics.areEqual(this.list, voiceRoomVisitorListModel.list) && Intrinsics.areEqual(this.page, voiceRoomVisitorListModel.page) && Intrinsics.areEqual(this.size, voiceRoomVisitorListModel.size) && Intrinsics.areEqual(this.total, voiceRoomVisitorListModel.total);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final ArrayList<VoiceRoomMemberModel> getList() {
        return this.list;
    }

    @Nullable
    public final Integer getPage() {
        return this.page;
    }

    @Nullable
    public final Integer getSize() {
        return this.size;
    }

    @Nullable
    public final Integer getTotal() {
        return this.total;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        ArrayList<VoiceRoomMemberModel> arrayList = this.list;
        int hashCode2 = (hashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        Integer num2 = this.page;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.size;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.total;
        return hashCode4 + (num4 != null ? num4.hashCode() : 0);
    }

    public final void setCount(@Nullable Integer num) {
        this.count = num;
    }

    public final void setList(@Nullable ArrayList<VoiceRoomMemberModel> arrayList) {
        this.list = arrayList;
    }

    public final void setPage(@Nullable Integer num) {
        this.page = num;
    }

    public final void setSize(@Nullable Integer num) {
        this.size = num;
    }

    public final void setTotal(@Nullable Integer num) {
        this.total = num;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomVisitorListModel(count=" + this.count + ", list=" + this.list + ", page=" + this.page + ", size=" + this.size + ", total=" + this.total + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        Integer num = this.count;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        ArrayList<VoiceRoomMemberModel> arrayList = this.list;
        if (arrayList == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(arrayList.size());
            Iterator<VoiceRoomMemberModel> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(out, i9);
            }
        }
        Integer num2 = this.page;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        Integer num3 = this.size;
        if (num3 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num3.intValue());
        }
        Integer num4 = this.total;
        if (num4 == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(num4.intValue());
    }
}
