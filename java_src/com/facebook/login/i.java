package com.facebook.login;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.LoginClient;
import java.util.Collection;
/* loaded from: classes.dex */
public class i extends LoginManager {

    /* renamed from: c  reason: collision with root package name */
    private static volatile i f4997c;

    /* renamed from: a  reason: collision with root package name */
    private Uri f4998a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f4999b;

    public static i f() {
        if (CrashShieldHandler.isObjectCrashing(i.class)) {
            return null;
        }
        try {
            if (f4997c == null) {
                synchronized (i.class) {
                    if (f4997c == null) {
                        f4997c = new i();
                    }
                }
            }
            return f4997c;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, i.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.login.LoginManager
    public LoginClient.Request createLoginRequest(Collection<String> collection) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            LoginClient.Request createLoginRequest = super.createLoginRequest(collection);
            Uri e10 = e();
            if (e10 != null) {
                createLoginRequest.setDeviceRedirectUriString(e10.toString());
            }
            String d10 = d();
            if (d10 != null) {
                createLoginRequest.setDeviceAuthTargetUserId(d10);
            }
            return createLoginRequest;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @Nullable
    public String d() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.f4999b;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    public Uri e() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.f4998a;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    public void g(Uri uri) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.f4998a = uri;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }
}
