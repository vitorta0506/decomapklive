package com.guochao.faceshow.aaspring.modulars.push.messagehandler;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.AccessToken;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.FirstChargeGiftBean;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeResultDialog;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0010¢\u0006\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;", "()V", "onShowNotification", "", "context", "Landroid/content/Context;", "map", "", "", "", "largeIcon", "Landroid/graphics/Bitmap;", "largeImage", "onShowNotification$app_GooglePlayRelease", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FirstRechargeDisplayer extends PushNotificationDisplayer {
    @NotNull
    public static final FirstRechargeDisplayer INSTANCE = new FirstRechargeDisplayer();

    private FirstRechargeDisplayer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onShowNotification$lambda-1  reason: not valid java name */
    public static final void m550onShowNotification$lambda1(List list) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null || currTopActivity.isDestroyed() || !(currTopActivity instanceof FragmentActivity)) {
            return;
        }
        FirstChargeGiftBean firstChargeGiftBean = new FirstChargeGiftBean();
        firstChargeGiftBean.setDatas(list);
        for (FirstChargeGiftBean.ItemBean itemBean : firstChargeGiftBean.getDatas()) {
            itemBean.setType(itemBean.getType() + 3);
            if (itemBean.getType() == 4) {
                itemBean.setName(GCApplication.app().getString(R.string.vip_avatar_frame));
            }
            if (itemBean.getType() == 5) {
                itemBean.setName(GCApplication.app().getString(R.string.i_want_to_charge_car));
            }
            if (itemBean.getType() == 6) {
                itemBean.setName(GCApplication.app().getString(R.string.vip_public_chat_shading));
            }
        }
        FirstRechargeResultDialog.Companion companion = FirstRechargeResultDialog.Companion;
        FragmentManager supportFragmentManager = ((FragmentActivity) currTopActivity).getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
        companion.showDialog(supportFragmentManager, firstChargeGiftBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onShowNotification$lambda-3  reason: not valid java name */
    public static final void m551onShowNotification$lambda3(FirstChargeGiftBean.PushFirstRechargeData pushFirstRechargeData) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null || currTopActivity.isDestroyed() || !(currTopActivity instanceof FragmentActivity)) {
            return;
        }
        FirstChargeGiftBean firstChargeGiftBean = new FirstChargeGiftBean();
        ArrayList arrayList = new ArrayList();
        List<Map<String, FirstChargeGiftBean.ItemBean>> list = pushFirstRechargeData.values;
        Intrinsics.checkNotNullExpressionValue(list, "itemBeans.values");
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            for (String str : map.keySet()) {
                FirstChargeGiftBean.ItemBean itemBean = (FirstChargeGiftBean.ItemBean) map.get(str);
                if (itemBean != null) {
                    arrayList.add(itemBean);
                }
            }
        }
        firstChargeGiftBean.setDatas(arrayList);
        FirstRechargeResultDialog.Companion companion = FirstRechargeResultDialog.Companion;
        FragmentManager supportFragmentManager = ((FragmentActivity) currTopActivity).getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
        companion.showDialog(supportFragmentManager, firstChargeGiftBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationDisplayer
    public void onShowNotification$app_GooglePlayRelease(@NotNull Context context, @NotNull Map<String, Object> map, @Nullable Bitmap bitmap, @Nullable Bitmap bitmap2) {
        String valueOf;
        String json;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(map, "map");
        String str = null;
        if (map.get(AccessToken.USER_ID_KEY) != null) {
            valueOf = String.valueOf(map.get(AccessToken.USER_ID_KEY));
        } else {
            valueOf = map.get(Contants.USER_ID) != null ? String.valueOf(map.get(Contants.USER_ID)) : null;
        }
        if (Intrinsics.areEqual(valueOf, b8.e.g().c().getUserId())) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.FIRST_CHARGE_SUCCESS);
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.c
                @Override // java.lang.Runnable
                public final void run() {
                    b8.e.h();
                }
            });
            try {
                if (map.get("content") != null) {
                    if (map.get("content") instanceof String) {
                        json = String.valueOf(map.get("content"));
                    } else {
                        json = GsonGetter.getGson().toJson(map.get("content"));
                    }
                    str = json;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                final List list = (List) GsonGetter.getGson().fromJson(str, new TypeToken<List<? extends FirstChargeGiftBean.ItemBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.FirstRechargeDisplayer$onShowNotification$itemBeans$1
                }.getType());
                if (list != null && (!list.isEmpty())) {
                    HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            FirstRechargeDisplayer.m550onShowNotification$lambda1(list);
                        }
                    });
                    return;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            try {
                final FirstChargeGiftBean.PushFirstRechargeData pushFirstRechargeData = (FirstChargeGiftBean.PushFirstRechargeData) GsonGetter.getGson().fromJson(str, (Class<Object>) FirstChargeGiftBean.PushFirstRechargeData.class);
                if (pushFirstRechargeData != null && !pushFirstRechargeData.values.isEmpty()) {
                    HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.messagehandler.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            FirstRechargeDisplayer.m551onShowNotification$lambda3(FirstChargeGiftBean.PushFirstRechargeData.this);
                        }
                    });
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }
}
