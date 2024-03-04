package com.facebook.appevents.aam;

import androidx.annotation.RestrictTo;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\t\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB%\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058F¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/facebook/appevents/aam/MetadataRule;", "", "name", "", "keyRules", "", "valRule", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getKeyRules", "()Ljava/util/List;", "getName", "()Ljava/lang/String;", "getValRule", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class MetadataRule {
    @NotNull
    private static final String FIELD_K = "k";
    @NotNull
    private static final String FIELD_K_DELIMITER = ",";
    @NotNull
    private static final String FIELD_V = "v";
    @NotNull
    private final List<String> keyRules;
    @NotNull
    private final String name;
    @NotNull
    private final String valRule;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Set<MetadataRule> rules = new CopyOnWriteArraySet();

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000fH\u0007J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000fH\u0007J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/aam/MetadataRule$Companion;", "", "()V", "FIELD_K", "", "FIELD_K_DELIMITER", "FIELD_V", "rules", "", "Lcom/facebook/appevents/aam/MetadataRule;", "constructRules", "", "jsonObject", "Lorg/json/JSONObject;", "getEnabledRuleNames", "", "getRules", "updateRules", "rulesFromServer", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void constructRules(JSONObject jSONObject) {
            List split$default;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                JSONObject optJSONObject = jSONObject.optJSONObject(key);
                if (optJSONObject != null) {
                    String k10 = optJSONObject.optString(MetadataRule.FIELD_K);
                    String v10 = optJSONObject.optString("v");
                    Intrinsics.checkNotNullExpressionValue(k10, "k");
                    if (!(k10.length() == 0)) {
                        Set access$getRules$cp = MetadataRule.access$getRules$cp();
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        split$default = StringsKt__StringsKt.split$default((CharSequence) k10, new String[]{MetadataRule.FIELD_K_DELIMITER}, false, 0, 6, (Object) null);
                        Intrinsics.checkNotNullExpressionValue(v10, "v");
                        access$getRules$cp.add(new MetadataRule(key, split$default, v10, null));
                    }
                }
            }
        }

        @JvmStatic
        @NotNull
        public final Set<String> getEnabledRuleNames() {
            HashSet hashSet = new HashSet();
            for (MetadataRule metadataRule : MetadataRule.access$getRules$cp()) {
                hashSet.add(metadataRule.getName());
            }
            return hashSet;
        }

        @JvmStatic
        @NotNull
        public final Set<MetadataRule> getRules() {
            return new HashSet(MetadataRule.access$getRules$cp());
        }

        @JvmStatic
        public final void updateRules(@NotNull String rulesFromServer) {
            Intrinsics.checkNotNullParameter(rulesFromServer, "rulesFromServer");
            try {
                MetadataRule.access$getRules$cp().clear();
                constructRules(new JSONObject(rulesFromServer));
            } catch (JSONException unused) {
            }
        }
    }

    private MetadataRule(String str, List<String> list, String str2) {
        this.name = str;
        this.valRule = str2;
        this.keyRules = list;
    }

    public /* synthetic */ MetadataRule(String str, List list, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, str2);
    }

    public static final /* synthetic */ Set access$getRules$cp() {
        if (CrashShieldHandler.isObjectCrashing(MetadataRule.class)) {
            return null;
        }
        try {
            return rules;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, MetadataRule.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final Set<String> getEnabledRuleNames() {
        if (CrashShieldHandler.isObjectCrashing(MetadataRule.class)) {
            return null;
        }
        try {
            return Companion.getEnabledRuleNames();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, MetadataRule.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final Set<MetadataRule> getRules() {
        if (CrashShieldHandler.isObjectCrashing(MetadataRule.class)) {
            return null;
        }
        try {
            return Companion.getRules();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, MetadataRule.class);
            return null;
        }
    }

    @JvmStatic
    public static final void updateRules(@NotNull String str) {
        if (CrashShieldHandler.isObjectCrashing(MetadataRule.class)) {
            return;
        }
        try {
            Companion.updateRules(str);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, MetadataRule.class);
        }
    }

    @NotNull
    public final List<String> getKeyRules() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return new ArrayList(this.keyRules);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @NotNull
    public final String getName() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.name;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @NotNull
    public final String getValRule() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.valRule;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }
}
