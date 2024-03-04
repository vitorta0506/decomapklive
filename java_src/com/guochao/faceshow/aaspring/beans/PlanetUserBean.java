package com.guochao.faceshow.aaspring.beans;

import androidx.annotation.Nullable;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import p7.d;
import p7.g;
import p7.h;
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b%\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0002H\u0016R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\n\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\n\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\n\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\"\u0010!\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0010\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014R\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\n\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000e¨\u0006)"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;", "Lp7/h;", "", "getAvatarUrl", "", "getGender", "getPendantUrl", "getCountryFlag", "getCurrentUserId", Contants.USER_ID, "Ljava/lang/String;", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "sort", "I", "getSort", "()I", "setSort", "(I)V", "score", "getScore", "setScore", "img", "getImg", "setImg", "nickName", "getNickName", "setNickName", "logo", "getLogo", "setLogo", "sex", "getSex", "setSex", "avatar", "getAvatar", "setAvatar", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class PlanetUserBean implements h {
    private int score;
    private int sex;
    private int sort;
    @NotNull
    private String userId = "";
    @NotNull
    private String img = "";
    @NotNull
    private String nickName = "";
    @NotNull
    private String logo = "";
    @NotNull
    private String avatar = "";

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    @NotNull
    public final String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    @NotNull
    public String getAvatarUrl() {
        return this.img;
    }

    @Override // p7.h
    @NotNull
    public String getCountryFlag() {
        return this.logo;
    }

    @Override // p7.h
    @NotNull
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    @NotNull
    public final String getImg() {
        return this.img;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    @NotNull
    public final String getLogo() {
        return this.logo;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @NotNull
    public final String getNickName() {
        return this.nickName;
    }

    @Override // p7.h
    @NotNull
    public String getPendantUrl() {
        return this.avatar;
    }

    public final int getScore() {
        return this.score;
    }

    public final int getSex() {
        return this.sex;
    }

    public final int getSort() {
        return this.sort;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public final void setAvatar(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.avatar = str;
    }

    public final void setImg(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.img = str;
    }

    public final void setLogo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.logo = str;
    }

    public final void setNickName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.nickName = str;
    }

    public final void setScore(int i9) {
        this.score = i9;
    }

    public final void setSex(int i9) {
        this.sex = i9;
    }

    public final void setSort(int i9) {
        this.sort = i9;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }
}
