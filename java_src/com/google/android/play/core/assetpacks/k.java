package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2.dex */
class k extends com.google.android.play.core.internal.x1 {

    /* renamed from: a  reason: collision with root package name */
    final d5.o f10310a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ s f10311b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(s sVar, d5.o oVar) {
        this.f10311b = sVar;
        this.f10310a = oVar;
    }

    @Override // com.google.android.play.core.internal.y1
    public void C0(int i9, Bundle bundle) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onStartDownload(%d)", Integer.valueOf(i9));
    }

    @Override // com.google.android.play.core.internal.y1
    public final void H(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onNotifyModuleCompleted(%s, sessionId=%d)", bundle.getString("module_name"), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.y1
    public final void N(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onNotifySessionFailed(%d)", Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.y1
    public void S(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10415e;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // com.google.android.play.core.internal.y1
    public final void V(int i9, Bundle bundle) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onGetSession(%d)", Integer.valueOf(i9));
    }

    @Override // com.google.android.play.core.internal.y1
    public final void Y(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle.getString("module_name"), bundle.getString("slice_id"), Integer.valueOf(bundle.getInt("chunk_number")), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.y1
    public void Z(Bundle bundle, Bundle bundle2) throws RemoteException {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.y1
    public void a(Bundle bundle) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        int i9 = bundle.getInt("error_code");
        gVar = s.f10409g;
        gVar.b("onError(%d)", Integer.valueOf(i9));
        this.f10310a.d(new AssetPackException(i9));
    }

    @Override // com.google.android.play.core.internal.y1
    public final void e(int i9, Bundle bundle) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onCancelDownload(%d)", Integer.valueOf(i9));
    }

    @Override // com.google.android.play.core.internal.y1
    public void h(List list) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onGetSessionStates", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.y1
    public final void s(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onRemoveModule()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.y1
    public final void t0(Bundle bundle) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onCancelDownloads()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.y1
    public void x(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10311b.f10414d;
        sVar.s(this.f10310a);
        gVar = s.f10409g;
        gVar.d("onRequestDownloadInfo()", new Object[0]);
    }
}
