package com.facebook.share.widget;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.facebook.FacebookCallback;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.share.Sharer;
import com.facebook.share.internal.LegacyNativeDialogParameters;
import com.facebook.share.internal.MessageDialogFeature;
import com.facebook.share.internal.NativeDialogParameters;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class a extends ShareDialog {

    /* renamed from: b  reason: collision with root package name */
    private static final int f5102b = CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();

    /* renamed from: a  reason: collision with root package name */
    private boolean f5103a;

    /* loaded from: classes.dex */
    private class b extends FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.facebook.share.widget.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0071a implements DialogPresenter.ParameterProvider {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AppCall f5105a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ShareContent f5106b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ boolean f5107c;

            C0071a(AppCall appCall, ShareContent shareContent, boolean z10) {
                this.f5105a = appCall;
                this.f5106b = shareContent;
                this.f5107c = z10;
            }

            @Override // com.facebook.internal.DialogPresenter.ParameterProvider
            public Bundle getLegacyParameters() {
                return LegacyNativeDialogParameters.create(this.f5105a.getCallId(), this.f5106b, this.f5107c);
            }

            @Override // com.facebook.internal.DialogPresenter.ParameterProvider
            public Bundle getParameters() {
                return NativeDialogParameters.create(this.f5105a.getCallId(), this.f5106b, this.f5107c);
            }
        }

        private b() {
            super(a.this);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public /* bridge */ /* synthetic */ boolean canShow(ShareContent<?, ?> shareContent, boolean z10) {
            return canShow2((ShareContent) shareContent, z10);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public /* bridge */ /* synthetic */ AppCall createAppCall(ShareContent<?, ?> shareContent) {
            return createAppCall2((ShareContent) shareContent);
        }

        /* renamed from: canShow  reason: avoid collision after fix types in other method */
        public boolean canShow2(ShareContent shareContent, boolean z10) {
            return shareContent != null && a.canShow((Class<? extends ShareContent<?, ?>>) shareContent.getClass());
        }

        /* renamed from: createAppCall  reason: avoid collision after fix types in other method */
        public AppCall createAppCall2(ShareContent shareContent) {
            ShareContentValidation.validateForMessage(shareContent);
            AppCall createBaseAppCall = a.this.createBaseAppCall();
            boolean shouldFailOnDataError = a.this.getShouldFailOnDataError();
            a.e(a.this.getActivityContext(), shareContent, createBaseAppCall);
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new C0071a(createBaseAppCall, shareContent, shouldFailOnDataError), a.d(shareContent.getClass()));
            return createBaseAppCall;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Activity activity, int i9) {
        super(activity, i9);
        this.f5103a = false;
        ShareInternalUtility.registerStaticShareCallback(i9);
    }

    public static boolean canShow(Class<? extends ShareContent<?, ?>> cls) {
        DialogFeature d10 = d(cls);
        return d10 != null && DialogPresenter.canPresentNativeDialogWithFeature(d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DialogFeature d(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.MESSAGE_DIALOG;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Context context, ShareContent shareContent, AppCall appCall) {
        String str;
        DialogFeature d10 = d(shareContent.getClass());
        if (d10 == MessageDialogFeature.MESSAGE_DIALOG) {
            str = "status";
        } else if (d10 == MessageDialogFeature.MESSENGER_GENERIC_TEMPLATE) {
            str = AnalyticsEvents.PARAMETER_SHARE_MESSENGER_GENERIC_TEMPLATE;
        } else {
            str = d10 == MessageDialogFeature.MESSENGER_MEDIA_TEMPLATE ? AnalyticsEvents.PARAMETER_SHARE_MESSENGER_MEDIA_TEMPLATE : "unknown";
        }
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(context);
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_TYPE, str);
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_UUID, appCall.getCallId().toString());
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PAGE_ID, shareContent.getPageId());
        internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_SHARE_MESSENGER_DIALOG_SHOW, bundle);
    }

    @Override // com.facebook.share.widget.ShareDialog, com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    @Override // com.facebook.share.widget.ShareDialog, com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<ShareContent<?, ?>, Sharer.Result>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b());
        return arrayList;
    }

    @Override // com.facebook.share.widget.ShareDialog, com.facebook.share.Sharer
    public boolean getShouldFailOnDataError() {
        return this.f5103a;
    }

    @Override // com.facebook.share.widget.ShareDialog, com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<Sharer.Result> facebookCallback) {
        ShareInternalUtility.registerSharerCallback(getRequestCode(), callbackManagerImpl, facebookCallback);
    }

    @Override // com.facebook.share.widget.ShareDialog, com.facebook.share.Sharer
    public void setShouldFailOnDataError(boolean z10) {
        this.f5103a = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Fragment fragment, int i9) {
        this(new FragmentWrapper(fragment), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(android.app.Fragment fragment, int i9) {
        this(new FragmentWrapper(fragment), i9);
    }

    private a(FragmentWrapper fragmentWrapper, int i9) {
        super(fragmentWrapper, i9);
        this.f5103a = false;
        ShareInternalUtility.registerStaticShareCallback(i9);
    }
}
