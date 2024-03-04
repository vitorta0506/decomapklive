package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFe1iSDK;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class AFb1oSDK extends AFe1zSDK {
    @VisibleForTesting
    private static String AFLogger$LogLevel = "https://%sdlsdk.%s/v1.0/android/";
    public static long afWarnLog;
    private final CountDownLatch AFVersionDeclaration;
    private final AFe1fSDK AppsFlyer2dXConversionCallback;
    private final List<AFe1iSDK> init;
    private final AFb1cSDK onAppOpenAttributionNative;
    private final AFd1dSDK onAttributionFailureNative;
    private int onConversionDataFail;
    private int onDeepLinkingNative;
    private final AFd1lSDK onInstallConversionDataLoadedNative;
    private final ExecutorService onInstallConversionFailureNative;
    private int onResponseErrorNative;
    private boolean onResponseNative;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.AFb1oSDK$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] AFInAppEventParameterName;

        static {
            int[] iArr = new int[AFe1iSDK.AFa1xSDK.values().length];
            AFInAppEventParameterName = iArr;
            try {
                iArr[AFe1iSDK.AFa1xSDK.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                AFInAppEventParameterName[AFe1iSDK.AFa1xSDK.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AFb1oSDK(Context context, AFc1ySDK aFc1ySDK) {
        super(null, AFLogger$LogLevel, Boolean.FALSE, Boolean.TRUE, null, context);
        this.init = new ArrayList();
        this.AFVersionDeclaration = new CountDownLatch(1);
        this.onAttributionFailureNative = aFc1ySDK.afDebugLog();
        this.onAppOpenAttributionNative = aFc1ySDK.valueOf();
        this.onInstallConversionDataLoadedNative = aFc1ySDK.AFLogger$LogLevel();
        this.AppsFlyer2dXConversionCallback = aFc1ySDK.getLevel();
        this.onInstallConversionFailureNative = aFc1ySDK.AFInAppEventType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0110 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void AFLogger$LogLevel() {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1oSDK.AFLogger$LogLevel():void");
    }

    private boolean getLevel() {
        List list = (List) this.values.get("referrers");
        return (list != null ? list.size() : 0) < this.onDeepLinkingNative && !this.values.containsKey("referrers");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void values(AFe1iSDK aFe1iSDK) {
        if (valueOf(aFe1iSDK)) {
            this.init.add(aFe1iSDK);
            this.AFVersionDeclaration.countDown();
            StringBuilder sb2 = new StringBuilder("[DDL] Added non-organic ");
            sb2.append(aFe1iSDK.getClass().getSimpleName());
            AFLogger.afDebugLog(sb2.toString());
            return;
        }
        int i9 = this.onConversionDataFail + 1;
        this.onConversionDataFail = i9;
        if (i9 == this.onDeepLinkingNative) {
            this.AFVersionDeclaration.countDown();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.deeplink.DeepLinkResult afRDLog() {
        /*
            r5 = this;
            java.lang.String r0 = "[DDL] start"
            com.appsflyer.AFLogger.afDebugLog(r0)
            java.util.concurrent.FutureTask r0 = new java.util.concurrent.FutureTask
            com.appsflyer.internal.AFb1oSDK$5 r1 = new com.appsflyer.internal.AFb1oSDK$5
            r1.<init>()
            r0.<init>(r1)
            java.util.concurrent.ExecutorService r1 = r5.onInstallConversionFailureNative
            r1.execute(r0)
            r1 = 0
            long r2 = com.appsflyer.internal.AFb1oSDK.afWarnLog     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            java.lang.Object r0 = r0.get(r2, r4)     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            com.appsflyer.deeplink.DeepLinkResult r0 = (com.appsflyer.deeplink.DeepLinkResult) r0     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            com.appsflyer.internal.AFd1dSDK r2 = r5.onAttributionFailureNative     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            long r3 = com.appsflyer.internal.AFb1oSDK.afWarnLog     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            r2.AFInAppEventType(r0, r3)     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            com.appsflyer.internal.AFb1kSDK.AFInAppEventType(r0)     // Catch: java.util.concurrent.TimeoutException -> L2a java.lang.InterruptedException -> L5e java.util.concurrent.ExecutionException -> L60
            return r0
        L2a:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "[DDL] Timeout, didn't manage to find deferred deep link after "
            r0.<init>(r2)
            int r2 = r5.onResponseErrorNative
            r0.append(r2)
            java.lang.String r2 = " attempt(s) within "
            r0.append(r2)
            long r2 = com.appsflyer.internal.AFb1oSDK.afWarnLog
            r0.append(r2)
            java.lang.String r2 = " milliseconds"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            com.appsflyer.AFLogger.afDebugLog(r0)
            com.appsflyer.deeplink.DeepLinkResult r0 = new com.appsflyer.deeplink.DeepLinkResult
            com.appsflyer.deeplink.DeepLinkResult$Error r2 = com.appsflyer.deeplink.DeepLinkResult.Error.TIMEOUT
            r0.<init>(r1, r2)
            com.appsflyer.internal.AFd1dSDK r1 = r5.onAttributionFailureNative
            long r2 = com.appsflyer.internal.AFb1oSDK.afWarnLog
            r1.AFInAppEventType(r0, r2)
            com.appsflyer.internal.AFb1kSDK.AFInAppEventType(r0)
            goto L84
        L5e:
            r0 = move-exception
            goto L61
        L60:
            r0 = move-exception
        L61:
            r2 = 1
            java.lang.String r3 = "[DDL] Error occurred"
            com.appsflyer.AFLogger.afErrorLog(r3, r0, r2)
            com.appsflyer.deeplink.DeepLinkResult r2 = new com.appsflyer.deeplink.DeepLinkResult
            java.lang.Throwable r0 = r0.getCause()
            boolean r0 = r0 instanceof java.io.IOException
            if (r0 == 0) goto L74
            com.appsflyer.deeplink.DeepLinkResult$Error r0 = com.appsflyer.deeplink.DeepLinkResult.Error.NETWORK
            goto L76
        L74:
            com.appsflyer.deeplink.DeepLinkResult$Error r0 = com.appsflyer.deeplink.DeepLinkResult.Error.UNEXPECTED
        L76:
            r2.<init>(r1, r0)
            com.appsflyer.internal.AFd1dSDK r0 = r5.onAttributionFailureNative
            long r3 = com.appsflyer.internal.AFb1oSDK.afWarnLog
            r0.AFInAppEventType(r2, r3)
            com.appsflyer.internal.AFb1kSDK.AFInAppEventType(r2)
            r0 = r2
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1oSDK.afRDLog():com.appsflyer.deeplink.DeepLinkResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x016a, code lost:
        return new com.appsflyer.deeplink.DeepLinkResult(null, null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ com.appsflyer.deeplink.DeepLinkResult AFInAppEventType(com.appsflyer.internal.AFb1oSDK r12, android.content.Context r13) throws java.io.IOException, org.json.JSONException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1oSDK.AFInAppEventType(com.appsflyer.internal.AFb1oSDK, android.content.Context):com.appsflyer.deeplink.DeepLinkResult");
    }

    private static boolean valueOf(AFe1iSDK aFe1iSDK) {
        Long l10 = (Long) aFe1iSDK.AFInAppEventParameterName.get("click_ts");
        return l10 != null && System.currentTimeMillis() - TimeUnit.SECONDS.toMillis(l10.longValue()) < TimeUnit.DAYS.toMillis(1L);
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final AFc1lSDK AFInAppEventParameterName() {
        return AFc1lSDK.DLSDK;
    }

    @Nullable
    private Map<String, Object> valueOf(final AFa1qSDK aFa1qSDK) {
        Boolean bool;
        boolean z10 = false;
        if (aFa1qSDK != null && aFa1qSDK.valueOf != null && ((bool = aFa1qSDK.values) == null || !bool.booleanValue())) {
            z10 = true;
        }
        if (z10) {
            return new HashMap<String, Object>() { // from class: com.appsflyer.internal.AFb1oSDK.2
                {
                    put("type", "unhashed");
                    put("value", AFa1qSDK.this.valueOf);
                }
            };
        }
        return null;
    }

    static /* synthetic */ void values(AFb1oSDK aFb1oSDK) {
        AFe1iSDK[] AFKeystoreWrapper;
        ArrayList<AFe1iSDK> arrayList = new ArrayList();
        for (AFe1iSDK aFe1iSDK : aFb1oSDK.AppsFlyer2dXConversionCallback.AFKeystoreWrapper()) {
            if (aFe1iSDK != null && aFe1iSDK.AFKeystoreWrapper != AFe1iSDK.AFa1xSDK.NOT_STARTED) {
                arrayList.add(aFe1iSDK);
            }
        }
        aFb1oSDK.onDeepLinkingNative = arrayList.size();
        for (final AFe1iSDK aFe1iSDK2 : arrayList) {
            int i9 = AnonymousClass1.AFInAppEventParameterName[aFe1iSDK2.AFKeystoreWrapper.ordinal()];
            if (i9 == 1) {
                StringBuilder sb2 = new StringBuilder("[DDL] ");
                sb2.append(aFe1iSDK2.AFInAppEventParameterName.get(ShareConstants.FEED_SOURCE_PARAM));
                sb2.append(" referrer collected earlier");
                AFLogger.afDebugLog(sb2.toString());
                aFb1oSDK.values(aFe1iSDK2);
            } else if (i9 == 2) {
                aFe1iSDK2.addObserver(new Observer() { // from class: com.appsflyer.internal.AFb1oSDK.3
                    @Override // java.util.Observer
                    public final void update(Observable observable, Object obj) {
                        StringBuilder sb3 = new StringBuilder("[DDL] ");
                        sb3.append(aFe1iSDK2.AFInAppEventParameterName.get(ShareConstants.FEED_SOURCE_PARAM));
                        sb3.append(" referrer collected via observer");
                        AFLogger.afDebugLog(sb3.toString());
                        AFb1oSDK.this.values((AFe1iSDK) observable);
                    }
                });
            }
        }
    }
}
