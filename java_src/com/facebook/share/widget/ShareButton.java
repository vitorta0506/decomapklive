package com.facebook.share.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.content.res.AppCompatResources;
import com.facebook.common.R$drawable;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.share.R$style;
/* loaded from: classes.dex */
public final class ShareButton extends ShareButtonBase {
    public ShareButton(Context context) {
        super(context, null, 0, AnalyticsEvents.EVENT_SHARE_BUTTON_CREATE, AnalyticsEvents.EVENT_SHARE_BUTTON_DID_TAP);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.share.widget.ShareButtonBase, com.facebook.FacebookButtonBase
    public void configureButton(Context context, AttributeSet attributeSet, int i9, int i10) {
        super.configureButton(context, attributeSet, i9, i10);
        setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), R$drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        return CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R$style.com_facebook_button_share;
    }

    @Override // com.facebook.share.widget.ShareButtonBase
    protected ShareDialog getDialog() {
        ShareDialog shareDialog;
        if (getFragment() != null) {
            shareDialog = new ShareDialog(getFragment(), getRequestCode());
        } else if (getNativeFragment() != null) {
            shareDialog = new ShareDialog(getNativeFragment(), getRequestCode());
        } else {
            shareDialog = new ShareDialog(getActivity(), getRequestCode());
        }
        shareDialog.setCallbackManager(getCallbackManager());
        return shareDialog;
    }

    public ShareButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, AnalyticsEvents.EVENT_SHARE_BUTTON_CREATE, AnalyticsEvents.EVENT_SHARE_BUTTON_DID_TAP);
    }

    public ShareButton(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9, AnalyticsEvents.EVENT_SHARE_BUTTON_CREATE, AnalyticsEvents.EVENT_SHARE_BUTTON_DID_TAP);
    }
}
