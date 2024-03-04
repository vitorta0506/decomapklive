package com.meizu.cloud.pushsdk.platform.b;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.platform.PlatformMessageSender;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import com.meizu.cloud.pushsdk.platform.message.RegisterStatus;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class b extends c<RegisterStatus> {

    /* renamed from: h  reason: collision with root package name */
    private Handler f28786h;

    /* renamed from: i  reason: collision with root package name */
    private ScheduledExecutorService f28787i;

    /* renamed from: j  reason: collision with root package name */
    private int f28788j;

    public b(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this(context, null, null, aVar, scheduledExecutorService);
        this.f28787i = (ScheduledExecutorService) com.meizu.cloud.pushsdk.d.b.a.b.a();
        this.f28786h = new Handler(context.getMainLooper()) { // from class: com.meizu.cloud.pushsdk.platform.b.b.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 0) {
                    b.this.m();
                }
            }
        };
    }

    public b(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService, boolean z10) {
        this(context, aVar, scheduledExecutorService);
        this.f28797g = z10;
    }

    public b(Context context, String str, String str2, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        super(context, str, str2, aVar, scheduledExecutorService);
        this.f28788j = 0;
    }

    private boolean a(String str, String str2, int i9) {
        return TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str2.startsWith(str) || System.currentTimeMillis() / 1000 > ((long) i9);
    }

    protected void a(long j10) {
        this.f28787i.schedule(new Runnable() { // from class: com.meizu.cloud.pushsdk.platform.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                com.meizu.cloud.pushsdk.b.c.a(b.this.f28791a);
                b.this.f28786h.sendEmptyMessage(0);
            }
        }, j10, TimeUnit.SECONDS);
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    public void a(RegisterStatus registerStatus) {
        PlatformMessageSender.a(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), registerStatus);
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    public boolean a() {
        DebugLogger.e("Strategy", "isBrandMeizu " + MzSystemUtils.isBrandMeizu(this.f28791a));
        return (TextUtils.isEmpty(this.f28792b) || TextUtils.isEmpty(this.f28793c)) ? false : true;
    }

    protected boolean a(String str, int i9) {
        String a10 = com.meizu.cloud.pushsdk.b.c.a(this.f28791a);
        boolean a11 = a(a10, str, i9);
        return a11 ? a(a10, com.meizu.cloud.pushsdk.platform.a.a(str), i9) : a11;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    public Intent c() {
        Intent intent = new Intent();
        intent.putExtra("app_id", this.f28792b);
        intent.putExtra("app_key", this.f28793c);
        intent.putExtra("strategy_package_name", this.f28791a.getPackageName());
        intent.putExtra("strategy_type", g());
        return intent;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected int g() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: h */
    public RegisterStatus b() {
        String str;
        RegisterStatus registerStatus = new RegisterStatus();
        registerStatus.setCode("20001");
        if (!TextUtils.isEmpty(this.f28792b)) {
            str = TextUtils.isEmpty(this.f28793c) ? "appKey not empty" : "appKey not empty";
            return registerStatus;
        }
        str = "appId not empty";
        registerStatus.setMessage(str);
        return registerStatus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: i */
    public RegisterStatus f() {
        return null;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: j */
    public RegisterStatus e() {
        RegisterStatus registerStatus = new RegisterStatus();
        String a10 = com.meizu.cloud.pushsdk.util.b.a(this.f28791a, this.f28794d);
        int b10 = com.meizu.cloud.pushsdk.util.b.b(this.f28791a, this.f28794d);
        if (a(a10, b10)) {
            com.meizu.cloud.pushsdk.util.b.g(this.f28791a, "", this.f28794d);
            String a11 = com.meizu.cloud.pushsdk.b.c.a(this.f28791a);
            if (!TextUtils.isEmpty(a11) || this.f28788j >= 3) {
                this.f28788j = 0;
                com.meizu.cloud.pushsdk.c.a.c a12 = this.f28795e.a(this.f28792b, this.f28793c, a11);
                if (a12.b()) {
                    registerStatus = new RegisterStatus((String) a12.a());
                    DebugLogger.e("Strategy", "registerStatus " + registerStatus);
                    if (!TextUtils.isEmpty(registerStatus.getPushId())) {
                        com.meizu.cloud.pushsdk.util.b.g(this.f28791a, registerStatus.getPushId(), this.f28794d);
                        com.meizu.cloud.pushsdk.util.b.a(this.f28791a, (int) ((System.currentTimeMillis() / 1000) + registerStatus.getExpireTime()), this.f28794d);
                    }
                } else {
                    com.meizu.cloud.pushsdk.c.b.a c10 = a12.c();
                    if (c10.a() != null) {
                        DebugLogger.e("Strategy", "status code=" + c10.b() + " data=" + c10.a());
                    }
                    registerStatus.setCode(String.valueOf(c10.b()));
                    registerStatus.setMessage(c10.c());
                    DebugLogger.e("Strategy", "registerStatus " + registerStatus);
                }
            } else {
                DebugLogger.i("Strategy", "after " + (this.f28788j * 10) + " seconds start register");
                a((long) (this.f28788j * 10));
                this.f28788j = this.f28788j + 1;
                registerStatus.setCode("20000");
                registerStatus.setMessage("deviceId is empty");
            }
        } else {
            registerStatus.setCode(BasicPushStatus.SUCCESS_CODE);
            registerStatus.setMessage("already register PushId,don't register frequently");
            registerStatus.setPushId(a10);
            registerStatus.setExpireTime((int) (b10 - (System.currentTimeMillis() / 1000)));
        }
        return registerStatus;
    }
}
