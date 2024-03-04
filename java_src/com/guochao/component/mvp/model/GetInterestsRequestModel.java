package com.guochao.component.mvp.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/guochao/component/mvp/model/GetInterestsRequestModel;", "Landroid/os/Parcelable;", "type", "", "mvpLevel", "anchorId", "", "stime", "(IILjava/lang/String;Ljava/lang/String;)V", "getAnchorId", "()Ljava/lang/String;", "setAnchorId", "(Ljava/lang/String;)V", "getMvpLevel", "()I", "setMvpLevel", "(I)V", "getStime", "setStime", "getType", "setType", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GetInterestsRequestModel implements Parcelable {
    public static final int TYPE_CAR = 1;
    public static final int TYPE_CHAT_SHADING = 3;
    public static final int TYPE_DIAMOND = 0;
    public static final int TYPE_FREE_TIME = 6;
    public static final int TYPE_HEAD_PICTURE_FRAME = 2;
    public static final int TYPE_LIVE_SPECIAL_BULLET_SCREEN = 5;
    public static final int TYPE_MEDAL = 4;
    public static final int TYPE_MVP_SPECIAL_GIFT = 8;
    public static final int TYPE_SET_TO_TOP = 7;
    @NotNull
    private String anchorId;
    private int mvpLevel;
    @Nullable
    private String stime;
    private int type;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<GetInterestsRequestModel> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Companion;", "", "()V", "TYPE_CAR", "", "TYPE_CHAT_SHADING", "TYPE_DIAMOND", "TYPE_FREE_TIME", "TYPE_HEAD_PICTURE_FRAME", "TYPE_LIVE_SPECIAL_BULLET_SCREEN", "TYPE_MEDAL", "TYPE_MVP_SPECIAL_GIFT", "TYPE_SET_TO_TOP", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GetInterestsRequestModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GetInterestsRequestModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new GetInterestsRequestModel(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GetInterestsRequestModel[] newArray(int i9) {
            return new GetInterestsRequestModel[i9];
        }
    }

    public GetInterestsRequestModel(int i9, int i10, @NotNull String anchorId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        this.type = i9;
        this.mvpLevel = i10;
        this.anchorId = anchorId;
        this.stime = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NotNull
    public final String getAnchorId() {
        return this.anchorId;
    }

    public final int getMvpLevel() {
        return this.mvpLevel;
    }

    @Nullable
    public final String getStime() {
        return this.stime;
    }

    public final int getType() {
        return this.type;
    }

    public final void setAnchorId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.anchorId = str;
    }

    public final void setMvpLevel(int i9) {
        this.mvpLevel = i9;
    }

    public final void setStime(@Nullable String str) {
        this.stime = str;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.type);
        out.writeInt(this.mvpLevel);
        out.writeString(this.anchorId);
        out.writeString(this.stime);
    }

    public /* synthetic */ GetInterestsRequestModel(int i9, int i10, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, str, (i11 & 8) != 0 ? null : str2);
    }
}
