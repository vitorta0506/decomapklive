package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.model.ShareContent;
/* loaded from: classes.dex */
public abstract class ShareButtonBase extends FacebookButtonBase {

    /* renamed from: a  reason: collision with root package name */
    private ShareContent f5097a;

    /* renamed from: b  reason: collision with root package name */
    private int f5098b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5099c;

    /* renamed from: d  reason: collision with root package name */
    private CallbackManager f5100d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                ShareButtonBase.this.callExternalOnClickListener(view);
                ShareButtonBase.this.getDialog().show(ShareButtonBase.this.getShareContent());
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareButtonBase(Context context, AttributeSet attributeSet, int i9, String str, String str2) {
        super(context, attributeSet, i9, 0, str, str2);
        this.f5098b = 0;
        this.f5099c = false;
        this.f5098b = isInEditMode() ? 0 : getDefaultRequestCode();
        d(false);
    }

    private void d(boolean z10) {
        setEnabled(z10);
        this.f5099c = false;
    }

    protected boolean c() {
        return getDialog().canShow((ShareDialog) getShareContent());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void configureButton(Context context, AttributeSet attributeSet, int i9, int i10) {
        super.configureButton(context, attributeSet, i9, i10);
        setInternalOnClickListener(getShareOnClickListener());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CallbackManager getCallbackManager() {
        return this.f5100d;
    }

    protected abstract ShareDialog getDialog();

    @Override // com.facebook.FacebookButtonBase
    public int getRequestCode() {
        return this.f5098b;
    }

    public ShareContent getShareContent() {
        return this.f5097a;
    }

    protected View.OnClickListener getShareOnClickListener() {
        return new a();
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f5099c = true;
    }

    protected void setRequestCode(int i9) {
        if (!FacebookSdk.isFacebookRequestCode(i9)) {
            this.f5098b = i9;
            return;
        }
        throw new IllegalArgumentException("Request code " + i9 + " cannot be within the range reserved by the Facebook SDK.");
    }

    public void setShareContent(ShareContent shareContent) {
        this.f5097a = shareContent;
        if (this.f5099c) {
            return;
        }
        d(c());
    }
}
