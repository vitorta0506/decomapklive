package com.appsflyer.internal;

import android.content.Context;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
/* loaded from: classes.dex */
public abstract class AFe1iSDK extends Observable {
    final Runnable AFInAppEventType;
    long AFLogger;
    public final String afErrorLog;
    public final String valueOf;
    public final Map<String, Object> AFInAppEventParameterName = new HashMap();
    public AFa1xSDK AFKeystoreWrapper = AFa1xSDK.NOT_STARTED;

    /* renamed from: com.appsflyer.internal.AFe1iSDK$5  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass5 implements Observer {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass5() {
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            AFe1iSDK.this.AFInAppEventType.run();
        }
    }

    /* loaded from: classes.dex */
    public enum AFa1xSDK {
        NOT_STARTED,
        STARTED,
        FINISHED
    }

    public AFe1iSDK(String str, String str2, Runnable runnable) {
        this.AFInAppEventType = runnable;
        this.valueOf = str2;
        this.afErrorLog = str;
    }

    public abstract void AFKeystoreWrapper(Context context);

    public final void valueOf() {
        this.AFInAppEventParameterName.put(ShareConstants.FEED_SOURCE_PARAM, this.valueOf);
        this.AFInAppEventParameterName.put("type", this.afErrorLog);
        this.AFInAppEventParameterName.put("latency", Long.valueOf(System.currentTimeMillis() - this.AFLogger));
        this.AFKeystoreWrapper = AFa1xSDK.FINISHED;
        setChanged();
        notifyObservers();
    }
}
