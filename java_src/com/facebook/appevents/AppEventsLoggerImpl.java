package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.webkit.WebView;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.AppEventsLoggerImpl;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.appevents.internal.Constants;
import com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InstallReferrerUtil;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0001\u0018\u0000 :2\u00020\u0001:\u0001:B%\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB#\b\u0000\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0018\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u0019J\"\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J;\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\u0002\u0010\u001dJ\u001a\u0010\u001e\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005J.\u0010 \u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J)\u0010 \u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010%J\u0088\u0001\u0010&\u001a\u00020\u00112\b\u0010'\u001a\u0004\u0018\u00010\u00052\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+2\b\u0010,\u001a\u0004\u0018\u00010\u00052\b\u0010-\u001a\u0004\u0018\u00010\u00052\b\u0010.\u001a\u0004\u0018\u00010\u00052\b\u0010/\u001a\u0004\u0018\u00010\u00052\b\u00100\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u00101\u001a\u0004\u0018\u00010\u00052\b\u00102\u001a\u0004\u0018\u00010\u00052\b\u00103\u001a\u0004\u0018\u00010\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u001a\u00104\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$J&\u00104\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J,\u00104\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u0013J$\u00105\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0018\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00172\b\u00108\u001a\u0004\u0018\u00010\u0005J'\u00109\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010%R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/facebook/appevents/AppEventsLoggerImpl;", "", "context", "Landroid/content/Context;", "applicationId", "", "accessToken", "Lcom/facebook/AccessToken;", "(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "activityName", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "accessTokenAppId", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "getApplicationId", "()Ljava/lang/String;", "contextName", "flush", "", "isValidForAccessToken", "", "logEvent", "eventName", PushConstants.PARAMS, "Landroid/os/Bundle;", "valueToSum", "", "isImplicitlyLogged", "currentSessionId", "Ljava/util/UUID;", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V", "logEventFromSE", "buttonText", "logEventImplicitly", "purchaseAmount", "Ljava/math/BigDecimal;", InAppPurchaseMetaData.KEY_CURRENCY, "Ljava/util/Currency;", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V", "logProductItem", "itemID", "availability", "Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;", "condition", "Lcom/facebook/appevents/AppEventsLogger$ProductCondition;", "description", "imageLink", "link", "title", "priceAmount", "gtin", "mpn", "brand", "logPurchase", "logPurchaseImplicitly", "logPushNotificationOpen", "payload", NativeProtocol.WEB_DIALOG_ACTION, "logSdkEvent", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsLoggerImpl {
    @NotNull
    private static final String ACCOUNT_KIT_EVENT_NAME_PREFIX = "fb_ak";
    @NotNull
    private static final String APP_EVENTS_KILLSWITCH = "app_events_killswitch";
    @NotNull
    private static final String APP_EVENT_NAME_PUSH_OPENED = "fb_mobile_push_opened";
    @NotNull
    private static final String APP_EVENT_PREFERENCES = "com.facebook.sdk.appEventPreferences";
    @NotNull
    private static final String APP_EVENT_PUSH_PARAMETER_ACTION = "fb_push_action";
    @NotNull
    private static final String APP_EVENT_PUSH_PARAMETER_CAMPAIGN = "fb_push_campaign";
    private static final int APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS = 86400;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String PUSH_PAYLOAD_CAMPAIGN_KEY = "campaign";
    @NotNull
    private static final String PUSH_PAYLOAD_KEY = "fb_push_payload";
    @NotNull
    private static final String TAG;
    @Nullable
    private static String anonymousAppDeviceGUID;
    @Nullable
    private static ScheduledThreadPoolExecutor backgroundExecutor;
    @NotNull
    private static AppEventsLogger.FlushBehavior flushBehaviorField;
    private static boolean isActivateAppEventRequested;
    @Nullable
    private static String pushNotificationsRegistrationIdField;
    @NotNull
    private static final Object staticLock;
    @NotNull
    private AccessTokenAppIdPair accessTokenAppId;
    @NotNull
    private final String contextName;

    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0007J\u0006\u0010\"\u001a\u00020\u0019J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0004H\u0007J\b\u0010%\u001a\u00020&H\u0007J\u0010\u0010'\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0007J\b\u0010(\u001a\u00020\u0013H\u0007J\n\u0010)\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010+\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010,\u001a\u00020\u0019H\u0002J\u0018\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u0004H\u0002J\b\u00104\u001a\u00020\u0019H\u0007J\u0010\u00105\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u0013H\u0007J\u0012\u00107\u001a\u00020\u00192\b\u00108\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u00109\u001a\u00020\u00192\b\u0010:\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;", "", "()V", "ACCOUNT_KIT_EVENT_NAME_PREFIX", "", "APP_EVENTS_KILLSWITCH", "APP_EVENT_NAME_PUSH_OPENED", "APP_EVENT_PREFERENCES", "APP_EVENT_PUSH_PARAMETER_ACTION", "APP_EVENT_PUSH_PARAMETER_CAMPAIGN", "APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS", "", "PUSH_PAYLOAD_CAMPAIGN_KEY", "PUSH_PAYLOAD_KEY", "TAG", "anonymousAppDeviceGUID", "backgroundExecutor", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "flushBehaviorField", "Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "isActivateAppEventRequested", "", "pushNotificationsRegistrationIdField", "staticLock", "activateApp", "", "application", "Landroid/app/Application;", "applicationId", "augmentWebView", "webView", "Landroid/webkit/WebView;", "context", "Landroid/content/Context;", "eagerFlush", "functionDEPRECATED", "extraMsg", "getAnalyticsExecutor", "Ljava/util/concurrent/Executor;", "getAnonymousAppDeviceGUID", "getFlushBehavior", "getInstallReferrer", "getPushNotificationsRegistrationId", "initializeLib", "initializeTimersIfNeeded", "logEvent", "event", "Lcom/facebook/appevents/AppEvent;", "accessTokenAppId", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "notifyDeveloperError", "message", "onContextStop", "setFlushBehavior", "flushBehavior", "setInstallReferrer", "referrer", "setPushNotificationsRegistrationId", "registrationId", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: initializeLib$lambda-4  reason: not valid java name */
        public static final void m70initializeLib$lambda4(Context context, AppEventsLoggerImpl logger) {
            Intrinsics.checkNotNullParameter(context, "$context");
            Intrinsics.checkNotNullParameter(logger, "$logger");
            Bundle bundle = new Bundle();
            String[] strArr = {"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.gamingservices.GamingServices", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"};
            String[] strArr2 = {"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "gamingservices_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"};
            int i9 = 0;
            int i10 = 0;
            while (true) {
                int i11 = i9 + 1;
                String str = strArr[i9];
                String str2 = strArr2[i9];
                try {
                    Class.forName(str);
                    bundle.putInt(str2, 1);
                    i10 |= 1 << i9;
                } catch (ClassNotFoundException unused) {
                }
                if (i11 > 10) {
                    break;
                }
                i9 = i11;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            if (sharedPreferences.getInt("kitsBitmask", 0) != i10) {
                sharedPreferences.edit().putInt("kitsBitmask", i10).apply();
                logger.logEventImplicitly(AnalyticsEvents.EVENT_SDK_INITIALIZE, null, bundle);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void initializeTimersIfNeeded() {
            synchronized (AppEventsLoggerImpl.access$getStaticLock$cp()) {
                if (AppEventsLoggerImpl.access$getBackgroundExecutor$cp() != null) {
                    return;
                }
                Companion companion = AppEventsLoggerImpl.Companion;
                AppEventsLoggerImpl.access$setBackgroundExecutor$cp(new ScheduledThreadPoolExecutor(1));
                Unit unit = Unit.INSTANCE;
                j jVar = new Runnable() { // from class: com.facebook.appevents.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppEventsLoggerImpl.Companion.m71initializeTimersIfNeeded$lambda6();
                    }
                };
                ScheduledThreadPoolExecutor access$getBackgroundExecutor$cp = AppEventsLoggerImpl.access$getBackgroundExecutor$cp();
                if (access$getBackgroundExecutor$cp != null) {
                    access$getBackgroundExecutor$cp.scheduleAtFixedRate(jVar, 0L, 86400L, TimeUnit.SECONDS);
                    return;
                }
                throw new IllegalStateException("Required value was null.".toString());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: initializeTimersIfNeeded$lambda-6  reason: not valid java name */
        public static final void m71initializeTimersIfNeeded$lambda6() {
            HashSet<String> hashSet = new HashSet();
            AppEventQueue appEventQueue = AppEventQueue.INSTANCE;
            for (AccessTokenAppIdPair accessTokenAppIdPair : AppEventQueue.getKeySet()) {
                hashSet.add(accessTokenAppIdPair.getApplicationId());
            }
            for (String str : hashSet) {
                FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                FetchedAppSettingsManager.queryAppSettings(str, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void logEvent(AppEvent appEvent, AccessTokenAppIdPair accessTokenAppIdPair) {
            AppEventQueue appEventQueue = AppEventQueue.INSTANCE;
            AppEventQueue.add(accessTokenAppIdPair, appEvent);
            FeatureManager featureManager = FeatureManager.INSTANCE;
            if (FeatureManager.isEnabled(FeatureManager.Feature.OnDevicePostInstallEventProcessing)) {
                OnDeviceProcessingManager onDeviceProcessingManager = OnDeviceProcessingManager.INSTANCE;
                if (OnDeviceProcessingManager.isOnDeviceProcessingEnabled()) {
                    OnDeviceProcessingManager.sendCustomEventAsync(accessTokenAppIdPair.getApplicationId(), appEvent);
                }
            }
            if (appEvent.getIsImplicit() || AppEventsLoggerImpl.access$isActivateAppEventRequested$cp()) {
                return;
            }
            if (Intrinsics.areEqual(appEvent.getName(), AppEventsConstants.EVENT_NAME_ACTIVATED_APP)) {
                AppEventsLoggerImpl.access$setActivateAppEventRequested$cp(true);
            } else {
                Logger.Companion.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void notifyDeveloperError(String str) {
            Logger.Companion.log(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", str);
        }

        @JvmStatic
        public final void activateApp(@NotNull Application application, @Nullable String str) {
            Intrinsics.checkNotNullParameter(application, "application");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.isInitialized()) {
                AnalyticsUserIDStore analyticsUserIDStore = AnalyticsUserIDStore.INSTANCE;
                AnalyticsUserIDStore.initStore();
                UserDataStore userDataStore = UserDataStore.INSTANCE;
                UserDataStore.initStore();
                if (str == null) {
                    str = FacebookSdk.getApplicationId();
                }
                FacebookSdk.publishInstallAsync(application, str);
                ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
                ActivityLifecycleTracker.startTracking(application, str);
                return;
            }
            throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
        }

        @JvmStatic
        public final void augmentWebView(@NotNull WebView webView, @Nullable Context context) {
            List split$default;
            Intrinsics.checkNotNullParameter(webView, "webView");
            String RELEASE = Build.VERSION.RELEASE;
            Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
            split$default = StringsKt__StringsKt.split$default((CharSequence) RELEASE, new String[]{"."}, false, 0, 6, (Object) null);
            Object[] array = split$default.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            int parseInt = (strArr.length == 0) ^ true ? Integer.parseInt(strArr[0]) : 0;
            int parseInt2 = strArr.length > 1 ? Integer.parseInt(strArr[1]) : 0;
            if (parseInt >= 4 && (parseInt != 4 || parseInt2 > 1)) {
                FacebookSDKJSInterface facebookSDKJSInterface = new FacebookSDKJSInterface(context);
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                webView.addJavascriptInterface(facebookSDKJSInterface, Intrinsics.stringPlus("fbmq_", FacebookSdk.getApplicationId()));
                return;
            }
            Logger.Companion.log(LoggingBehavior.DEVELOPER_ERRORS, AppEventsLoggerImpl.access$getTAG$cp(), "augmentWebView is only available for Android SDK version >= 17 on devices running Android >= 4.2");
        }

        public final void eagerFlush() {
            if (getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                AppEventQueue appEventQueue = AppEventQueue.INSTANCE;
                AppEventQueue.flush(FlushReason.EAGER_FLUSHING_EVENT);
            }
        }

        @JvmStatic
        public final void functionDEPRECATED(@NotNull String extraMsg) {
            Intrinsics.checkNotNullParameter(extraMsg, "extraMsg");
            Log.w(AppEventsLoggerImpl.access$getTAG$cp(), Intrinsics.stringPlus("This function is deprecated. ", extraMsg));
        }

        @JvmStatic
        @NotNull
        public final Executor getAnalyticsExecutor() {
            if (AppEventsLoggerImpl.access$getBackgroundExecutor$cp() == null) {
                initializeTimersIfNeeded();
            }
            ScheduledThreadPoolExecutor access$getBackgroundExecutor$cp = AppEventsLoggerImpl.access$getBackgroundExecutor$cp();
            if (access$getBackgroundExecutor$cp != null) {
                return access$getBackgroundExecutor$cp;
            }
            throw new IllegalStateException("Required value was null.".toString());
        }

        @JvmStatic
        @NotNull
        public final String getAnonymousAppDeviceGUID(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (AppEventsLoggerImpl.access$getAnonymousAppDeviceGUID$cp() == null) {
                synchronized (AppEventsLoggerImpl.access$getStaticLock$cp()) {
                    if (AppEventsLoggerImpl.access$getAnonymousAppDeviceGUID$cp() == null) {
                        SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
                        Companion companion = AppEventsLoggerImpl.Companion;
                        AppEventsLoggerImpl.access$setAnonymousAppDeviceGUID$cp(sharedPreferences.getString("anonymousAppDeviceGUID", null));
                        if (AppEventsLoggerImpl.access$getAnonymousAppDeviceGUID$cp() == null) {
                            UUID randomUUID = UUID.randomUUID();
                            Intrinsics.checkNotNullExpressionValue(randomUUID, "randomUUID()");
                            AppEventsLoggerImpl.access$setAnonymousAppDeviceGUID$cp(Intrinsics.stringPlus("XZ", randomUUID));
                            context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", AppEventsLoggerImpl.access$getAnonymousAppDeviceGUID$cp()).apply();
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            String access$getAnonymousAppDeviceGUID$cp = AppEventsLoggerImpl.access$getAnonymousAppDeviceGUID$cp();
            if (access$getAnonymousAppDeviceGUID$cp != null) {
                return access$getAnonymousAppDeviceGUID$cp;
            }
            throw new IllegalStateException("Required value was null.".toString());
        }

        @JvmStatic
        @NotNull
        public final AppEventsLogger.FlushBehavior getFlushBehavior() {
            AppEventsLogger.FlushBehavior access$getFlushBehaviorField$cp;
            synchronized (AppEventsLoggerImpl.access$getStaticLock$cp()) {
                access$getFlushBehaviorField$cp = AppEventsLoggerImpl.access$getFlushBehaviorField$cp();
            }
            return access$getFlushBehaviorField$cp;
        }

        @JvmStatic
        @Nullable
        public final String getInstallReferrer() {
            InstallReferrerUtil installReferrerUtil = InstallReferrerUtil.INSTANCE;
            InstallReferrerUtil.tryUpdateReferrerInfo(new InstallReferrerUtil.Callback() { // from class: com.facebook.appevents.AppEventsLoggerImpl$Companion$getInstallReferrer$1
                @Override // com.facebook.internal.InstallReferrerUtil.Callback
                public void onReceiveReferrerUrl(@Nullable String str) {
                    AppEventsLoggerImpl.Companion.setInstallReferrer(str);
                }
            });
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            return FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
        }

        @JvmStatic
        @Nullable
        public final String getPushNotificationsRegistrationId() {
            String access$getPushNotificationsRegistrationIdField$cp;
            synchronized (AppEventsLoggerImpl.access$getStaticLock$cp()) {
                access$getPushNotificationsRegistrationIdField$cp = AppEventsLoggerImpl.access$getPushNotificationsRegistrationIdField$cp();
            }
            return access$getPushNotificationsRegistrationIdField$cp;
        }

        @JvmStatic
        public final void initializeLib(@NotNull final Context context, @Nullable String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.getAutoLogAppEventsEnabled()) {
                final AppEventsLoggerImpl appEventsLoggerImpl = new AppEventsLoggerImpl(context, str, (AccessToken) null);
                ScheduledThreadPoolExecutor access$getBackgroundExecutor$cp = AppEventsLoggerImpl.access$getBackgroundExecutor$cp();
                if (access$getBackgroundExecutor$cp == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                access$getBackgroundExecutor$cp.execute(new Runnable() { // from class: com.facebook.appevents.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppEventsLoggerImpl.Companion.m70initializeLib$lambda4(context, appEventsLoggerImpl);
                    }
                });
            }
        }

        @JvmStatic
        public final void onContextStop() {
            AppEventQueue appEventQueue = AppEventQueue.INSTANCE;
            AppEventQueue.persistToDisk();
        }

        @JvmStatic
        public final void setFlushBehavior(@NotNull AppEventsLogger.FlushBehavior flushBehavior) {
            Intrinsics.checkNotNullParameter(flushBehavior, "flushBehavior");
            synchronized (AppEventsLoggerImpl.access$getStaticLock$cp()) {
                Companion companion = AppEventsLoggerImpl.Companion;
                AppEventsLoggerImpl.access$setFlushBehaviorField$cp(flushBehavior);
                Unit unit = Unit.INSTANCE;
            }
        }

        @JvmStatic
        public final void setInstallReferrer(@Nullable String str) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            SharedPreferences sharedPreferences = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            if (str != null) {
                sharedPreferences.edit().putString("install_referrer", str).apply();
            }
        }

        @JvmStatic
        public final void setPushNotificationsRegistrationId(@Nullable String str) {
            synchronized (AppEventsLoggerImpl.access$getStaticLock$cp()) {
                Utility utility = Utility.INSTANCE;
                if (!Utility.stringsEqualOrEmpty(AppEventsLoggerImpl.access$getPushNotificationsRegistrationIdField$cp(), str)) {
                    Companion companion = AppEventsLoggerImpl.Companion;
                    AppEventsLoggerImpl.access$setPushNotificationsRegistrationIdField$cp(str);
                    FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                    AppEventsLoggerImpl appEventsLoggerImpl = new AppEventsLoggerImpl(FacebookSdk.getApplicationContext(), (String) null, (AccessToken) null);
                    appEventsLoggerImpl.logEvent(AppEventsConstants.EVENT_NAME_PUSH_TOKEN_OBTAINED);
                    if (companion.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                        appEventsLoggerImpl.flush();
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    static {
        String canonicalName = AppEventsLoggerImpl.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "com.facebook.appevents.AppEventsLoggerImpl";
        }
        TAG = canonicalName;
        flushBehaviorField = AppEventsLogger.FlushBehavior.AUTO;
        staticLock = new Object();
    }

    public AppEventsLoggerImpl(@NotNull String activityName, @Nullable String str, @Nullable AccessToken accessToken) {
        Intrinsics.checkNotNullParameter(activityName, "activityName");
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        this.contextName = activityName;
        accessToken = accessToken == null ? AccessToken.Companion.getCurrentAccessToken() : accessToken;
        if (accessToken == null || accessToken.isExpired() || !(str == null || Intrinsics.areEqual(str, accessToken.getApplicationId()))) {
            if (str == null) {
                Utility utility = Utility.INSTANCE;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                str = Utility.getMetadataApplicationId(FacebookSdk.getApplicationContext());
            }
            if (str != null) {
                this.accessTokenAppId = new AccessTokenAppIdPair(null, str);
            } else {
                throw new IllegalStateException("Required value was null.".toString());
            }
        } else {
            this.accessTokenAppId = new AccessTokenAppIdPair(accessToken);
        }
        Companion.initializeTimersIfNeeded();
    }

    public static final /* synthetic */ String access$getAnonymousAppDeviceGUID$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return anonymousAppDeviceGUID;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ ScheduledThreadPoolExecutor access$getBackgroundExecutor$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return backgroundExecutor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ AppEventsLogger.FlushBehavior access$getFlushBehaviorField$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return flushBehaviorField;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getPushNotificationsRegistrationIdField$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return pushNotificationsRegistrationIdField;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ Object access$getStaticLock$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return staticLock;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ boolean access$isActivateAppEventRequested$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return false;
        }
        try {
            return isActivateAppEventRequested;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return false;
        }
    }

    public static final /* synthetic */ void access$setActivateAppEventRequested$cp(boolean z10) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            isActivateAppEventRequested = z10;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    public static final /* synthetic */ void access$setAnonymousAppDeviceGUID$cp(String str) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            anonymousAppDeviceGUID = str;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    public static final /* synthetic */ void access$setBackgroundExecutor$cp(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            backgroundExecutor = scheduledThreadPoolExecutor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    public static final /* synthetic */ void access$setFlushBehaviorField$cp(AppEventsLogger.FlushBehavior flushBehavior) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            flushBehaviorField = flushBehavior;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    public static final /* synthetic */ void access$setPushNotificationsRegistrationIdField$cp(String str) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            pushNotificationsRegistrationIdField = str;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    public static final void activateApp(@NotNull Application application, @Nullable String str) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.activateApp(application, str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    public static final void augmentWebView(@NotNull WebView webView, @Nullable Context context) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.augmentWebView(webView, context);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    public static final void functionDEPRECATED(@NotNull String str) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.functionDEPRECATED(str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    @NotNull
    public static final Executor getAnalyticsExecutor() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return Companion.getAnalyticsExecutor();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String getAnonymousAppDeviceGUID(@NotNull Context context) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return Companion.getAnonymousAppDeviceGUID(context);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final AppEventsLogger.FlushBehavior getFlushBehavior() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return Companion.getFlushBehavior();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final String getInstallReferrer() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return Companion.getInstallReferrer();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final String getPushNotificationsRegistrationId() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return Companion.getPushNotificationsRegistrationId();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
            return null;
        }
    }

    @JvmStatic
    public static final void initializeLib(@NotNull Context context, @Nullable String str) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.initializeLib(context, str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    public static /* synthetic */ void logEvent$default(AppEventsLoggerImpl appEventsLoggerImpl, String str, Bundle bundle, int i9, Object obj) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        if ((i9 & 2) != 0) {
            bundle = null;
        }
        try {
            appEventsLoggerImpl.logEvent(str, bundle);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    public static /* synthetic */ void logPurchase$default(AppEventsLoggerImpl appEventsLoggerImpl, BigDecimal bigDecimal, Currency currency, Bundle bundle, int i9, Object obj) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        if ((i9 & 4) != 0) {
            bundle = null;
        }
        try {
            appEventsLoggerImpl.logPurchase(bigDecimal, currency, bundle);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    public static final void onContextStop() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.onContextStop();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    public static final void setFlushBehavior(@NotNull AppEventsLogger.FlushBehavior flushBehavior) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.setFlushBehavior(flushBehavior);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    public static final void setInstallReferrer(@Nullable String str) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.setInstallReferrer(str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    @JvmStatic
    public static final void setPushNotificationsRegistrationId(@Nullable String str) {
        if (CrashShieldHandler.isObjectCrashing(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            Companion.setPushNotificationsRegistrationId(str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsLoggerImpl.class);
        }
    }

    public final void flush() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            AppEventQueue appEventQueue = AppEventQueue.INSTANCE;
            AppEventQueue.flush(FlushReason.EXPLICIT);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @NotNull
    public final String getApplicationId() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.accessTokenAppId.getApplicationId();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    public final boolean isValidForAccessToken(@NotNull AccessToken accessToken) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            return Intrinsics.areEqual(this.accessTokenAppId, new AccessTokenAppIdPair(accessToken));
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    public final void logEvent(@Nullable String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            logEvent(str, (Bundle) null);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logEventFromSE(@Nullable String str, @Nullable String str2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_is_suggested_event", "1");
            bundle.putString("_button_text", str2);
            logEvent(str, bundle);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logEventImplicitly(@Nullable String str, @Nullable Double d10, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
            logEvent(str, d10, bundle, true, ActivityLifecycleTracker.getCurrentSessionGuid());
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logProductItem(@Nullable String str, @Nullable AppEventsLogger.ProductAvailability productAvailability, @Nullable AppEventsLogger.ProductCondition productCondition, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (str == null) {
                Companion.notifyDeveloperError("itemID cannot be null");
            } else if (productAvailability == null) {
                Companion.notifyDeveloperError("availability cannot be null");
            } else if (productCondition == null) {
                Companion.notifyDeveloperError("condition cannot be null");
            } else if (str2 == null) {
                Companion.notifyDeveloperError("description cannot be null");
            } else if (str3 == null) {
                Companion.notifyDeveloperError("imageLink cannot be null");
            } else if (str4 == null) {
                Companion.notifyDeveloperError("link cannot be null");
            } else if (str5 == null) {
                Companion.notifyDeveloperError("title cannot be null");
            } else if (bigDecimal == null) {
                Companion.notifyDeveloperError("priceAmount cannot be null");
            } else if (currency == null) {
                Companion.notifyDeveloperError("currency cannot be null");
            } else if (str6 == null && str7 == null && str8 == null) {
                Companion.notifyDeveloperError("Either gtin, mpn or brand is required");
            } else {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_ITEM_ID, str);
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_AVAILABILITY, productAvailability.name());
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_CONDITION, productCondition.name());
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_DESCRIPTION, str2);
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_IMAGE_LINK, str3);
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_LINK, str4);
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_TITLE, str5);
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_PRICE_AMOUNT, bigDecimal.setScale(3, 4).toString());
                bundle.putString(Constants.EVENT_PARAM_PRODUCT_PRICE_CURRENCY, currency.getCurrencyCode());
                if (str6 != null) {
                    bundle.putString(Constants.EVENT_PARAM_PRODUCT_GTIN, str6);
                }
                if (str7 != null) {
                    bundle.putString(Constants.EVENT_PARAM_PRODUCT_MPN, str7);
                }
                if (str8 != null) {
                    bundle.putString(Constants.EVENT_PARAM_PRODUCT_BRAND, str8);
                }
                logEvent(AppEventsConstants.EVENT_NAME_PRODUCT_CATALOG_UPDATE, bundle);
                Companion.eagerFlush();
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logPurchase(@Nullable BigDecimal bigDecimal, @Nullable Currency currency) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            logPurchase(bigDecimal, currency, null);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logPurchaseImplicitly(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            logPurchase(bigDecimal, currency, bundle, true);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logPushNotificationOpen(@NotNull Bundle payload, @Nullable String str) {
        String string;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(payload, "payload");
            String str2 = null;
            try {
                string = payload.getString(PUSH_PAYLOAD_KEY);
                Utility utility = Utility.INSTANCE;
            } catch (JSONException unused) {
            }
            if (Utility.isNullOrEmpty(string)) {
                return;
            }
            str2 = new JSONObject(string).getString(PUSH_PAYLOAD_CAMPAIGN_KEY);
            if (str2 == null) {
                Logger.Companion.log(LoggingBehavior.DEVELOPER_ERRORS, TAG, "Malformed payload specified for logging a push notification open.");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString(APP_EVENT_PUSH_PARAMETER_CAMPAIGN, str2);
            if (str != null) {
                bundle.putString(APP_EVENT_PUSH_PARAMETER_ACTION, str);
            }
            logEvent(APP_EVENT_NAME_PUSH_OPENED, bundle);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logSdkEvent(@NotNull String eventName, @Nullable Double d10, @Nullable Bundle bundle) {
        boolean startsWith$default;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(eventName, ACCOUNT_KIT_EVENT_NAME_PREFIX, false, 2, null);
            if (!startsWith$default) {
                Log.e(TAG, "logSdkEvent is deprecated and only supports account kit for legacy, please use logEvent instead");
                return;
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.getAutoLogAppEventsEnabled()) {
                ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
                logEvent(eventName, d10, bundle, true, ActivityLifecycleTracker.getCurrentSessionGuid());
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logEvent(@Nullable String str, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
            logEvent(str, null, bundle, false, ActivityLifecycleTracker.getCurrentSessionGuid());
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logEventImplicitly(@Nullable String str, @Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (bigDecimal != null && currency != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                Bundle bundle2 = bundle;
                bundle2.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, currency.getCurrencyCode());
                Double valueOf = Double.valueOf(bigDecimal.doubleValue());
                ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
                logEvent(str, valueOf, bundle2, true, ActivityLifecycleTracker.getCurrentSessionGuid());
                return;
            }
            Utility utility = Utility.INSTANCE;
            Utility.logd(TAG, "purchaseAmount and currency cannot be null");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logPurchase(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            AutomaticAnalyticsLogger automaticAnalyticsLogger = AutomaticAnalyticsLogger.INSTANCE;
            if (AutomaticAnalyticsLogger.isImplicitPurchaseLoggingEnabled()) {
                Log.w(TAG, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don't log duplicate events");
            }
            logPurchase(bigDecimal, currency, bundle, false);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logEvent(@Nullable String str, double d10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            logEvent(str, d10, null);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logEvent(@Nullable String str, double d10, @Nullable Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Double valueOf = Double.valueOf(d10);
            ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
            logEvent(str, valueOf, bundle, false, ActivityLifecycleTracker.getCurrentSessionGuid());
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logPurchase(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle, boolean z10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (bigDecimal == null) {
                Companion.notifyDeveloperError("purchaseAmount cannot be null");
            } else if (currency == null) {
                Companion.notifyDeveloperError("currency cannot be null");
            } else {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                Bundle bundle2 = bundle;
                bundle2.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, currency.getCurrencyCode());
                Double valueOf = Double.valueOf(bigDecimal.doubleValue());
                ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
                logEvent(AppEventsConstants.EVENT_NAME_PURCHASED, valueOf, bundle2, z10, ActivityLifecycleTracker.getCurrentSessionGuid());
                Companion.eagerFlush();
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public final void logEvent(@Nullable String str, @Nullable Double d10, @Nullable Bundle bundle, boolean z10, @Nullable UUID uuid) {
        if (CrashShieldHandler.isObjectCrashing(this) || str == null) {
            return;
        }
        try {
            if (str.length() == 0) {
                return;
            }
            FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FetchedAppGateKeepersManager.getGateKeeperForKey(APP_EVENTS_KILLSWITCH, FacebookSdk.getApplicationId(), false)) {
                Logger.Companion.log(LoggingBehavior.APP_EVENTS, "AppEvents", "KillSwitch is enabled and fail to log app event: %s", str);
                return;
            }
            try {
                String str2 = this.contextName;
                ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
                Companion.logEvent(new AppEvent(str2, str, d10, bundle, z10, ActivityLifecycleTracker.isInBackground(), uuid), this.accessTokenAppId);
            } catch (FacebookException e10) {
                Logger.Companion.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Invalid app event: %s", e10.toString());
            } catch (JSONException e11) {
                Logger.Companion.log(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e11.toString());
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppEventsLoggerImpl(@Nullable Context context, @Nullable String str, @Nullable AccessToken accessToken) {
        this(Utility.getActivityName(context), str, accessToken);
        Utility utility = Utility.INSTANCE;
    }
}
