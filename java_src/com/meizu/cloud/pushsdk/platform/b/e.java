package com.meizu.cloud.pushsdk.platform.b;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.platform.PlatformMessageSender;
import com.meizu.cloud.pushsdk.platform.message.SubTagsStatus;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class e extends c<SubTagsStatus> {

    /* renamed from: h  reason: collision with root package name */
    private String f28805h;

    /* renamed from: i  reason: collision with root package name */
    private int f28806i;

    /* renamed from: j  reason: collision with root package name */
    private String f28807j;

    public e(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this(context, null, null, null, aVar, scheduledExecutorService);
    }

    public e(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService, boolean z10) {
        this(context, aVar, scheduledExecutorService);
        this.f28797g = z10;
    }

    public e(Context context, String str, String str2, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        super(context, str, str2, aVar, scheduledExecutorService);
        this.f28806i = 3;
    }

    public e(Context context, String str, String str2, String str3, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this(context, str, str2, aVar, scheduledExecutorService);
        this.f28805h = str3;
    }

    public void a(int i9) {
        this.f28806i = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    public void a(SubTagsStatus subTagsStatus) {
        PlatformMessageSender.a(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), subTagsStatus);
    }

    public void a(String str) {
        this.f28807j = str;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected boolean a() {
        return (TextUtils.isEmpty(this.f28792b) || TextUtils.isEmpty(this.f28793c) || TextUtils.isEmpty(this.f28805h)) ? false : true;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected Intent c() {
        Intent intent = new Intent();
        intent.putExtra("app_id", this.f28792b);
        intent.putExtra("app_key", this.f28793c);
        intent.putExtra("strategy_package_name", this.f28791a.getPackageName());
        intent.putExtra(PushConstants.REGISTER_STATUS_PUSH_ID, this.f28805h);
        intent.putExtra("strategy_type", g());
        intent.putExtra("strategy_child_type", this.f28806i);
        intent.putExtra("strategy_params", this.f28807j);
        return intent;
    }

    public void e(String str) {
        this.f28805h = str;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected int g() {
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: h */
    public SubTagsStatus b() {
        String str;
        SubTagsStatus subTagsStatus = new SubTagsStatus();
        subTagsStatus.setCode("20001");
        if (TextUtils.isEmpty(this.f28792b)) {
            str = "appId not empty";
        } else if (!TextUtils.isEmpty(this.f28793c)) {
            if (TextUtils.isEmpty(this.f28805h)) {
                str = "pushId not empty";
            }
            return subTagsStatus;
        } else {
            str = "appKey not empty";
        }
        subTagsStatus.setMessage(str);
        return subTagsStatus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: i */
    public SubTagsStatus e() {
        StringBuilder sb2;
        String str;
        SubTagsStatus subTagsStatus = new SubTagsStatus();
        int i9 = this.f28806i;
        com.meizu.cloud.pushsdk.c.a.c e10 = i9 != 0 ? i9 != 1 ? i9 != 2 ? i9 != 3 ? null : this.f28795e.e(this.f28792b, this.f28793c, this.f28805h) : this.f28795e.d(this.f28792b, this.f28793c, this.f28805h) : this.f28795e.b(this.f28792b, this.f28793c, this.f28805h, this.f28807j) : this.f28795e.a(this.f28792b, this.f28793c, this.f28805h, this.f28807j);
        if (e10 == null) {
            DebugLogger.e("Strategy", "network anResponse is null");
            return null;
        }
        if (e10.b()) {
            subTagsStatus = new SubTagsStatus((String) e10.a());
            sb2 = new StringBuilder();
            str = "network subTagsStatus ";
        } else {
            com.meizu.cloud.pushsdk.c.b.a c10 = e10.c();
            if (c10.a() != null) {
                DebugLogger.e("Strategy", "status code=" + c10.b() + " data=" + c10.a());
            }
            subTagsStatus.setCode(String.valueOf(c10.b()));
            subTagsStatus.setMessage(c10.c());
            sb2 = new StringBuilder();
            str = "subTagsStatus ";
        }
        sb2.append(str);
        sb2.append(subTagsStatus);
        DebugLogger.e("Strategy", sb2.toString());
        return subTagsStatus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: j */
    public SubTagsStatus f() {
        return null;
    }
}
