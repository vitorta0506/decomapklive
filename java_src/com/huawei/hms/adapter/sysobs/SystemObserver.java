package com.huawei.hms.adapter.sysobs;

import android.content.Intent;
/* loaded from: classes4.dex */
public interface SystemObserver {
    boolean onNoticeResult(int i9);

    boolean onSolutionResult(Intent intent, String str);

    boolean onUpdateResult(int i9);
}
