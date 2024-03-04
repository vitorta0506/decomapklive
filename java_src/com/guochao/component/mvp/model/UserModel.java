package com.guochao.component.mvp.model;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/guochao/component/mvp/model/UserModel;", "", "liveId", "", "nickName", "url", Contants.USER_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLiveId", "()Ljava/lang/String;", "getNickName", "getUrl", "getUserId", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserModel {
    @Nullable
    private final String liveId;
    @Nullable
    private final String nickName;
    @SerializedName("img")
    @Nullable
    private final String url;
    @Nullable
    private final String userId;

    public UserModel(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        this.liveId = str;
        this.nickName = str2;
        this.url = str3;
        this.userId = str4;
    }

    public static /* synthetic */ UserModel copy$default(UserModel userModel, String str, String str2, String str3, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = userModel.liveId;
        }
        if ((i9 & 2) != 0) {
            str2 = userModel.nickName;
        }
        if ((i9 & 4) != 0) {
            str3 = userModel.url;
        }
        if ((i9 & 8) != 0) {
            str4 = userModel.userId;
        }
        return userModel.copy(str, str2, str3, str4);
    }

    @Nullable
    public final String component1() {
        return this.liveId;
    }

    @Nullable
    public final String component2() {
        return this.nickName;
    }

    @Nullable
    public final String component3() {
        return this.url;
    }

    @Nullable
    public final String component4() {
        return this.userId;
    }

    @NotNull
    public final UserModel copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        return new UserModel(str, str2, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserModel) {
            UserModel userModel = (UserModel) obj;
            return Intrinsics.areEqual(this.liveId, userModel.liveId) && Intrinsics.areEqual(this.nickName, userModel.nickName) && Intrinsics.areEqual(this.url, userModel.url) && Intrinsics.areEqual(this.userId, userModel.userId);
        }
        return false;
    }

    @Nullable
    public final String getLiveId() {
        return this.liveId;
    }

    @Nullable
    public final String getNickName() {
        return this.nickName;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.liveId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.nickName;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.url;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.userId;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "UserModel(liveId=" + this.liveId + ", nickName=" + this.nickName + ", url=" + this.url + ", userId=" + this.userId + ')';
    }
}
