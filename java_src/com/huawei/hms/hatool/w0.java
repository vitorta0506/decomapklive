package com.huawei.hms.hatool;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* loaded from: classes4.dex */
public class w0 {

    /* renamed from: c  reason: collision with root package name */
    public static w0 f27601c = new w0();

    /* renamed from: a  reason: collision with root package name */
    public boolean f27602a = false;

    /* renamed from: b  reason: collision with root package name */
    public Context f27603b = b.i();

    public static w0 b() {
        return f27601c;
    }

    public boolean a() {
        boolean z10;
        if (!this.f27602a) {
            Context context = this.f27603b;
            if (context == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                UserManager userManager = (UserManager) context.getSystemService("user");
                if (userManager != null) {
                    z10 = userManager.isUserUnlocked();
                } else {
                    this.f27602a = false;
                }
            } else {
                z10 = true;
            }
            this.f27602a = z10;
        }
        return this.f27602a;
    }
}
