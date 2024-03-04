package com.guochao.component.voiceliveroom.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006!"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;", "Landroid/os/Parcelable;", "id", "", "url", "Landroid/net/Uri;", "selected", "free", "(ILandroid/net/Uri;II)V", "getFree", "()I", "getId", "getSelected", "getUrl", "()Landroid/net/Uri;", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomBackgroundModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomBackgroundModel> CREATOR = new Creator();
    private final int free;

    /* renamed from: id  reason: collision with root package name */
    private final int f15981id;
    private final int selected;
    @Nullable
    private final Uri url;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomBackgroundModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomBackgroundModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomBackgroundModel(parcel.readInt(), (Uri) parcel.readParcelable(VoiceRoomBackgroundModel.class.getClassLoader()), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomBackgroundModel[] newArray(int i9) {
            return new VoiceRoomBackgroundModel[i9];
        }
    }

    public VoiceRoomBackgroundModel(int i9, @Nullable Uri uri, int i10, int i11) {
        this.f15981id = i9;
        this.url = uri;
        this.selected = i10;
        this.free = i11;
    }

    public static /* synthetic */ VoiceRoomBackgroundModel copy$default(VoiceRoomBackgroundModel voiceRoomBackgroundModel, int i9, Uri uri, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i9 = voiceRoomBackgroundModel.f15981id;
        }
        if ((i12 & 2) != 0) {
            uri = voiceRoomBackgroundModel.url;
        }
        if ((i12 & 4) != 0) {
            i10 = voiceRoomBackgroundModel.selected;
        }
        if ((i12 & 8) != 0) {
            i11 = voiceRoomBackgroundModel.free;
        }
        return voiceRoomBackgroundModel.copy(i9, uri, i10, i11);
    }

    public final int component1() {
        return this.f15981id;
    }

    @Nullable
    public final Uri component2() {
        return this.url;
    }

    public final int component3() {
        return this.selected;
    }

    public final int component4() {
        return this.free;
    }

    @NotNull
    public final VoiceRoomBackgroundModel copy(int i9, @Nullable Uri uri, int i10, int i11) {
        return new VoiceRoomBackgroundModel(i9, uri, i10, i11);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomBackgroundModel) {
            VoiceRoomBackgroundModel voiceRoomBackgroundModel = (VoiceRoomBackgroundModel) obj;
            return this.f15981id == voiceRoomBackgroundModel.f15981id && Intrinsics.areEqual(this.url, voiceRoomBackgroundModel.url) && this.selected == voiceRoomBackgroundModel.selected && this.free == voiceRoomBackgroundModel.free;
        }
        return false;
    }

    public final int getFree() {
        return this.free;
    }

    public final int getId() {
        return this.f15981id;
    }

    public final int getSelected() {
        return this.selected;
    }

    @Nullable
    public final Uri getUrl() {
        return this.url;
    }

    public int hashCode() {
        int i9 = this.f15981id * 31;
        Uri uri = this.url;
        return ((((i9 + (uri == null ? 0 : uri.hashCode())) * 31) + this.selected) * 31) + this.free;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomBackgroundModel(id=" + this.f15981id + ", url=" + this.url + ", selected=" + this.selected + ", free=" + this.free + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.f15981id);
        out.writeParcelable(this.url, i9);
        out.writeInt(this.selected);
        out.writeInt(this.free);
    }

    public /* synthetic */ VoiceRoomBackgroundModel(int i9, Uri uri, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, uri, i10, (i12 & 8) != 0 ? 1 : i11);
    }
}
