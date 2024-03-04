package com.guochao.faceshow.aaspring.manager.user;

import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.session.model.UserSessionModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;", "", "()V", "convert", "Lcom/guochao/faceshow/session/model/UserSessionModel;", "userBean", "Lcom/guochao/faceshow/bean/UserBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserModelUtils {
    @NotNull
    public static final UserModelUtils INSTANCE = new UserModelUtils();

    private UserModelUtils() {
    }

    @Nullable
    public final UserSessionModel convert(@Nullable UserBean userBean) {
        String str = userBean != null ? userBean.userId : null;
        if (str == null) {
            return null;
        }
        UserSessionModel userSessionModel = new UserSessionModel(str);
        userSessionModel.setNickName(userBean.nickName);
        userSessionModel.setSignature(userBean.signature);
        userSessionModel.setUserAvatar(userBean.img);
        userSessionModel.setUserSmallAvatar(userBean.img);
        userSessionModel.setToken(userBean.token);
        userSessionModel.setGender(userBean.getGender());
        String str2 = userBean.tencentSignature;
        if (str2 == null) {
            str2 = "";
        } else {
            Intrinsics.checkNotNullExpressionValue(str2, "userBean.tencentSignature ?: \"\"");
        }
        userSessionModel.setImUserSig(str2);
        userSessionModel.setPhoneNumber(userBean.mobile);
        return userSessionModel;
    }
}
