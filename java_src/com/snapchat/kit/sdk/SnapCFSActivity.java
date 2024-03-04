package com.snapchat.kit.sdk;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ce.b;
import com.facebook.internal.ServerProtocol;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public abstract class SnapCFSActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    f f29459a;

    /* renamed from: b  reason: collision with root package name */
    ce.b f29460b;

    /* renamed from: c  reason: collision with root package name */
    b.InterfaceC0031b f29461c = new b(this);

    /* loaded from: classes4.dex */
    private static final class a implements ie.c {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f29462a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<SnapCFSActivity> f29463b;

        a(SnapCFSActivity snapCFSActivity, Uri uri) {
            this.f29463b = new WeakReference<>(snapCFSActivity);
            this.f29462a = uri;
        }
    }

    /* loaded from: classes4.dex */
    private static final class b implements b.InterfaceC0031b {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<SnapCFSActivity> f29464a;

        /* loaded from: classes4.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SnapCFSActivity f29465a;

            a(SnapCFSActivity snapCFSActivity) {
                this.f29465a = snapCFSActivity;
            }

            @Override // java.lang.Runnable
            public final void run() {
                SnapCFSActivity.a(this.f29465a);
                this.f29465a.finish();
            }
        }

        /* renamed from: com.snapchat.kit.sdk.SnapCFSActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0288b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SnapCFSActivity f29467a;

            RunnableC0288b(SnapCFSActivity snapCFSActivity) {
                this.f29467a = snapCFSActivity;
            }

            @Override // java.lang.Runnable
            public final void run() {
                SnapCFSActivity.a(this.f29467a);
            }
        }

        b(SnapCFSActivity snapCFSActivity) {
            this.f29464a = new WeakReference<>(snapCFSActivity);
        }

        @Override // ce.b.InterfaceC0031b
        public final void a() {
            SnapCFSActivity snapCFSActivity = this.f29464a.get();
            if (snapCFSActivity == null) {
                return;
            }
            snapCFSActivity.runOnUiThread(new a(snapCFSActivity));
        }

        @Override // ce.b.InterfaceC0031b
        public final void b() {
            SnapCFSActivity snapCFSActivity = this.f29464a.get();
            if (snapCFSActivity == null) {
                return;
            }
            snapCFSActivity.runOnUiThread(new RunnableC0288b(snapCFSActivity));
        }

        @Override // ce.b.InterfaceC0031b
        public final void onLogout() {
        }
    }

    static /* synthetic */ void a(SnapCFSActivity snapCFSActivity) {
        snapCFSActivity.f29460b.removeOnLoginStateChangedListener(snapCFSActivity.f29461c);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("snapchat://cfs"));
        intent.setPackage(pe.a.f56800a);
        intent.setFlags(268435456);
        if (intent.resolveActivity(snapCFSActivity.getPackageManager()) != null) {
            snapCFSActivity.startActivity(intent);
        }
    }

    @NonNull
    @MainThread
    protected abstract be.a b();

    @Override // android.app.Activity
    @CallSuper
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.getData() != null) {
            be.b d10 = com.snapchat.kit.sdk.b.d(this);
            if (d10 == null) {
                finish();
                return;
            }
            d10.e(this);
            String queryParameter = intent.getData().getQueryParameter("code");
            String queryParameter2 = intent.getData().getQueryParameter(ServerProtocol.DIALOG_PARAM_STATE);
            if (!TextUtils.isEmpty(queryParameter) && !TextUtils.isEmpty(queryParameter2)) {
                be.a b10 = b();
                if (b10.a()) {
                    finish();
                    return;
                }
                PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("CFS_PENDING_INTENT");
                if (pendingIntent != null && pe.a.f56800a.equals(pendingIntent.getCreatorPackage())) {
                    b10.b(queryParameter2, new a(this, intent.getData()));
                    return;
                } else {
                    finish();
                    return;
                }
            }
            finish();
            return;
        }
        finish();
    }
}
