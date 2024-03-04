package com.guochao.faceshow.component.f2fmatch.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import b7.b;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.integrity.IntegrityManager;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.utils.Contants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0005\b\t\n\u000b\f¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "F2fHeartBeatModel", "F2fMatchRoomAgreeModel", "F2fMatchRoomInfo", "F2fStartMatchResultModel", "F2fTrtcSignatureModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public abstract class F2fMatchModel extends BaseModel {

    @Parcelize
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\bHÆ\u0003J+\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\t\u0010\u0014\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0004HÖ\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006 "}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "Landroid/os/Parcelable;", "status", "", "roomId", "", "matchUserInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "(ILjava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V", "getMatchUserInfo", "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "getRoomId", "()Ljava/lang/String;", "getStatus", "()I", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class F2fHeartBeatModel extends F2fMatchModel implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<F2fHeartBeatModel> CREATOR = new Creator();
        @Nullable
        private final F2fMatchRoomInfo matchUserInfo;
        @Nullable
        private final String roomId;
        private final int status;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class Creator implements Parcelable.Creator<F2fHeartBeatModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final F2fHeartBeatModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new F2fHeartBeatModel(parcel.readInt(), parcel.readString(), parcel.readInt() == 0 ? null : F2fMatchRoomInfo.CREATOR.createFromParcel(parcel));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final F2fHeartBeatModel[] newArray(int i9) {
                return new F2fHeartBeatModel[i9];
            }
        }

        public F2fHeartBeatModel(int i9, @Nullable String str, @Nullable F2fMatchRoomInfo f2fMatchRoomInfo) {
            super(null);
            this.status = i9;
            this.roomId = str;
            this.matchUserInfo = f2fMatchRoomInfo;
        }

        public static /* synthetic */ F2fHeartBeatModel copy$default(F2fHeartBeatModel f2fHeartBeatModel, int i9, String str, F2fMatchRoomInfo f2fMatchRoomInfo, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = f2fHeartBeatModel.status;
            }
            if ((i10 & 2) != 0) {
                str = f2fHeartBeatModel.roomId;
            }
            if ((i10 & 4) != 0) {
                f2fMatchRoomInfo = f2fHeartBeatModel.matchUserInfo;
            }
            return f2fHeartBeatModel.copy(i9, str, f2fMatchRoomInfo);
        }

        public final int component1() {
            return this.status;
        }

        @Nullable
        public final String component2() {
            return this.roomId;
        }

        @Nullable
        public final F2fMatchRoomInfo component3() {
            return this.matchUserInfo;
        }

        @NotNull
        public final F2fHeartBeatModel copy(int i9, @Nullable String str, @Nullable F2fMatchRoomInfo f2fMatchRoomInfo) {
            return new F2fHeartBeatModel(i9, str, f2fMatchRoomInfo);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof F2fHeartBeatModel) {
                F2fHeartBeatModel f2fHeartBeatModel = (F2fHeartBeatModel) obj;
                return this.status == f2fHeartBeatModel.status && Intrinsics.areEqual(this.roomId, f2fHeartBeatModel.roomId) && Intrinsics.areEqual(this.matchUserInfo, f2fHeartBeatModel.matchUserInfo);
            }
            return false;
        }

        @Nullable
        public final F2fMatchRoomInfo getMatchUserInfo() {
            return this.matchUserInfo;
        }

        @Nullable
        public final String getRoomId() {
            return this.roomId;
        }

        public final int getStatus() {
            return this.status;
        }

        public int hashCode() {
            int i9 = this.status * 31;
            String str = this.roomId;
            int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
            F2fMatchRoomInfo f2fMatchRoomInfo = this.matchUserInfo;
            return hashCode + (f2fMatchRoomInfo != null ? f2fMatchRoomInfo.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "F2fHeartBeatModel(status=" + this.status + ", roomId=" + this.roomId + ", matchUserInfo=" + this.matchUserInfo + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeInt(this.status);
            out.writeString(this.roomId);
            F2fMatchRoomInfo f2fMatchRoomInfo = this.matchUserInfo;
            if (f2fMatchRoomInfo == null) {
                out.writeInt(0);
                return;
            }
            out.writeInt(1);
            f2fMatchRoomInfo.writeToParcel(out, i9);
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u000bHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "Landroid/os/Parcelable;", "f2fMatchRoomInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V", "getF2fMatchRoomInfo", "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "component1", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class F2fMatchRoomAgreeModel extends F2fMatchModel implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<F2fMatchRoomAgreeModel> CREATOR = new Creator();
        @NotNull
        private final F2fMatchRoomInfo f2fMatchRoomInfo;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class Creator implements Parcelable.Creator<F2fMatchRoomAgreeModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final F2fMatchRoomAgreeModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new F2fMatchRoomAgreeModel(F2fMatchRoomInfo.CREATOR.createFromParcel(parcel));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final F2fMatchRoomAgreeModel[] newArray(int i9) {
                return new F2fMatchRoomAgreeModel[i9];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public F2fMatchRoomAgreeModel(@NotNull F2fMatchRoomInfo f2fMatchRoomInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(f2fMatchRoomInfo, "f2fMatchRoomInfo");
            this.f2fMatchRoomInfo = f2fMatchRoomInfo;
        }

        public static /* synthetic */ F2fMatchRoomAgreeModel copy$default(F2fMatchRoomAgreeModel f2fMatchRoomAgreeModel, F2fMatchRoomInfo f2fMatchRoomInfo, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                f2fMatchRoomInfo = f2fMatchRoomAgreeModel.f2fMatchRoomInfo;
            }
            return f2fMatchRoomAgreeModel.copy(f2fMatchRoomInfo);
        }

        @NotNull
        public final F2fMatchRoomInfo component1() {
            return this.f2fMatchRoomInfo;
        }

        @NotNull
        public final F2fMatchRoomAgreeModel copy(@NotNull F2fMatchRoomInfo f2fMatchRoomInfo) {
            Intrinsics.checkNotNullParameter(f2fMatchRoomInfo, "f2fMatchRoomInfo");
            return new F2fMatchRoomAgreeModel(f2fMatchRoomInfo);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof F2fMatchRoomAgreeModel) && Intrinsics.areEqual(this.f2fMatchRoomInfo, ((F2fMatchRoomAgreeModel) obj).f2fMatchRoomInfo);
        }

        @NotNull
        public final F2fMatchRoomInfo getF2fMatchRoomInfo() {
            return this.f2fMatchRoomInfo;
        }

        public int hashCode() {
            return this.f2fMatchRoomInfo.hashCode();
        }

        @NotNull
        public String toString() {
            return "F2fMatchRoomAgreeModel(f2fMatchRoomInfo=" + this.f2fMatchRoomInfo + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            this.f2fMatchRoomInfo.writeToParcel(out, i9);
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b6\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B¥\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0016J\b\u0010-\u001a\u00020\u0005H\u0002J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010/\u001a\u00020\nHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00103\u001a\u00020\nHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00109\u001a\u00020\nHÆ\u0003J\t\u0010:\u001a\u00020\nHÆ\u0003J\t\u0010;\u001a\u00020\nHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005HÆ\u0003J¿\u0001\u0010>\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000f\u001a\u00020\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0013\u001a\u00020\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010?\u001a\u00020\nHÖ\u0001J\u0013\u0010@\u001a\u00020A2\b\u0010B\u001a\u0004\u0018\u00010CHÖ\u0003J\u0006\u0010D\u001a\u00020\u0005J\t\u0010E\u001a\u00020\nHÖ\u0001J\t\u0010F\u001a\u00020\u0005HÖ\u0001J\u0019\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\nHÖ\u0001R\u0014\u0010\f\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0013\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0018\"\u0004\b\u001a\u0010\u001bR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001dR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001dR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001dR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001dR\u0016\u0010\t\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001dR\u0016\u0010\u000b\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0018R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001d\"\u0004\b'\u0010(R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001dR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001dR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001dR\u0016\u0010\u000f\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0018¨\u0006L"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "Landroid/os/Parcelable;", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", Contants.USER_ID, "", "nickName", "city", UserDataStore.COUNTRY, "gender", "", "level", "age", "avatarUrl", "smallAvatarUrl", "vipLevel", "dist", "language", "countryLogo", "attentionStatus", "dressHead", "mvpUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getAge", "()I", "getAttentionStatus", "setAttentionStatus", "(I)V", "getAvatarUrl", "()Ljava/lang/String;", "getCity", "getCountry", "getCountryLogo", "getDist", "getDressHead", "getGender", "getLanguage", "getLevel", "getMvpUrl", "setMvpUrl", "(Ljava/lang/String;)V", "getNickName", "getSmallAvatarUrl", "getUserId", "getVipLevel", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "getAddressStr", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class F2fMatchRoomInfo extends F2fMatchModel implements Parcelable, GCUser {
        @NotNull
        public static final Parcelable.Creator<F2fMatchRoomInfo> CREATOR = new Creator();
        private final int age;
        private int attentionStatus;
        @SerializedName("img")
        @Nullable
        private final String avatarUrl;
        @Nullable
        private final String city;
        @Nullable
        private final String country;
        @Nullable
        private final String countryLogo;
        @Nullable
        private final String dist;
        @SerializedName("headImgUrl")
        @Nullable
        private final String dressHead;
        @SerializedName("sex")
        private final int gender;
        @Nullable
        private final String language;
        @SerializedName(Contants.USER_levelId)
        private final int level;
        @Nullable
        private String mvpUrl;
        @Nullable
        private final String nickName;
        @SerializedName("smallImg")
        @Nullable
        private final String smallAvatarUrl;
        @Nullable
        private final String userId;
        @SerializedName("vip")
        private final int vipLevel;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class Creator implements Parcelable.Creator<F2fMatchRoomInfo> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final F2fMatchRoomInfo createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new F2fMatchRoomInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final F2fMatchRoomInfo[] newArray(int i9) {
                return new F2fMatchRoomInfo[i9];
            }
        }

        public /* synthetic */ F2fMatchRoomInfo(String str, String str2, String str3, String str4, int i9, int i10, int i11, String str5, String str6, int i12, String str7, String str8, String str9, int i13, String str10, String str11, int i14, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, str4, (i14 & 16) != 0 ? 0 : i9, (i14 & 32) != 0 ? 1 : i10, (i14 & 64) != 0 ? 1 : i11, str5, str6, (i14 & 512) != 0 ? 2 : i12, str7, str8, str9, i13, str10, (i14 & 32768) != 0 ? null : str11);
        }

        private final String address() {
            String str;
            if (!TextUtils.isEmpty(this.city) && !TextUtils.isEmpty(this.country)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("%s , %s", Arrays.copyOf(new Object[]{this.city, this.country}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                return format;
            } else if (TextUtils.isEmpty(this.city)) {
                return (TextUtils.isEmpty(this.country) || (str = this.country) == null) ? "" : str;
            } else {
                String str2 = this.city;
                return str2 == null ? "" : str2;
            }
        }

        @Nullable
        public final String component1() {
            return getUserId();
        }

        public final int component10() {
            return getVipLevel();
        }

        @Nullable
        public final String component11() {
            return this.dist;
        }

        @Nullable
        public final String component12() {
            return this.language;
        }

        @Nullable
        public final String component13() {
            return getCountryLogo();
        }

        public final int component14() {
            return this.attentionStatus;
        }

        @Nullable
        public final String component15() {
            return getDressHead();
        }

        @Nullable
        public final String component16() {
            return getMvpUrl();
        }

        @Nullable
        public final String component2() {
            return getNickName();
        }

        @Nullable
        public final String component3() {
            return this.city;
        }

        @Nullable
        public final String component4() {
            return this.country;
        }

        public final int component5() {
            return getGender();
        }

        public final int component6() {
            return getLevel();
        }

        public final int component7() {
            return getAge();
        }

        @Nullable
        public final String component8() {
            return getAvatarUrl();
        }

        @Nullable
        public final String component9() {
            return getSmallAvatarUrl();
        }

        @NotNull
        public final F2fMatchRoomInfo copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i9, int i10, int i11, @Nullable String str5, @Nullable String str6, int i12, @Nullable String str7, @Nullable String str8, @Nullable String str9, int i13, @Nullable String str10, @Nullable String str11) {
            return new F2fMatchRoomInfo(str, str2, str3, str4, i9, i10, i11, str5, str6, i12, str7, str8, str9, i13, str10, str11);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof F2fMatchRoomInfo) {
                F2fMatchRoomInfo f2fMatchRoomInfo = (F2fMatchRoomInfo) obj;
                return Intrinsics.areEqual(getUserId(), f2fMatchRoomInfo.getUserId()) && Intrinsics.areEqual(getNickName(), f2fMatchRoomInfo.getNickName()) && Intrinsics.areEqual(this.city, f2fMatchRoomInfo.city) && Intrinsics.areEqual(this.country, f2fMatchRoomInfo.country) && getGender() == f2fMatchRoomInfo.getGender() && getLevel() == f2fMatchRoomInfo.getLevel() && getAge() == f2fMatchRoomInfo.getAge() && Intrinsics.areEqual(getAvatarUrl(), f2fMatchRoomInfo.getAvatarUrl()) && Intrinsics.areEqual(getSmallAvatarUrl(), f2fMatchRoomInfo.getSmallAvatarUrl()) && getVipLevel() == f2fMatchRoomInfo.getVipLevel() && Intrinsics.areEqual(this.dist, f2fMatchRoomInfo.dist) && Intrinsics.areEqual(this.language, f2fMatchRoomInfo.language) && Intrinsics.areEqual(getCountryLogo(), f2fMatchRoomInfo.getCountryLogo()) && this.attentionStatus == f2fMatchRoomInfo.attentionStatus && Intrinsics.areEqual(getDressHead(), f2fMatchRoomInfo.getDressHead()) && Intrinsics.areEqual(getMvpUrl(), f2fMatchRoomInfo.getMvpUrl());
            }
            return false;
        }

        @NotNull
        public final String getAddressStr() {
            if (TextUtils.isEmpty(this.dist) && TextUtils.isEmpty(this.city) && TextUtils.isEmpty(this.country)) {
                return "";
            }
            if (TextUtils.isEmpty(this.dist)) {
                return address();
            }
            String address = address();
            if (!TextUtils.isEmpty(address)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("%s (%s)", Arrays.copyOf(new Object[]{address, this.dist}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                return format;
            }
            String str = this.dist;
            return str == null ? "" : str;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        public int getAge() {
            return this.age;
        }

        public final int getAttentionStatus() {
            return this.attentionStatus;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        @Nullable
        public String getAvatarUrl() {
            return this.avatarUrl;
        }

        @Nullable
        public final String getCity() {
            return this.city;
        }

        @Nullable
        public final String getCountry() {
            return this.country;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        @Nullable
        public String getCountryLogo() {
            return this.countryLogo;
        }

        @Nullable
        public final String getDist() {
            return this.dist;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        @Nullable
        public String getDressHead() {
            return this.dressHead;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        public int getGender() {
            return this.gender;
        }

        @Nullable
        public final String getLanguage() {
            return this.language;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUser
        public int getLevel() {
            return this.level;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        @Nullable
        public String getMvpUrl() {
            return this.mvpUrl;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        @Nullable
        public String getNickName() {
            return this.nickName;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        @Nullable
        public String getSmallAvatarUrl() {
            return this.smallAvatarUrl;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        @Nullable
        public String getUserId() {
            return this.userId;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserVipInfo
        public int getVipLevel() {
            return this.vipLevel;
        }

        public int hashCode() {
            int hashCode = (((getUserId() == null ? 0 : getUserId().hashCode()) * 31) + (getNickName() == null ? 0 : getNickName().hashCode())) * 31;
            String str = this.city;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.country;
            int hashCode3 = (((((((((((((hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + getGender()) * 31) + getLevel()) * 31) + getAge()) * 31) + (getAvatarUrl() == null ? 0 : getAvatarUrl().hashCode())) * 31) + (getSmallAvatarUrl() == null ? 0 : getSmallAvatarUrl().hashCode())) * 31) + getVipLevel()) * 31;
            String str3 = this.dist;
            int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.language;
            return ((((((((hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + (getCountryLogo() == null ? 0 : getCountryLogo().hashCode())) * 31) + this.attentionStatus) * 31) + (getDressHead() == null ? 0 : getDressHead().hashCode())) * 31) + (getMvpUrl() != null ? getMvpUrl().hashCode() : 0);
        }

        public final void setAttentionStatus(int i9) {
            this.attentionStatus = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
        public void setMvpUrl(@Nullable String str) {
            this.mvpUrl = str;
        }

        @NotNull
        public String toString() {
            return "F2fMatchRoomInfo(userId=" + getUserId() + ", nickName=" + getNickName() + ", city=" + this.city + ", country=" + this.country + ", gender=" + getGender() + ", level=" + getLevel() + ", age=" + getAge() + ", avatarUrl=" + getAvatarUrl() + ", smallAvatarUrl=" + getSmallAvatarUrl() + ", vipLevel=" + getVipLevel() + ", dist=" + this.dist + ", language=" + this.language + ", countryLogo=" + getCountryLogo() + ", attentionStatus=" + this.attentionStatus + ", dressHead=" + getDressHead() + ", mvpUrl=" + getMvpUrl() + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeString(this.userId);
            out.writeString(this.nickName);
            out.writeString(this.city);
            out.writeString(this.country);
            out.writeInt(this.gender);
            out.writeInt(this.level);
            out.writeInt(this.age);
            out.writeString(this.avatarUrl);
            out.writeString(this.smallAvatarUrl);
            out.writeInt(this.vipLevel);
            out.writeString(this.dist);
            out.writeString(this.language);
            out.writeString(this.countryLogo);
            out.writeInt(this.attentionStatus);
            out.writeString(this.dressHead);
            out.writeString(this.mvpUrl);
        }

        public F2fMatchRoomInfo(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i9, int i10, int i11, @Nullable String str5, @Nullable String str6, int i12, @Nullable String str7, @Nullable String str8, @Nullable String str9, int i13, @Nullable String str10, @Nullable String str11) {
            super(null);
            this.userId = str;
            this.nickName = str2;
            this.city = str3;
            this.country = str4;
            this.gender = i9;
            this.level = i10;
            this.age = i11;
            this.avatarUrl = str5;
            this.smallAvatarUrl = str6;
            this.vipLevel = i12;
            this.dist = str7;
            this.language = str8;
            this.countryLogo = str9;
            this.attentionStatus = i13;
            this.dressHead = str10;
            this.mvpUrl = str11;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "requestId", "", "(Ljava/lang/String;)V", "getRequestId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class F2fStartMatchResultModel extends F2fMatchModel {
        @NotNull
        private final String requestId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public F2fStartMatchResultModel(@NotNull String requestId) {
            super(null);
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            this.requestId = requestId;
        }

        public static /* synthetic */ F2fStartMatchResultModel copy$default(F2fStartMatchResultModel f2fStartMatchResultModel, String str, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                str = f2fStartMatchResultModel.requestId;
            }
            return f2fStartMatchResultModel.copy(str);
        }

        @NotNull
        public final String component1() {
            return this.requestId;
        }

        @NotNull
        public final F2fStartMatchResultModel copy(@NotNull String requestId) {
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            return new F2fStartMatchResultModel(requestId);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof F2fStartMatchResultModel) && Intrinsics.areEqual(this.requestId, ((F2fStartMatchResultModel) obj).requestId);
        }

        @NotNull
        public final String getRequestId() {
            return this.requestId;
        }

        public int hashCode() {
            return this.requestId.hashCode();
        }

        @NotNull
        public String toString() {
            return "F2fStartMatchResultModel(requestId=" + this.requestId + ')';
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "appId", "", "signature", "", "signatureExpireSeconds", "", "(ILjava/lang/String;J)V", "getAppId", "()I", "getSignature", "()Ljava/lang/String;", "getSignatureExpireSeconds", "()J", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class F2fTrtcSignatureModel extends F2fMatchModel {
        private final int appId;
        @NotNull
        private final String signature;
        private final long signatureExpireSeconds;

        public /* synthetic */ F2fTrtcSignatureModel(int i9, String str, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 0 : i9, str, j10);
        }

        public static /* synthetic */ F2fTrtcSignatureModel copy$default(F2fTrtcSignatureModel f2fTrtcSignatureModel, int i9, String str, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = f2fTrtcSignatureModel.appId;
            }
            if ((i10 & 2) != 0) {
                str = f2fTrtcSignatureModel.signature;
            }
            if ((i10 & 4) != 0) {
                j10 = f2fTrtcSignatureModel.signatureExpireSeconds;
            }
            return f2fTrtcSignatureModel.copy(i9, str, j10);
        }

        public final int component1() {
            return this.appId;
        }

        @NotNull
        public final String component2() {
            return this.signature;
        }

        public final long component3() {
            return this.signatureExpireSeconds;
        }

        @NotNull
        public final F2fTrtcSignatureModel copy(int i9, @NotNull String signature, long j10) {
            Intrinsics.checkNotNullParameter(signature, "signature");
            return new F2fTrtcSignatureModel(i9, signature, j10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof F2fTrtcSignatureModel) {
                F2fTrtcSignatureModel f2fTrtcSignatureModel = (F2fTrtcSignatureModel) obj;
                return this.appId == f2fTrtcSignatureModel.appId && Intrinsics.areEqual(this.signature, f2fTrtcSignatureModel.signature) && this.signatureExpireSeconds == f2fTrtcSignatureModel.signatureExpireSeconds;
            }
            return false;
        }

        public final int getAppId() {
            return this.appId;
        }

        @NotNull
        public final String getSignature() {
            return this.signature;
        }

        public final long getSignatureExpireSeconds() {
            return this.signatureExpireSeconds;
        }

        public int hashCode() {
            return (((this.appId * 31) + this.signature.hashCode()) * 31) + b.a(this.signatureExpireSeconds);
        }

        @NotNull
        public String toString() {
            return "F2fTrtcSignatureModel(appId=" + this.appId + ", signature=" + this.signature + ", signatureExpireSeconds=" + this.signatureExpireSeconds + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public F2fTrtcSignatureModel(int i9, @NotNull String signature, long j10) {
            super(null);
            Intrinsics.checkNotNullParameter(signature, "signature");
            this.appId = i9;
            this.signature = signature;
            this.signatureExpireSeconds = j10;
        }
    }

    private F2fMatchModel() {
    }

    public /* synthetic */ F2fMatchModel(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
