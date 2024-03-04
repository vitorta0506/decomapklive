package com.guochao.faceshow.aaspring.modulars.push.xiaomi;

import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper;
import com.guochao.faceshow.utils.BaseConfig;
import com.xiaomi.channel.commonutils.android.Region;
import com.xiaomi.mipush.sdk.j;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;", "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;", "tokenType", "", "(Ljava/lang/String;)V", "getTokenType", "()Ljava/lang/String;", "checkToken", "", "initOnce", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class XiaomiPushHelper extends BasePushHelper {
    @NotNull
    private final String tokenType;

    public XiaomiPushHelper() {
        this(null, 1, null);
    }

    public /* synthetic */ XiaomiPushHelper(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL : str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    public void checkToken() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    @NotNull
    public String getTokenType() {
        return this.tokenType;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    public void initOnce() {
        j.Y(Region.Global);
        j.I(BaseApplication.getInstance(), BaseConfig.XM_PUSH_APPID, BaseConfig.XM_PUSH_APPKEY);
        j.t(BaseApplication.getInstance());
    }

    public XiaomiPushHelper(@NotNull String tokenType) {
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        this.tokenType = tokenType;
    }
}
