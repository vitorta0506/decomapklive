package com.guochao.faceshow.aaspring.base.model;

import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\bf\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/model/GCMutableUser;", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "nickName", "", "getNickName", "()Ljava/lang/String;", "setNickName", "(Ljava/lang/String;)V", Contants.USER_ID, "getUserId", "setUserId", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GCMutableUser extends GCUser {
    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    String getNickName();

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    String getUserId();

    void setNickName(@Nullable String str);

    void setUserId(@Nullable String str);
}
