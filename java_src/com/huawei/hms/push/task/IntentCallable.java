package com.huawei.hms.push.task;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.PushNaming;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
public class IntentCallable implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    public Context f27767a;

    /* renamed from: b  reason: collision with root package name */
    public Intent f27768b;

    /* renamed from: c  reason: collision with root package name */
    public String f27769c;

    public IntentCallable(Context context, Intent intent, String str) {
        this.f27767a = context;
        this.f27768b = intent;
        this.f27769c = str;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f27767a.sendBroadcast(this.f27768b);
        PushBiUtil.reportExit(this.f27767a, PushNaming.SET_NOTIFY_FLAG, this.f27769c, ErrorEnum.SUCCESS);
        return null;
    }
}
