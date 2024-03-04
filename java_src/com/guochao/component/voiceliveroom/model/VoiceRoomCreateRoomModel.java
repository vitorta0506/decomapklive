package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J;\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010\u0015\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0007HÖ\u0001R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006!"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;", "Landroid/os/Parcelable;", "title", "", "coverImgUrl", "tagIds", "", "", "backImgUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getBackImgUrl", "()Ljava/lang/String;", "getCoverImgUrl", "getTagIds", "()Ljava/util/List;", "getTitle", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomCreateRoomModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomCreateRoomModel> CREATOR = new Creator();
    @Nullable
    private final String backImgUrl;
    @NotNull
    private final String coverImgUrl;
    @Nullable
    private final List<Integer> tagIds;
    @NotNull
    private final String title;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomCreateRoomModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomCreateRoomModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                for (int i9 = 0; i9 != readInt; i9++) {
                    arrayList2.add(Integer.valueOf(parcel.readInt()));
                }
                arrayList = arrayList2;
            }
            return new VoiceRoomCreateRoomModel(readString, readString2, arrayList, parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomCreateRoomModel[] newArray(int i9) {
            return new VoiceRoomCreateRoomModel[i9];
        }
    }

    public VoiceRoomCreateRoomModel(@NotNull String title, @NotNull String coverImgUrl, @Nullable List<Integer> list, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(coverImgUrl, "coverImgUrl");
        this.title = title;
        this.coverImgUrl = coverImgUrl;
        this.tagIds = list;
        this.backImgUrl = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VoiceRoomCreateRoomModel copy$default(VoiceRoomCreateRoomModel voiceRoomCreateRoomModel, String str, String str2, List list, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = voiceRoomCreateRoomModel.title;
        }
        if ((i9 & 2) != 0) {
            str2 = voiceRoomCreateRoomModel.coverImgUrl;
        }
        if ((i9 & 4) != 0) {
            list = voiceRoomCreateRoomModel.tagIds;
        }
        if ((i9 & 8) != 0) {
            str3 = voiceRoomCreateRoomModel.backImgUrl;
        }
        return voiceRoomCreateRoomModel.copy(str, str2, list, str3);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.coverImgUrl;
    }

    @Nullable
    public final List<Integer> component3() {
        return this.tagIds;
    }

    @Nullable
    public final String component4() {
        return this.backImgUrl;
    }

    @NotNull
    public final VoiceRoomCreateRoomModel copy(@NotNull String title, @NotNull String coverImgUrl, @Nullable List<Integer> list, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(coverImgUrl, "coverImgUrl");
        return new VoiceRoomCreateRoomModel(title, coverImgUrl, list, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomCreateRoomModel) {
            VoiceRoomCreateRoomModel voiceRoomCreateRoomModel = (VoiceRoomCreateRoomModel) obj;
            return Intrinsics.areEqual(this.title, voiceRoomCreateRoomModel.title) && Intrinsics.areEqual(this.coverImgUrl, voiceRoomCreateRoomModel.coverImgUrl) && Intrinsics.areEqual(this.tagIds, voiceRoomCreateRoomModel.tagIds) && Intrinsics.areEqual(this.backImgUrl, voiceRoomCreateRoomModel.backImgUrl);
        }
        return false;
    }

    @Nullable
    public final String getBackImgUrl() {
        return this.backImgUrl;
    }

    @NotNull
    public final String getCoverImgUrl() {
        return this.coverImgUrl;
    }

    @Nullable
    public final List<Integer> getTagIds() {
        return this.tagIds;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((this.title.hashCode() * 31) + this.coverImgUrl.hashCode()) * 31;
        List<Integer> list = this.tagIds;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.backImgUrl;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "VoiceRoomCreateRoomModel(title=" + this.title + ", coverImgUrl=" + this.coverImgUrl + ", tagIds=" + this.tagIds + ", backImgUrl=" + this.backImgUrl + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.title);
        out.writeString(this.coverImgUrl);
        List<Integer> list = this.tagIds;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (Integer num : list) {
                out.writeInt(num.intValue());
            }
        }
        out.writeString(this.backImgUrl);
    }

    public /* synthetic */ VoiceRoomCreateRoomModel(String str, String str2, List list, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i9 & 4) != 0 ? null : list, (i9 & 8) != 0 ? null : str3);
    }
}
