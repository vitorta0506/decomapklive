package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.navigator.ARouterRechargeDialogProvider;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;", "Lcom/guochao/faceshow/aaspring/base/navigator/ARouterRechargeDialogProvider;", "()V", "shownFirstRechargeTime", "", "autoShowFirstRecharge", "", "init", "context", "Landroid/content/Context;", "isFirstRechargeAutoShown", "", "shouldShowFirstRecharge", "showRechargeDialog", "type", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FirstRechargeManager implements ARouterRechargeDialogProvider {
    @NotNull
    public static final FirstRechargeManager INSTANCE = new FirstRechargeManager();
    @Nullable
    private static String shownFirstRechargeTime = (String) com.guochao.faceshow.aaspring.manager.b.a("live", "FirstRechargeTime", String.class);

    private FirstRechargeManager() {
    }

    public final void autoShowFirstRecharge() {
        if (isFirstRechargeAutoShown()) {
            return;
        }
        String today = com.guochao.faceshow.aaspring.manager.i.u().s().getToday();
        shownFirstRechargeTime = today;
        if (today == null) {
            today = "";
        }
        com.guochao.faceshow.aaspring.manager.b.f("live", "FirstRechargeTime", today);
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(@Nullable Context context) {
    }

    public final boolean isFirstRechargeAutoShown() {
        if (FeatureKt.requireFeature$default(Feature.FIRST_RECHARGE, null, 2, null).isAvailable()) {
            String str = (String) com.guochao.faceshow.aaspring.manager.b.a("live", "FirstRechargeTime", String.class);
            shownFirstRechargeTime = str;
            return !TextUtils.isEmpty(str) && com.guochao.faceshow.aaspring.manager.i.u().s().getToday().equals(shownFirstRechargeTime);
        }
        return true;
    }

    public final boolean shouldShowFirstRecharge() {
        return FeatureKt.requireFeature$default(Feature.FIRST_RECHARGE, null, 2, null).isAvailable();
    }

    @Override // com.guochao.faceshow.aaspring.base.navigator.ARouterRechargeDialogProvider
    public void showRechargeDialog(@NotNull Context context, int i9) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context instanceof FragmentActivity) {
            RechargeDialog.Companion companion = RechargeDialog.Companion;
            FragmentManager supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "context.supportFragmentManager");
            RechargeDialog.Companion.showDialog$default(companion, supportFragmentManager, Integer.valueOf(i9), null, 4, null);
            return;
        }
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof FragmentActivity) {
            RechargeDialog.Companion companion2 = RechargeDialog.Companion;
            FragmentManager supportFragmentManager2 = ((FragmentActivity) currTopActivity).getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager2, "currTopActivity.supportFragmentManager");
            RechargeDialog.Companion.showDialog$default(companion2, supportFragmentManager2, Integer.valueOf(i9), null, 4, null);
        }
    }
}
