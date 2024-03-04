package cn.asus.push;

import android.os.IBinder;
/* loaded from: classes.dex */
final class f implements b {

    /* renamed from: b  reason: collision with root package name */
    public static b f1773b;

    /* renamed from: a  reason: collision with root package name */
    private IBinder f1774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(IBinder iBinder) {
        this.f1774a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1774a;
    }
}
