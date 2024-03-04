package com.guochao.faceshow.aaspring.modulars.push.messagehandler;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarGiftDialog;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;", "()V", "onNotificationClicked", "", "context", "Landroid/content/Context;", "bundle", "Landroid/os/Bundle;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HellStarGiftClickHandler extends PushNotificationClickHandler {
    @NotNull
    public static final HellStarGiftClickHandler INSTANCE = new HellStarGiftClickHandler();

    private HellStarGiftClickHandler() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationClickHandler
    public void onNotificationClicked(@NotNull Context context, @NotNull Bundle bundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if ((currTopActivity instanceof FragmentActivity) && ja.a.b().f("KEY_HELLO_HOUR_SHOW_V2")) {
            ja.a.b().e("KEY_HELLO_HOUR_SHOW_V2");
            EventTrackingUtils.getInstance().track(EventTrackingUtils.HELLO_STAR_HELLO_GIFT_SECEND);
            HelloStarGiftDialog.Companion companion = HelloStarGiftDialog.Companion;
            HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
            HelloStarGiftDialog companion2 = companion.getInstance(1, helloStarHelp.getHelloConfigData().getFirstNum(), helloStarHelp.getHelloConfigData().getLockNum());
            FragmentManager supportFragmentManager = ((FragmentActivity) currTopActivity).getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "currTopActivity.supportFragmentManager");
            companion2.show(supportFragmentManager, "HelloStarGiftDialog");
        }
    }
}
