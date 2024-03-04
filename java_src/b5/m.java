package b5;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes2.dex */
final class m implements e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f1181a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f1182b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Context f1183c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ o f1184d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(o oVar, a aVar, Intent intent, Context context) {
        this.f1184d = oVar;
        this.f1181a = aVar;
        this.f1182b = intent;
        this.f1183c = context;
    }

    @Override // b5.e
    public final void E() {
        com.google.android.play.core.internal.g gVar;
        if (!this.f1182b.getBooleanExtra("triggered_from_app_after_verification", false)) {
            this.f1182b.putExtra("triggered_from_app_after_verification", true);
            this.f1183c.sendBroadcast(this.f1182b);
            return;
        }
        gVar = ((x4.d) this.f1184d).f59612a;
        gVar.b("Splits copied and verified more than once.", new Object[0]);
    }

    @Override // b5.e
    public final void F(int i9) {
        r0.f1190g.post(new n(this.f1184d, this.f1181a, 6, i9));
    }

    @Override // b5.e
    public final void zza() {
        r0.f1190g.post(new n(this.f1184d, this.f1181a, 5, 0));
    }
}
