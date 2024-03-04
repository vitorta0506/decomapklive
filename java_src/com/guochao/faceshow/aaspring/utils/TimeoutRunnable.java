package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class TimeoutRunnable implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.network_busy);
    }
}
