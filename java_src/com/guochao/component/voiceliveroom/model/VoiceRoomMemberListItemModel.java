package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J)\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\t\u0010\u0015\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\n\"\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006!"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;", "Lcom/chad/library/adapter/base/entity/MultiItemEntity;", "Landroid/os/Parcelable;", "itemType", "", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "isSelected", "", "(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Z)V", "()Z", "setSelected", "(Z)V", "getItemType", "()I", "getModel", "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "component1", "component2", "component3", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberListItemModel implements MultiItemEntity, Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomMemberListItemModel> CREATOR = new Creator();
    private boolean isSelected;
    private final int itemType;
    @Nullable
    private final VoiceRoomMemberModel model;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomMemberListItemModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberListItemModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomMemberListItemModel(parcel.readInt(), parcel.readInt() == 0 ? null : VoiceRoomMemberModel.CREATOR.createFromParcel(parcel), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberListItemModel[] newArray(int i9) {
            return new VoiceRoomMemberListItemModel[i9];
        }
    }

    public VoiceRoomMemberListItemModel(int i9, @Nullable VoiceRoomMemberModel voiceRoomMemberModel, boolean z10) {
        this.itemType = i9;
        this.model = voiceRoomMemberModel;
        this.isSelected = z10;
    }

    public static /* synthetic */ VoiceRoomMemberListItemModel copy$default(VoiceRoomMemberListItemModel voiceRoomMemberListItemModel, int i9, VoiceRoomMemberModel voiceRoomMemberModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = voiceRoomMemberListItemModel.getItemType();
        }
        if ((i10 & 2) != 0) {
            voiceRoomMemberModel = voiceRoomMemberListItemModel.model;
        }
        if ((i10 & 4) != 0) {
            z10 = voiceRoomMemberListItemModel.isSelected;
        }
        return voiceRoomMemberListItemModel.copy(i9, voiceRoomMemberModel, z10);
    }

    public final int component1() {
        return getItemType();
    }

    @Nullable
    public final VoiceRoomMemberModel component2() {
        return this.model;
    }

    public final boolean component3() {
        return this.isSelected;
    }

    @NotNull
    public final VoiceRoomMemberListItemModel copy(int i9, @Nullable VoiceRoomMemberModel voiceRoomMemberModel, boolean z10) {
        return new VoiceRoomMemberListItemModel(i9, voiceRoomMemberModel, z10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomMemberListItemModel) {
            VoiceRoomMemberListItemModel voiceRoomMemberListItemModel = (VoiceRoomMemberListItemModel) obj;
            return getItemType() == voiceRoomMemberListItemModel.getItemType() && Intrinsics.areEqual(this.model, voiceRoomMemberListItemModel.model) && this.isSelected == voiceRoomMemberListItemModel.isSelected;
        }
        return false;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return this.itemType;
    }

    @Nullable
    public final VoiceRoomMemberModel getModel() {
        return this.model;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int itemType = getItemType() * 31;
        VoiceRoomMemberModel voiceRoomMemberModel = this.model;
        int hashCode = (itemType + (voiceRoomMemberModel == null ? 0 : voiceRoomMemberModel.hashCode())) * 31;
        boolean z10 = this.isSelected;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return hashCode + i9;
    }

    public final boolean isSelected() {
        return this.isSelected;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomMemberListItemModel(itemType=" + getItemType() + ", model=" + this.model + ", isSelected=" + this.isSelected + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.itemType);
        VoiceRoomMemberModel voiceRoomMemberModel = this.model;
        if (voiceRoomMemberModel == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            voiceRoomMemberModel.writeToParcel(out, i9);
        }
        out.writeInt(this.isSelected ? 1 : 0);
    }

    public /* synthetic */ VoiceRoomMemberListItemModel(int i9, VoiceRoomMemberModel voiceRoomMemberModel, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, voiceRoomMemberModel, (i10 & 4) != 0 ? false : z10);
    }
}
