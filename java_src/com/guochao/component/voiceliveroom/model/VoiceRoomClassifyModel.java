package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;", "Landroid/os/Parcelable;", "id", "", "name", "", "(ILjava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "selected", "", "getSelected", "()Z", "setSelected", "(Z)V", "component1", "component2", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomClassifyModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomClassifyModel> CREATOR = new Creator();

    /* renamed from: id  reason: collision with root package name */
    private int f15983id;
    @Nullable
    private String name;
    private boolean selected;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomClassifyModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomClassifyModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomClassifyModel(parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomClassifyModel[] newArray(int i9) {
            return new VoiceRoomClassifyModel[i9];
        }
    }

    public VoiceRoomClassifyModel(int i9, @Nullable String str) {
        this.f15983id = i9;
        this.name = str;
    }

    public static /* synthetic */ VoiceRoomClassifyModel copy$default(VoiceRoomClassifyModel voiceRoomClassifyModel, int i9, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = voiceRoomClassifyModel.f15983id;
        }
        if ((i10 & 2) != 0) {
            str = voiceRoomClassifyModel.name;
        }
        return voiceRoomClassifyModel.copy(i9, str);
    }

    public final int component1() {
        return this.f15983id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final VoiceRoomClassifyModel copy(int i9, @Nullable String str) {
        return new VoiceRoomClassifyModel(i9, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomClassifyModel) {
            VoiceRoomClassifyModel voiceRoomClassifyModel = (VoiceRoomClassifyModel) obj;
            return this.f15983id == voiceRoomClassifyModel.f15983id && Intrinsics.areEqual(this.name, voiceRoomClassifyModel.name);
        }
        return false;
    }

    public final int getId() {
        return this.f15983id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public int hashCode() {
        int i9 = this.f15983id * 31;
        String str = this.name;
        return i9 + (str == null ? 0 : str.hashCode());
    }

    public final void setId(int i9) {
        this.f15983id = i9;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setSelected(boolean z10) {
        this.selected = z10;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomClassifyModel(id=" + this.f15983id + ", name=" + this.name + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.f15983id);
        out.writeString(this.name);
    }
}
