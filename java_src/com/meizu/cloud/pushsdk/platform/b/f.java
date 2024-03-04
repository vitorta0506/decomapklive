package com.meizu.cloud.pushsdk.platform.b;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.platform.PlatformMessageSender;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import com.meizu.cloud.pushsdk.platform.message.PushSwitchStatus;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class f extends c<PushSwitchStatus> {

    /* renamed from: h  reason: collision with root package name */
    private String f28808h;

    /* renamed from: i  reason: collision with root package name */
    private int f28809i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28810j;

    /* renamed from: k  reason: collision with root package name */
    private final Map<String, Boolean> f28811k;

    public f(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this(context, null, null, null, aVar, scheduledExecutorService);
    }

    public f(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService, boolean z10) {
        this(context, aVar, scheduledExecutorService);
        this.f28797g = z10;
    }

    public f(Context context, String str, String str2, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        super(context, str, str2, aVar, scheduledExecutorService);
        this.f28809i = 0;
        this.f28811k = new HashMap();
    }

    public f(Context context, String str, String str2, String str3, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this(context, str, str2, aVar, scheduledExecutorService);
        this.f28808h = str3;
    }

    private com.meizu.cloud.pushsdk.c.a.c<String> b(PushSwitchStatus pushSwitchStatus) {
        boolean z10;
        boolean r10;
        boolean p10;
        int i9 = this.f28809i;
        if (i9 != 0) {
            if (i9 == 1) {
                pushSwitchStatus.setMessage("SWITCH_THROUGH_MESSAGE");
                if (r() != this.f28810j || t()) {
                    f(true);
                    d(this.f28810j);
                    return this.f28795e.a(this.f28792b, this.f28793c, this.f28808h, this.f28809i, this.f28810j);
                }
                p10 = p();
            } else if (i9 != 2) {
                if (i9 == 3) {
                    pushSwitchStatus.setMessage("SWITCH_ALL");
                    if (p() != this.f28810j || r() != this.f28810j || t()) {
                        f(true);
                        e(this.f28810j);
                        return this.f28795e.a(this.f28792b, this.f28793c, this.f28808h, this.f28810j);
                    }
                    p10 = this.f28810j;
                }
                return null;
            } else {
                pushSwitchStatus.setMessage("CHECK_PUSH");
                if (!q() || !s() || t()) {
                    f(true);
                    return this.f28795e.c(this.f28792b, this.f28793c, this.f28808h);
                }
                z10 = p();
                pushSwitchStatus.setSwitchNotificationMessage(z10);
                r10 = r();
            }
            pushSwitchStatus.setSwitchNotificationMessage(p10);
            r10 = this.f28810j;
        } else {
            pushSwitchStatus.setMessage("SWITCH_NOTIFICATION");
            if (p() != this.f28810j || t()) {
                f(true);
                c(this.f28810j);
                return this.f28795e.a(this.f28792b, this.f28793c, this.f28808h, this.f28809i, this.f28810j);
            }
            z10 = this.f28810j;
            pushSwitchStatus.setSwitchNotificationMessage(z10);
            r10 = r();
        }
        pushSwitchStatus.setSwitchThroughMessage(r10);
        return null;
    }

    private void c(boolean z10) {
        com.meizu.cloud.pushsdk.util.b.a(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), z10);
    }

    private void d(boolean z10) {
        com.meizu.cloud.pushsdk.util.b.b(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), z10);
    }

    private void e(boolean z10) {
        com.meizu.cloud.pushsdk.util.b.a(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), z10);
        com.meizu.cloud.pushsdk.util.b.b(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), z10);
    }

    private void f(boolean z10) {
        Map<String, Boolean> map = this.f28811k;
        map.put(this.f28794d + "_" + this.f28809i, Boolean.valueOf(z10));
    }

    private void o() {
        int i9 = this.f28809i;
        if (i9 == 0 || i9 == 1) {
            PlatformMessageSender.a(this.f28791a, i9, this.f28810j, this.f28794d);
        } else if (i9 != 3) {
        } else {
            PlatformMessageSender.a(this.f28791a, 0, this.f28810j, this.f28794d);
            PlatformMessageSender.a(this.f28791a, 1, this.f28810j, this.f28794d);
        }
    }

    private boolean p() {
        return com.meizu.cloud.pushsdk.util.b.e(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName());
    }

    private boolean q() {
        return com.meizu.cloud.pushsdk.util.b.f(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName());
    }

    private boolean r() {
        return com.meizu.cloud.pushsdk.util.b.h(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName());
    }

    private boolean s() {
        return com.meizu.cloud.pushsdk.util.b.i(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName());
    }

    private boolean t() {
        Map<String, Boolean> map = this.f28811k;
        Boolean bool = map.get(this.f28794d + "_" + this.f28809i);
        boolean z10 = bool == null || bool.booleanValue();
        DebugLogger.e("Strategy", "isSyncPushStatus " + this.f28794d + " switch type->" + this.f28809i + " flag->" + z10);
        return z10;
    }

    public void a(int i9) {
        this.f28809i = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    public void a(PushSwitchStatus pushSwitchStatus) {
        PlatformMessageSender.a(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), pushSwitchStatus);
    }

    public void a(String str) {
        this.f28808h = str;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected boolean a() {
        return (TextUtils.isEmpty(this.f28792b) || TextUtils.isEmpty(this.f28793c) || TextUtils.isEmpty(this.f28808h)) ? false : true;
    }

    public void b(boolean z10) {
        this.f28810j = z10;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected Intent c() {
        Intent intent = new Intent();
        intent.putExtra("app_id", this.f28792b);
        intent.putExtra("app_key", this.f28793c);
        intent.putExtra("strategy_package_name", this.f28791a.getPackageName());
        intent.putExtra(PushConstants.REGISTER_STATUS_PUSH_ID, this.f28808h);
        intent.putExtra("strategy_type", g());
        intent.putExtra("strategy_child_type", this.f28809i);
        intent.putExtra("strategy_params", this.f28810j ? "1" : "0");
        return intent;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected int g() {
        return 16;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: h */
    public PushSwitchStatus b() {
        String str;
        PushSwitchStatus pushSwitchStatus = new PushSwitchStatus();
        pushSwitchStatus.setCode("20001");
        if (TextUtils.isEmpty(this.f28792b)) {
            str = "appId not empty";
        } else if (!TextUtils.isEmpty(this.f28793c)) {
            if (TextUtils.isEmpty(this.f28808h)) {
                str = "pushId not empty";
            }
            return pushSwitchStatus;
        } else {
            str = "appKey not empty";
        }
        pushSwitchStatus.setMessage(str);
        return pushSwitchStatus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: i */
    public PushSwitchStatus e() {
        PushSwitchStatus pushSwitchStatus = new PushSwitchStatus();
        pushSwitchStatus.setPushId(this.f28808h);
        pushSwitchStatus.setCode(BasicPushStatus.SUCCESS_CODE);
        com.meizu.cloud.pushsdk.c.a.c<String> b10 = b(pushSwitchStatus);
        if (b10 != null) {
            if (b10.b()) {
                PushSwitchStatus pushSwitchStatus2 = new PushSwitchStatus(b10.a());
                DebugLogger.e("Strategy", "network pushSwitchStatus " + pushSwitchStatus2);
                if (BasicPushStatus.SUCCESS_CODE.equals(pushSwitchStatus.getCode())) {
                    f(false);
                    DebugLogger.e("Strategy", "update local switch preference");
                    pushSwitchStatus.setSwitchNotificationMessage(pushSwitchStatus2.isSwitchNotificationMessage());
                    pushSwitchStatus.setSwitchThroughMessage(pushSwitchStatus2.isSwitchThroughMessage());
                    c(pushSwitchStatus2.isSwitchNotificationMessage());
                    d(pushSwitchStatus2.isSwitchThroughMessage());
                }
            } else {
                com.meizu.cloud.pushsdk.c.b.a c10 = b10.c();
                if (c10.a() != null) {
                    DebugLogger.e("Strategy", "status code=" + c10.b() + " data=" + c10.a());
                }
                pushSwitchStatus.setCode(String.valueOf(c10.b()));
                pushSwitchStatus.setMessage(c10.c());
                DebugLogger.e("Strategy", "pushSwitchStatus " + pushSwitchStatus);
            }
        }
        DebugLogger.e("Strategy", "enableRpc " + this.f28797g + " isSupportRemoteInvoke " + this.f28796f);
        if (this.f28797g && !this.f28796f) {
            o();
        }
        return pushSwitchStatus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: j */
    public PushSwitchStatus f() {
        int i9 = this.f28809i;
        if (i9 == 0) {
            c(this.f28810j);
            return null;
        } else if (i9 == 1) {
            d(this.f28810j);
            return null;
        } else if (i9 == 2 || i9 == 3) {
            e(this.f28810j);
            return null;
        } else {
            return null;
        }
    }
}
