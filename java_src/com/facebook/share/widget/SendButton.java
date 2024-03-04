package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.share.R$style;
/* loaded from: classes.dex */
public final class SendButton extends ShareButtonBase {
    public SendButton(Context context) {
        super(context, null, 0, AnalyticsEvents.EVENT_SEND_BUTTON_CREATE, AnalyticsEvents.EVENT_SEND_BUTTON_DID_TAP);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        return CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R$style.com_facebook_button_send;
    }

    @Override // com.facebook.share.widget.ShareButtonBase
    protected ShareDialog getDialog() {
        a aVar;
        if (getFragment() != null) {
            aVar = new a(getFragment(), getRequestCode());
        } else if (getNativeFragment() != null) {
            aVar = new a(getNativeFragment(), getRequestCode());
        } else {
            aVar = new a(getActivity(), getRequestCode());
        }
        aVar.setCallbackManager(getCallbackManager());
        return aVar;
    }

    public SendButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, AnalyticsEvents.EVENT_SEND_BUTTON_CREATE, AnalyticsEvents.EVENT_SEND_BUTTON_DID_TAP);
    }

    public SendButton(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9, AnalyticsEvents.EVENT_SEND_BUTTON_CREATE, AnalyticsEvents.EVENT_SEND_BUTTON_DID_TAP);
    }
}
