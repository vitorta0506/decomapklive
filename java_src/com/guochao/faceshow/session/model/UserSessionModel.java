package com.guochao.faceshow.session.model;

import android.os.Parcel;
import android.os.Parcelable;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010$\u001a\u00020\u0004HÆ\u0003J\u0013\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\t\u0010&\u001a\u00020\u0007HÖ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0007HÖ\u0001J\t\u0010,\u001a\u00020\u0004HÖ\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0005R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0005R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000e\"\u0004\b\u0015\u0010\u0005R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0005R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000e\"\u0004\b\u001b\u0010\u0005R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0005R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000e\"\u0004\b \u0010\u0005R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000e\"\u0004\b#\u0010\u0005¨\u00062"}, d2 = {"Lcom/guochao/faceshow/session/model/UserSessionModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Landroid/os/Parcelable;", Contants.USER_ID, "", "(Ljava/lang/String;)V", "gender", "", "getGender", "()I", "setGender", "(I)V", "imUserSig", "getImUserSig", "()Ljava/lang/String;", "setImUserSig", "nickName", "getNickName", "setNickName", "phoneNumber", "getPhoneNumber", "setPhoneNumber", "signature", "getSignature", "setSignature", JThirdPlatFormInterface.KEY_TOKEN, "getToken", "setToken", "userAvatar", "getUserAvatar", "setUserAvatar", "getUserId", "setUserId", "userSmallAvatar", "getUserSmallAvatar", "setUserSmallAvatar", "component1", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_user_session_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserSessionModel extends BaseModel implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<UserSessionModel> CREATOR = new Creator();
    private int gender;
    @NotNull
    private String imUserSig;
    @Nullable
    private String nickName;
    @Nullable
    private String phoneNumber;
    @Nullable
    private String signature;
    @Nullable
    private String token;
    @Nullable
    private String userAvatar;
    @NotNull
    private String userId;
    @Nullable
    private String userSmallAvatar;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Creator implements Parcelable.Creator<UserSessionModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final UserSessionModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new UserSessionModel(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final UserSessionModel[] newArray(int i9) {
            return new UserSessionModel[i9];
        }
    }

    public UserSessionModel(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.token = "";
        this.nickName = "";
        this.userAvatar = "";
        this.userSmallAvatar = "";
        this.signature = "";
        this.imUserSig = "";
        this.phoneNumber = "";
    }

    public static /* synthetic */ UserSessionModel copy$default(UserSessionModel userSessionModel, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = userSessionModel.userId;
        }
        return userSessionModel.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.userId;
    }

    @NotNull
    public final UserSessionModel copy(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new UserSessionModel(userId);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UserSessionModel) && Intrinsics.areEqual(this.userId, ((UserSessionModel) obj).userId);
    }

    public final int getGender() {
        return this.gender;
    }

    @NotNull
    public final String getImUserSig() {
        return this.imUserSig;
    }

    @Nullable
    public final String getNickName() {
        return this.nickName;
    }

    @Nullable
    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    @Nullable
    public final String getSignature() {
        return this.signature;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    @Nullable
    public final String getUserAvatar() {
        return this.userAvatar;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @Nullable
    public final String getUserSmallAvatar() {
        return this.userSmallAvatar;
    }

    public int hashCode() {
        return this.userId.hashCode();
    }

    public final void setGender(int i9) {
        this.gender = i9;
    }

    public final void setImUserSig(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imUserSig = str;
    }

    public final void setNickName(@Nullable String str) {
        this.nickName = str;
    }

    public final void setPhoneNumber(@Nullable String str) {
        this.phoneNumber = str;
    }

    public final void setSignature(@Nullable String str) {
        this.signature = str;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public final void setUserAvatar(@Nullable String str) {
        this.userAvatar = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    public final void setUserSmallAvatar(@Nullable String str) {
        this.userSmallAvatar = str;
    }

    @NotNull
    public String toString() {
        return "UserSessionModel(userId=" + this.userId + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.userId);
    }
}
