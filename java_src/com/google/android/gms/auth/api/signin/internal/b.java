package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.common.api.d;
import t3.u;
/* loaded from: classes2.dex */
final class b implements LoaderManager.LoaderCallbacks {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ SignInHubActivity f7389a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b(SignInHubActivity signInHubActivity, u uVar) {
        this.f7389a = signInHubActivity;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final Loader onCreateLoader(int i9, Bundle bundle) {
        return new zbc(this.f7389a, d.b());
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final /* bridge */ /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        Void r32 = (Void) obj;
        SignInHubActivity signInHubActivity = this.f7389a;
        signInHubActivity.setResult(SignInHubActivity.b0(signInHubActivity), SignInHubActivity.d0(signInHubActivity));
        this.f7389a.finish();
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final void onLoaderReset(Loader loader) {
    }
}
