package com.meizu.cloud.pushsdk.platform.b;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import com.meizu.cloud.pushsdk.util.MinSdkChecker;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class a extends c {

    /* renamed from: h  reason: collision with root package name */
    private int[] f28783h;

    /* renamed from: i  reason: collision with root package name */
    private int f28784i;

    /* renamed from: j  reason: collision with root package name */
    private String f28785j;

    public a(Context context, String str, String str2, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        super(context, str, str2, aVar, scheduledExecutorService);
        this.f28796f = MinSdkChecker.isSupportSetDrawableSmallIcon();
    }

    public a(Context context, ScheduledExecutorService scheduledExecutorService, boolean z10) {
        this(context, null, null, null, scheduledExecutorService);
        this.f28797g = z10;
    }

    public void a(int i9) {
        this.f28784i = i9;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected void a(BasicPushStatus basicPushStatus) {
    }

    public void a(String str) {
        this.f28785j = str;
    }

    public void a(int... iArr) {
        this.f28783h = iArr;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected boolean a() {
        int i9 = this.f28784i;
        if (i9 != 0) {
            int[] iArr = this.f28783h;
            if (iArr == null || iArr.length <= 0 || i9 != 1) {
                return i9 == 2 && !TextUtils.isEmpty(this.f28785j);
            }
            return true;
        }
        return true;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected BasicPushStatus b() {
        return null;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected Intent c() {
        Intent intent = new Intent();
        intent.putExtra("strategy_package_name", this.f28791a.getPackageName());
        intent.putExtra("strategy_type", g());
        intent.putExtra("strategy_child_type", this.f28784i);
        int i9 = this.f28784i;
        if (i9 == 2) {
            intent.putExtra("strategy_params", this.f28785j);
            return intent;
        } else if (i9 == 1) {
            return null;
        } else {
            return intent;
        }
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected Intent[] d() {
        int[] iArr = this.f28783h;
        if (iArr != null) {
            Intent[] intentArr = new Intent[iArr.length];
            for (int i9 = 0; i9 < this.f28783h.length; i9++) {
                DebugLogger.i("Strategy", "send notifyId " + this.f28783h[i9] + " to PushManagerService");
                Intent intent = new Intent();
                intent.putExtra("strategy_package_name", this.f28791a.getPackageName());
                intent.putExtra("strategy_type", g());
                intent.putExtra("strategy_child_type", this.f28784i);
                intent.putExtra("strategy_params", "" + this.f28783h[i9]);
                intentArr[i9] = intent;
            }
            return intentArr;
        }
        return null;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected BasicPushStatus e() {
        int i9 = this.f28784i;
        if (i9 == 0) {
            if (!MinSdkChecker.isSupportSetDrawableSmallIcon()) {
                DebugLogger.e("Strategy", "android 6.0 blow so cancel all by context");
                com.meizu.cloud.pushsdk.notification.c.b.a(this.f28791a);
            }
            com.meizu.cloud.pushsdk.notification.c.b.a(this.f28791a, this.f28794d);
            return null;
        } else if (i9 != 1) {
            if (i9 != 2) {
                return null;
            }
            com.meizu.cloud.pushsdk.notification.c.b.a(this.f28791a, this.f28794d, this.f28785j);
            return null;
        } else {
            int[] iArr = this.f28783h;
            if (iArr != null) {
                for (int i10 : iArr) {
                    DebugLogger.e("Strategy", "clear notifyId " + i10);
                    com.meizu.cloud.pushsdk.notification.c.b.a(this.f28791a, this.f28794d, i10);
                }
                return null;
            }
            return null;
        }
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected BasicPushStatus f() {
        return null;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected int g() {
        return 64;
    }
}
