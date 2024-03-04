package com.guochao.component.voiceliveroom.model;

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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J%\u0010\u0010\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;", "Landroid/os/Parcelable;", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;", "total", "", "(Ljava/util/List;I)V", "getList", "()Ljava/util/List;", "getTotal", "()I", "setTotal", "(I)V", "component1", "component2", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomViewerListModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomViewerListModel> CREATOR = new Creator();
    @Nullable
    private final List<VoiceRoomViewerModel> list;
    private int total;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomViewerListModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomViewerListModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList2.add(VoiceRoomViewerModel.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new VoiceRoomViewerListModel(arrayList, parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomViewerListModel[] newArray(int i9) {
            return new VoiceRoomViewerListModel[i9];
        }
    }

    public VoiceRoomViewerListModel(@Nullable List<VoiceRoomViewerModel> list, int i9) {
        this.list = list;
        this.total = i9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VoiceRoomViewerListModel copy$default(VoiceRoomViewerListModel voiceRoomViewerListModel, List list, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = voiceRoomViewerListModel.list;
        }
        if ((i10 & 2) != 0) {
            i9 = voiceRoomViewerListModel.total;
        }
        return voiceRoomViewerListModel.copy(list, i9);
    }

    @Nullable
    public final List<VoiceRoomViewerModel> component1() {
        return this.list;
    }

    public final int component2() {
        return this.total;
    }

    @NotNull
    public final VoiceRoomViewerListModel copy(@Nullable List<VoiceRoomViewerModel> list, int i9) {
        return new VoiceRoomViewerListModel(list, i9);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomViewerListModel) {
            VoiceRoomViewerListModel voiceRoomViewerListModel = (VoiceRoomViewerListModel) obj;
            return Intrinsics.areEqual(this.list, voiceRoomViewerListModel.list) && this.total == voiceRoomViewerListModel.total;
        }
        return false;
    }

    @Nullable
    public final List<VoiceRoomViewerModel> getList() {
        return this.list;
    }

    public final int getTotal() {
        return this.total;
    }

    public int hashCode() {
        List<VoiceRoomViewerModel> list = this.list;
        return ((list == null ? 0 : list.hashCode()) * 31) + this.total;
    }

    public final void setTotal(int i9) {
        this.total = i9;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomViewerListModel(list=" + this.list + ", total=" + this.total + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        List<VoiceRoomViewerModel> list = this.list;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (VoiceRoomViewerModel voiceRoomViewerModel : list) {
                voiceRoomViewerModel.writeToParcel(out, i9);
            }
        }
        out.writeInt(this.total);
    }
}
