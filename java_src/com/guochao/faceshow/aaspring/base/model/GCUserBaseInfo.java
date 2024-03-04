package com.guochao.faceshow.aaspring.base.model;

import android.os.Parcelable;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0013\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\tR\u0012\u0010\u000e\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0005R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u0007X¦\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\t\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\tR\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\tR\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;", "Landroid/os/Parcelable;", "age", "", "getAge", "()I", "avatarUrl", "", "getAvatarUrl", "()Ljava/lang/String;", "countryLogo", "getCountryLogo", "dressHead", "getDressHead", "gender", "getGender", "mvpUrl", "getMvpUrl", "setMvpUrl", "(Ljava/lang/String;)V", "nickName", "getNickName", "smallAvatarUrl", "getSmallAvatarUrl", Contants.USER_ID, "getUserId", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GCUserBaseInfo extends Parcelable {
    int getAge();

    @Nullable
    String getAvatarUrl();

    @Nullable
    String getCountryLogo();

    @Nullable
    String getDressHead();

    int getGender();

    @Nullable
    String getMvpUrl();

    @Nullable
    String getNickName();

    @Nullable
    String getSmallAvatarUrl();

    @Nullable
    String getUserId();

    void setMvpUrl(@Nullable String str);
}
