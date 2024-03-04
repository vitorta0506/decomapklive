package com.huawei.hms.opendevice;

import android.content.Context;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.entity.AAIDResult;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
public class j implements Callable<AAIDResult> {

    /* renamed from: a  reason: collision with root package name */
    public Context f27641a;

    public j(Context context) {
        this.f27641a = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public AAIDResult call() throws Exception {
        Context context = this.f27641a;
        if (context != null) {
            String c10 = o.c(context);
            AAIDResult aAIDResult = new AAIDResult();
            aAIDResult.setId(c10);
            return aAIDResult;
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }
}
