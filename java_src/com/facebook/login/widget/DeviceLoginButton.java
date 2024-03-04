package com.facebook.login.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.i;
import com.facebook.login.widget.LoginButton;
/* loaded from: classes.dex */
public class DeviceLoginButton extends LoginButton {

    /* renamed from: s  reason: collision with root package name */
    private Uri f5017s;

    /* loaded from: classes.dex */
    private class b extends LoginButton.f {
        private b() {
            super();
        }

        @Override // com.facebook.login.widget.LoginButton.f
        protected LoginManager a() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                i f10 = i.f();
                f10.setDefaultAudience(DeviceLoginButton.this.getDefaultAudience());
                f10.setLoginBehavior(LoginBehavior.DEVICE_AUTH);
                f10.g(DeviceLoginButton.this.getDeviceRedirectUri());
                return f10;
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        }
    }

    public DeviceLoginButton(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }

    public Uri getDeviceRedirectUri() {
        return this.f5017s;
    }

    @Override // com.facebook.login.widget.LoginButton
    protected LoginButton.f getNewLoginClickListener() {
        return new b();
    }

    public void setDeviceRedirectUri(Uri uri) {
        this.f5017s = uri;
    }

    public DeviceLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DeviceLoginButton(Context context) {
        super(context);
    }
}
