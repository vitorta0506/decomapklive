package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.android.installreferrer.commons.InstallReferrerCommons;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import m3.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class InstallReferrerClientImpl extends InstallReferrerClient {

    /* renamed from: a  reason: collision with root package name */
    private int f4038a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final Context f4039b;

    /* renamed from: c  reason: collision with root package name */
    private m3.a f4040c;

    /* renamed from: d  reason: collision with root package name */
    private ServiceConnection f4041d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ClientState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    /* loaded from: classes.dex */
    private final class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private final InstallReferrerStateListener f4042a;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
            InstallReferrerClientImpl.this.f4040c = a.AbstractBinderC0564a.b(iBinder);
            InstallReferrerClientImpl.this.f4038a = 2;
            this.f4042a.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
            InstallReferrerClientImpl.this.f4040c = null;
            InstallReferrerClientImpl.this.f4038a = 0;
            this.f4042a.onInstallReferrerServiceDisconnected();
        }

        private b(@NonNull InstallReferrerStateListener installReferrerStateListener) {
            if (installReferrerStateListener != null) {
                this.f4042a = installReferrerStateListener;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }
    }

    public InstallReferrerClientImpl(@NonNull Context context) {
        this.f4039b = context.getApplicationContext();
    }

    private boolean c() {
        try {
            return this.f4039b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void endConnection() {
        this.f4038a = 3;
        if (this.f4041d != null) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Unbinding from service.");
            this.f4039b.unbindService(this.f4041d);
            this.f4041d = null;
        }
        this.f4040c = null;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public ReferrerDetails getInstallReferrer() throws RemoteException {
        if (isReady()) {
            Bundle bundle = new Bundle();
            bundle.putString(PushConstants.PACKAGE_NAME, this.f4039b.getPackageName());
            try {
                return new ReferrerDetails(this.f4040c.u(bundle));
            } catch (RemoteException e10) {
                InstallReferrerCommons.logWarn("InstallReferrerClient", "RemoteException getting install referrer information");
                this.f4038a = 0;
                throw e10;
            }
        }
        throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public boolean isReady() {
        return (this.f4038a != 2 || this.f4040c == null || this.f4041d == null) ? false : true;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void startConnection(@NonNull InstallReferrerStateListener installReferrerStateListener) {
        ServiceInfo serviceInfo;
        if (isReady()) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            installReferrerStateListener.onInstallReferrerSetupFinished(0);
            return;
        }
        int i9 = this.f4038a;
        if (i9 == 1) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
        } else if (i9 == 3) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
        } else {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Starting install referrer service setup.");
            this.f4041d = new b(installReferrerStateListener);
            Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
            intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
            List<ResolveInfo> queryIntentServices = this.f4039b.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = queryIntentServices.get(0).serviceInfo) != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if ("com.android.vending".equals(str) && str2 != null && c()) {
                    if (this.f4039b.bindService(new Intent(intent), this.f4041d, 1)) {
                        InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service was bonded successfully.");
                        return;
                    }
                    InstallReferrerCommons.logWarn("InstallReferrerClient", "Connection to service is blocked.");
                    this.f4038a = 0;
                    installReferrerStateListener.onInstallReferrerSetupFinished(1);
                    return;
                }
                InstallReferrerCommons.logWarn("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
                this.f4038a = 0;
                installReferrerStateListener.onInstallReferrerSetupFinished(2);
                return;
            }
            this.f4038a = 0;
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service unavailable on device.");
            installReferrerStateListener.onInstallReferrerSetupFinished(2);
        }
    }
}
