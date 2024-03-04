package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.u6;
import java.util.UUID;
/* loaded from: classes2.dex */
abstract class h6<T extends u6> extends f6<T> {

    /* renamed from: d  reason: collision with root package name */
    private final t6 f8728d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h6(String str, T t10, t6 t6Var) {
        super(str, t10);
        z7.e(t6Var.b());
        this.f8728d = t6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h6(String str, UUID uuid, t6 t6Var) {
        super(str, uuid);
        z7.e(t6Var.b());
        this.f8728d = t6Var;
    }
}
