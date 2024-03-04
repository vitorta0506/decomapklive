package com.facebook.appevents.ondeviceprocessing;

import android.os.Bundle;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0007J\u001e\u0010\r\u001a\u00020\u000e2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;", "", "()V", "TAG", "", "buildEventsBundle", "Landroid/os/Bundle;", "eventType", "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;", "applicationId", "appEvents", "", "Lcom/facebook/appevents/AppEvent;", "buildEventsJson", "Lorg/json/JSONArray;", "includeImplicitEvents", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class RemoteServiceParametersHelper {
    @NotNull
    public static final RemoteServiceParametersHelper INSTANCE = new RemoteServiceParametersHelper();
    @NotNull
    private static final String TAG;

    static {
        String simpleName = RemoteServiceWrapper.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "RemoteServiceWrapper::class.java.simpleName");
        TAG = simpleName;
    }

    private RemoteServiceParametersHelper() {
    }

    @JvmStatic
    @Nullable
    public static final Bundle buildEventsBundle(@NotNull RemoteServiceWrapper.EventType eventType, @NotNull String applicationId, @NotNull List<AppEvent> appEvents) {
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceParametersHelper.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            Bundle bundle = new Bundle();
            bundle.putString("event", eventType.toString());
            bundle.putString("app_id", applicationId);
            if (RemoteServiceWrapper.EventType.CUSTOM_APP_EVENTS == eventType) {
                JSONArray buildEventsJson = INSTANCE.buildEventsJson(appEvents, applicationId);
                if (buildEventsJson.length() == 0) {
                    return null;
                }
                bundle.putString("custom_events", buildEventsJson.toString());
            }
            return bundle;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, RemoteServiceParametersHelper.class);
            return null;
        }
    }

    private final JSONArray buildEventsJson(List<AppEvent> list, String str) {
        List<AppEvent> mutableList;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
            EventDeactivationManager eventDeactivationManager = EventDeactivationManager.INSTANCE;
            EventDeactivationManager.processEvents(mutableList);
            boolean includeImplicitEvents = includeImplicitEvents(str);
            for (AppEvent appEvent : mutableList) {
                if (appEvent.isChecksumValid()) {
                    if ((!appEvent.isImplicit()) || (appEvent.isImplicit() && includeImplicitEvents)) {
                        jSONArray.put(appEvent.getJsonObject());
                    }
                } else {
                    Utility utility = Utility.INSTANCE;
                    Utility.logd(TAG, Intrinsics.stringPlus("Event with invalid checksum: ", appEvent));
                }
            }
            return jSONArray;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final boolean includeImplicitEvents(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(str, false);
            if (queryAppSettings != null) {
                return queryAppSettings.supportsImplicitLogging();
            }
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }
}
