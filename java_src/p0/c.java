package p0;

import android.content.Context;
import androidx.annotation.NonNull;
import p0.a;
/* loaded from: classes.dex */
final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f56699a;

    /* renamed from: b  reason: collision with root package name */
    final a.InterfaceC0611a f56700b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull Context context, @NonNull a.InterfaceC0611a interfaceC0611a) {
        this.f56699a = context.getApplicationContext();
        this.f56700b = interfaceC0611a;
    }

    private void a() {
        j.a(this.f56699a).d(this.f56700b);
    }

    private void b() {
        j.a(this.f56699a).e(this.f56700b);
    }

    @Override // p0.f
    public void onDestroy() {
    }

    @Override // p0.f
    public void onStart() {
        a();
    }

    @Override // p0.f
    public void onStop() {
        b();
    }
}
