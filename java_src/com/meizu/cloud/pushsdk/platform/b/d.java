package com.meizu.cloud.pushsdk.platform.b;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.platform.PlatformMessageSender;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import com.meizu.cloud.pushsdk.platform.message.SubAliasStatus;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class d extends c<SubAliasStatus> {

    /* renamed from: h  reason: collision with root package name */
    private String f28801h;

    /* renamed from: i  reason: collision with root package name */
    private int f28802i;

    /* renamed from: j  reason: collision with root package name */
    private String f28803j;

    /* renamed from: k  reason: collision with root package name */
    private final Map<String, Boolean> f28804k;

    public d(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this(context, null, null, null, aVar, scheduledExecutorService);
    }

    public d(Context context, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService, boolean z10) {
        this(context, aVar, scheduledExecutorService);
        this.f28797g = z10;
    }

    public d(Context context, String str, String str2, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        super(context, str, str2, aVar, scheduledExecutorService);
        this.f28804k = new HashMap();
    }

    public d(Context context, String str, String str2, String str3, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this(context, str, str2, aVar, scheduledExecutorService);
        this.f28801h = str3;
    }

    private void b(boolean z10) {
        Map<String, Boolean> map = this.f28804k;
        map.put(this.f28794d + "_" + this.f28802i, Boolean.valueOf(z10));
    }

    private void f(String str) {
        com.meizu.cloud.pushsdk.util.b.h(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), str);
    }

    private String o() {
        return com.meizu.cloud.pushsdk.util.b.g(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName());
    }

    private boolean p() {
        Map<String, Boolean> map = this.f28804k;
        Boolean bool = map.get(this.f28794d + "_" + this.f28802i);
        return bool == null || bool.booleanValue();
    }

    private boolean q() {
        return !this.f28796f && PushConstants.PUSH_PACKAGE_NAME.equals(this.f28794d);
    }

    public void a(int i9) {
        this.f28802i = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    public void a(SubAliasStatus subAliasStatus) {
        PlatformMessageSender.a(this.f28791a, !TextUtils.isEmpty(this.f28794d) ? this.f28794d : this.f28791a.getPackageName(), subAliasStatus);
    }

    public void a(String str) {
        this.f28803j = str;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected boolean a() {
        return (TextUtils.isEmpty(this.f28792b) || TextUtils.isEmpty(this.f28793c) || TextUtils.isEmpty(this.f28801h)) ? false : true;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected Intent c() {
        if (this.f28802i != 2) {
            Intent intent = new Intent();
            intent.putExtra("app_id", this.f28792b);
            intent.putExtra("app_key", this.f28793c);
            intent.putExtra("strategy_package_name", this.f28791a.getPackageName());
            intent.putExtra(PushConstants.REGISTER_STATUS_PUSH_ID, this.f28801h);
            intent.putExtra("strategy_type", g());
            intent.putExtra("strategy_child_type", this.f28802i);
            intent.putExtra("strategy_params", this.f28803j);
            return intent;
        }
        return null;
    }

    public void e(String str) {
        this.f28801h = str;
    }

    @Override // com.meizu.cloud.pushsdk.platform.b.c
    protected int g() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: h */
    public SubAliasStatus b() {
        String str;
        SubAliasStatus subAliasStatus = new SubAliasStatus();
        subAliasStatus.setCode("20001");
        if (TextUtils.isEmpty(this.f28792b)) {
            str = "appId not empty";
        } else if (!TextUtils.isEmpty(this.f28793c)) {
            if (TextUtils.isEmpty(this.f28801h)) {
                str = "pushId not empty";
            }
            return subAliasStatus;
        } else {
            str = "appKey not empty";
        }
        subAliasStatus.setMessage(str);
        return subAliasStatus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.meizu.cloud.pushsdk.platform.message.SubAliasStatus e() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.platform.b.d.e():com.meizu.cloud.pushsdk.platform.message.SubAliasStatus");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.platform.b.c
    /* renamed from: j */
    public SubAliasStatus f() {
        if (this.f28802i == 2) {
            SubAliasStatus subAliasStatus = new SubAliasStatus();
            subAliasStatus.setCode(BasicPushStatus.SUCCESS_CODE);
            subAliasStatus.setPushId(this.f28801h);
            subAliasStatus.setAlias(o());
            subAliasStatus.setMessage("check alias success");
            return subAliasStatus;
        }
        return null;
    }
}
