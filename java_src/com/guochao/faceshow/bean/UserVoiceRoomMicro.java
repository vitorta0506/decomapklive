package com.guochao.faceshow.bean;

import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;", "", "img", "", "index", "", "nickName", "status", Contants.USER_ID, "(Ljava/lang/String;ILjava/lang/String;II)V", "getImg", "()Ljava/lang/String;", "getIndex", "()I", "getNickName", "getStatus", "getUserId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserVoiceRoomMicro {
    @NotNull
    private final String img;
    private final int index;
    @NotNull
    private final String nickName;
    private final int status;
    private final int userId;

    public UserVoiceRoomMicro(@NotNull String img, int i9, @NotNull String nickName, int i10, int i11) {
        Intrinsics.checkNotNullParameter(img, "img");
        Intrinsics.checkNotNullParameter(nickName, "nickName");
        this.img = img;
        this.index = i9;
        this.nickName = nickName;
        this.status = i10;
        this.userId = i11;
    }

    public static /* synthetic */ UserVoiceRoomMicro copy$default(UserVoiceRoomMicro userVoiceRoomMicro, String str, int i9, String str2, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = userVoiceRoomMicro.img;
        }
        if ((i12 & 2) != 0) {
            i9 = userVoiceRoomMicro.index;
        }
        int i13 = i9;
        if ((i12 & 4) != 0) {
            str2 = userVoiceRoomMicro.nickName;
        }
        String str3 = str2;
        if ((i12 & 8) != 0) {
            i10 = userVoiceRoomMicro.status;
        }
        int i14 = i10;
        if ((i12 & 16) != 0) {
            i11 = userVoiceRoomMicro.userId;
        }
        return userVoiceRoomMicro.copy(str, i13, str3, i14, i11);
    }

    @NotNull
    public final String component1() {
        return this.img;
    }

    public final int component2() {
        return this.index;
    }

    @NotNull
    public final String component3() {
        return this.nickName;
    }

    public final int component4() {
        return this.status;
    }

    public final int component5() {
        return this.userId;
    }

    @NotNull
    public final UserVoiceRoomMicro copy(@NotNull String img, int i9, @NotNull String nickName, int i10, int i11) {
        Intrinsics.checkNotNullParameter(img, "img");
        Intrinsics.checkNotNullParameter(nickName, "nickName");
        return new UserVoiceRoomMicro(img, i9, nickName, i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserVoiceRoomMicro) {
            UserVoiceRoomMicro userVoiceRoomMicro = (UserVoiceRoomMicro) obj;
            return Intrinsics.areEqual(this.img, userVoiceRoomMicro.img) && this.index == userVoiceRoomMicro.index && Intrinsics.areEqual(this.nickName, userVoiceRoomMicro.nickName) && this.status == userVoiceRoomMicro.status && this.userId == userVoiceRoomMicro.userId;
        }
        return false;
    }

    @NotNull
    public final String getImg() {
        return this.img;
    }

    public final int getIndex() {
        return this.index;
    }

    @NotNull
    public final String getNickName() {
        return this.nickName;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((((((this.img.hashCode() * 31) + this.index) * 31) + this.nickName.hashCode()) * 31) + this.status) * 31) + this.userId;
    }

    @NotNull
    public String toString() {
        return "UserVoiceRoomMicro(img=" + this.img + ", index=" + this.index + ", nickName=" + this.nickName + ", status=" + this.status + ", userId=" + this.userId + ')';
    }
}
