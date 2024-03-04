package com.facebook.appevents.restrictivedatafilter;

import android.util.Log;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0007J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J&\u0010\u0018\u001a\u00020\u00112\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001a2\u0006\u0010\u0013\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;", "", "()V", "PROCESS_EVENT_NAME", "", "REPLACEMENT_STRING", "RESTRICTIVE_PARAM", "RESTRICTIVE_PARAM_KEY", "TAG", "enabled", "", "restrictedEvents", "", "restrictiveParamFilters", "", "Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;", "enable", "", "getMatchedRuleType", "eventName", "paramKey", "initialize", "isRestrictedEvent", "processEvent", "processParameters", PushConstants.PARAMS, "", "RestrictiveParamFilter", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class RestrictiveDataManager {
    @NotNull
    private static final String PROCESS_EVENT_NAME = "process_event_name";
    @NotNull
    private static final String REPLACEMENT_STRING = "_removed_";
    @NotNull
    private static final String RESTRICTIVE_PARAM = "restrictive_param";
    @NotNull
    private static final String RESTRICTIVE_PARAM_KEY = "_restrictedParams";
    private static boolean enabled;
    @NotNull
    public static final RestrictiveDataManager INSTANCE = new RestrictiveDataManager();
    @Nullable
    private static final String TAG = RestrictiveDataManager.class.getCanonicalName();
    @NotNull
    private static final List<RestrictiveParamFilter> restrictiveParamFilters = new ArrayList();
    @NotNull
    private static final Set<String> restrictedEvents = new CopyOnWriteArraySet();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;", "", "eventName", "", "restrictiveParams", "", "(Ljava/lang/String;Ljava/util/Map;)V", "getEventName", "()Ljava/lang/String;", "setEventName", "(Ljava/lang/String;)V", "getRestrictiveParams", "()Ljava/util/Map;", "setRestrictiveParams", "(Ljava/util/Map;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class RestrictiveParamFilter {
        @NotNull
        private String eventName;
        @NotNull
        private Map<String, String> restrictiveParams;

        public RestrictiveParamFilter(@NotNull String eventName, @NotNull Map<String, String> restrictiveParams) {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            Intrinsics.checkNotNullParameter(restrictiveParams, "restrictiveParams");
            this.eventName = eventName;
            this.restrictiveParams = restrictiveParams;
        }

        @NotNull
        public final String getEventName() {
            return this.eventName;
        }

        @NotNull
        public final Map<String, String> getRestrictiveParams() {
            return this.restrictiveParams;
        }

        public final void setEventName(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.eventName = str;
        }

        public final void setRestrictiveParams(@NotNull Map<String, String> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.restrictiveParams = map;
        }
    }

    private RestrictiveDataManager() {
    }

    @JvmStatic
    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(RestrictiveDataManager.class)) {
            return;
        }
        try {
            RestrictiveDataManager restrictiveDataManager = INSTANCE;
            enabled = true;
            restrictiveDataManager.initialize();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, RestrictiveDataManager.class);
        }
    }

    private final String getMatchedRuleType(String str, String str2) {
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                for (RestrictiveParamFilter restrictiveParamFilter : new ArrayList(restrictiveParamFilters)) {
                    if (restrictiveParamFilter != null && Intrinsics.areEqual(str, restrictiveParamFilter.getEventName())) {
                        for (String str3 : restrictiveParamFilter.getRestrictiveParams().keySet()) {
                            if (Intrinsics.areEqual(str2, str3)) {
                                return restrictiveParamFilter.getRestrictiveParams().get(str3);
                            }
                        }
                        continue;
                    }
                }
            } catch (Exception e10) {
                Log.w(TAG, "getMatchedRuleType failed", e10);
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final void initialize() {
        String restrictiveDataSetting;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(FacebookSdk.getApplicationId(), false);
            if (queryAppSettings == null || (restrictiveDataSetting = queryAppSettings.getRestrictiveDataSetting()) == null) {
                return;
            }
            if (restrictiveDataSetting.length() == 0) {
                return;
            }
            JSONObject jSONObject = new JSONObject(restrictiveDataSetting);
            restrictiveParamFilters.clear();
            restrictedEvents.clear();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(key);
                if (jSONObject2 != null) {
                    JSONObject optJSONObject = jSONObject2.optJSONObject(RESTRICTIVE_PARAM);
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    RestrictiveParamFilter restrictiveParamFilter = new RestrictiveParamFilter(key, new HashMap());
                    if (optJSONObject != null) {
                        Utility utility = Utility.INSTANCE;
                        restrictiveParamFilter.setRestrictiveParams(Utility.convertJSONObjectToStringMap(optJSONObject));
                        restrictiveParamFilters.add(restrictiveParamFilter);
                    }
                    if (jSONObject2.has(PROCESS_EVENT_NAME)) {
                        restrictedEvents.add(restrictiveParamFilter.getEventName());
                    }
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private final boolean isRestrictedEvent(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return restrictedEvents.contains(str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    @JvmStatic
    @NotNull
    public static final String processEvent(@NotNull String eventName) {
        if (CrashShieldHandler.isObjectCrashing(RestrictiveDataManager.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            return enabled ? INSTANCE.isRestrictedEvent(eventName) ? REPLACEMENT_STRING : eventName : eventName;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, RestrictiveDataManager.class);
            return null;
        }
    }

    @JvmStatic
    public static final void processParameters(@NotNull Map<String, String> parameters, @NotNull String eventName) {
        if (CrashShieldHandler.isObjectCrashing(RestrictiveDataManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            if (enabled) {
                HashMap hashMap = new HashMap();
                for (String str : new ArrayList(parameters.keySet())) {
                    String matchedRuleType = INSTANCE.getMatchedRuleType(eventName, str);
                    if (matchedRuleType != null) {
                        hashMap.put(str, matchedRuleType);
                        parameters.remove(str);
                    }
                }
                if (!hashMap.isEmpty()) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        for (Map.Entry entry : hashMap.entrySet()) {
                            jSONObject.put((String) entry.getKey(), (String) entry.getValue());
                        }
                        parameters.put(RESTRICTIVE_PARAM_KEY, jSONObject.toString());
                    } catch (JSONException unused) {
                    }
                }
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, RestrictiveDataManager.class);
        }
    }
}
