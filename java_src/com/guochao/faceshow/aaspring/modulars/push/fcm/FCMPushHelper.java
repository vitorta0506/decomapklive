package com.guochao.faceshow.aaspring.modulars.push.fcm;

import android.text.TextUtils;
import com.google.firebase.d;
import com.google.firebase.messaging.FirebaseMessaging;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper;
import com.guochao.faceshow.aaspring.modulars.push.fcm.FCMPushHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import t4.c;
import t4.g;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;", "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;", "()V", "inited", "", "tokenType", "", "getTokenType", "()Ljava/lang/String;", "checkToken", "", "init1", "initOnce", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FCMPushHelper extends BasePushHelper {
    private boolean inited;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkToken$lambda-0  reason: not valid java name */
    public static final void m544checkToken$lambda0(FCMPushHelper this$0, g it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.o()) {
            String str = (String) it.k();
            if (TextUtils.isEmpty(str)) {
                ThirdPushHelper.setThirdPushToken$default("0", null, false, 4, null);
                return;
            } else {
                ThirdPushHelper.setThirdPushToken$default(this$0.getTokenType(), str, false, 4, null);
                return;
            }
        }
        ThirdPushHelper.setThirdPushToken$default("0", null, false, 4, null);
    }

    private final void init1() {
        if (this.inited) {
            return;
        }
        try {
            d.r(BaseApplication.getInstance());
            FirebaseMessaging.l().A(true);
            FirebaseMessaging.l().B(true);
            this.inited = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    public void checkToken() {
        init1();
        try {
            g<String> o10 = FirebaseMessaging.l().o();
            Intrinsics.checkNotNullExpressionValue(o10, "getInstance().token");
            if (o10.o()) {
                ThirdPushHelper.setThirdPushToken$default(getTokenType(), o10.k(), false, 4, null);
            } else {
                o10.c(new c() { // from class: s9.a
                    @Override // t4.c
                    public final void a(g gVar) {
                        FCMPushHelper.m544checkToken$lambda0(FCMPushHelper.this, gVar);
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    @NotNull
    public String getTokenType() {
        return "1";
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    public void initOnce() {
        try {
            checkToken();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
