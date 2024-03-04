package com.facebook.appevents.suggestedevents;

import android.util.Patterns;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.utils.ReportController;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0006H\u0007J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J \u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0007J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0007J\u0010\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\b\u0010#\u001a\u00020\u000fH\u0007J)\u0010$\u001a\u00020\u000f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00060&H\u0002¢\u0006\u0002\u0010(J0\u0010)\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0010\u0010.\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0018\u0010/\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+H\u0002J\u0018\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0006H\u0002J(\u00100\u001a\u00020\u000f2\u0006\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0006H\u0002J\u0018\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\u00152\u0006\u00108\u001a\u00020\u0015H\u0002J(\u00109\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00122\n\u0010:\u001a\u00060;j\u0002`<2\n\u0010=\u001a\u00060;j\u0002`<H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rX\u0082.¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/facebook/appevents/suggestedevents/FeatureExtractor;", "", "()V", "NUM_OF_FEATURES", "", "REGEX_ADD_TO_CART_BUTTON_TEXT", "", "REGEX_ADD_TO_CART_PAGE_TITLE", "REGEX_CR_HAS_CONFIRM_PASSWORD_FIELD", "REGEX_CR_HAS_LOG_IN_KEYWORDS", "REGEX_CR_HAS_SIGN_ON_KEYWORDS", "REGEX_CR_PASSWORD_FIELD", "eventInfo", "", "initialized", "", "languageInfo", "rules", "Lorg/json/JSONObject;", "textTypeInfo", "getDenseFeatures", "", "viewHierarchy", "appName", "getInteractedNode", ViewHierarchyConstants.VIEW_KEY, "getTextFeature", "buttonText", "activityName", "initialize", "", ShareInternalUtility.STAGING_PARAM, "Ljava/io/File;", "isButton", "node", "isInitialized", "matchIndicators", "indicators", "", "values", "([Ljava/lang/String;[Ljava/lang/String;)Z", "nonparseFeatures", "siblings", "Lorg/json/JSONArray;", "screenName", "formFieldsJSON", "parseFeatures", "pruneTree", "regexMatched", "pattern", "matchText", "language", "event", "textType", "sum", "a", "b", "updateHintAndTextRecursively", "textSB", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "hintSB", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class FeatureExtractor {
    @NotNull
    public static final FeatureExtractor INSTANCE = new FeatureExtractor();
    private static final int NUM_OF_FEATURES = 30;
    @NotNull
    private static final String REGEX_ADD_TO_CART_BUTTON_TEXT = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart";
    @NotNull
    private static final String REGEX_ADD_TO_CART_PAGE_TITLE = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy";
    @NotNull
    private static final String REGEX_CR_HAS_CONFIRM_PASSWORD_FIELD = "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)";
    @NotNull
    private static final String REGEX_CR_HAS_LOG_IN_KEYWORDS = "(?i)(sign in)|login|signIn";
    @NotNull
    private static final String REGEX_CR_HAS_SIGN_ON_KEYWORDS = "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)";
    @NotNull
    private static final String REGEX_CR_PASSWORD_FIELD = "password";
    private static Map<String, String> eventInfo;
    private static boolean initialized;
    private static Map<String, String> languageInfo;
    private static JSONObject rules;
    private static Map<String, String> textTypeInfo;

    private FeatureExtractor() {
    }

    @JvmStatic
    @Nullable
    public static final float[] getDenseFeatures(@NotNull JSONObject viewHierarchy, @NotNull String appName) {
        String lowerCase;
        JSONObject jSONObject;
        String screenName;
        JSONArray jSONArray;
        FeatureExtractor featureExtractor;
        JSONObject interactedNode;
        if (CrashShieldHandler.isObjectCrashing(FeatureExtractor.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(viewHierarchy, "viewHierarchy");
            Intrinsics.checkNotNullParameter(appName, "appName");
            if (initialized) {
                float[] fArr = new float[30];
                for (int i9 = 0; i9 < 30; i9++) {
                    fArr[i9] = 0.0f;
                }
                try {
                    lowerCase = appName.toLowerCase();
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
                    jSONObject = new JSONObject(viewHierarchy.optJSONObject(ViewHierarchyConstants.VIEW_KEY).toString());
                    screenName = viewHierarchy.optString(ViewHierarchyConstants.SCREEN_NAME_KEY);
                    jSONArray = new JSONArray();
                    featureExtractor = INSTANCE;
                    featureExtractor.pruneTree(jSONObject, jSONArray);
                    featureExtractor.sum(fArr, featureExtractor.parseFeatures(jSONObject));
                    interactedNode = featureExtractor.getInteractedNode(jSONObject);
                } catch (JSONException unused) {
                }
                if (interactedNode == null) {
                    return null;
                }
                Intrinsics.checkNotNullExpressionValue(screenName, "screenName");
                String jSONObject2 = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "viewTree.toString()");
                featureExtractor.sum(fArr, featureExtractor.nonparseFeatures(interactedNode, jSONArray, screenName, jSONObject2, lowerCase));
                return fArr;
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, FeatureExtractor.class);
            return null;
        }
    }

    private final JSONObject getInteractedNode(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
        } catch (JSONException unused) {
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
        if (jSONObject.optBoolean(ViewHierarchyConstants.IS_INTERACTED_KEY)) {
            return jSONObject;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(ViewHierarchyConstants.CHILDREN_VIEW_KEY);
        if (optJSONArray == null) {
            return null;
        }
        int i9 = 0;
        int length = optJSONArray.length();
        if (length > 0) {
            while (true) {
                int i10 = i9 + 1;
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i9);
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "children.getJSONObject(i)");
                JSONObject interactedNode = getInteractedNode(jSONObject2);
                if (interactedNode != null) {
                    return interactedNode;
                }
                if (i10 >= length) {
                    break;
                }
                i9 = i10;
            }
        }
        return null;
    }

    @JvmStatic
    @NotNull
    public static final String getTextFeature(@NotNull String buttonText, @NotNull String activityName, @NotNull String appName) {
        if (CrashShieldHandler.isObjectCrashing(FeatureExtractor.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(buttonText, "buttonText");
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            Intrinsics.checkNotNullParameter(appName, "appName");
            String str = appName + " | " + activityName + ", " + buttonText;
            if (str != null) {
                String lowerCase = str.toLowerCase();
                Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
                return lowerCase;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, FeatureExtractor.class);
            return null;
        }
    }

    @JvmStatic
    public static final void initialize(@Nullable File file) {
        Map<String, String> mapOf;
        Map<String, String> mapOf2;
        Map<String, String> mapOf3;
        if (CrashShieldHandler.isObjectCrashing(FeatureExtractor.class)) {
            return;
        }
        try {
            try {
                rules = new JSONObject();
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                fileInputStream.close();
                rules = new JSONObject(new String(bArr, Charsets.UTF_8));
                mapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(ViewHierarchyConstants.ENGLISH, "1"), TuplesKt.to(ViewHierarchyConstants.GERMAN, "2"), TuplesKt.to(ViewHierarchyConstants.SPANISH, "3"), TuplesKt.to(ViewHierarchyConstants.JAPANESE, "4"));
                languageInfo = mapOf;
                mapOf2 = MapsKt__MapsKt.mapOf(TuplesKt.to(ViewHierarchyConstants.VIEW_CONTENT, "0"), TuplesKt.to(ViewHierarchyConstants.SEARCH, "1"), TuplesKt.to(ViewHierarchyConstants.ADD_TO_CART, "2"), TuplesKt.to(ViewHierarchyConstants.ADD_TO_WISHLIST, "3"), TuplesKt.to(ViewHierarchyConstants.INITIATE_CHECKOUT, "4"), TuplesKt.to(ViewHierarchyConstants.ADD_PAYMENT_INFO, "5"), TuplesKt.to(ViewHierarchyConstants.PURCHASE, MVPActivity.FROM_BAG_BADGE), TuplesKt.to(ViewHierarchyConstants.LEAD, "7"), TuplesKt.to(ViewHierarchyConstants.COMPLETE_REGISTRATION, ReportController.REPORT_TYPE_ONE_V_ONE));
                eventInfo = mapOf2;
                mapOf3 = MapsKt__MapsKt.mapOf(TuplesKt.to(ViewHierarchyConstants.BUTTON_TEXT, "1"), TuplesKt.to(ViewHierarchyConstants.PAGE_TITLE, "2"), TuplesKt.to(ViewHierarchyConstants.RESOLVED_DOCUMENT_LINK, "3"), TuplesKt.to(ViewHierarchyConstants.BUTTON_ID, "4"));
                textTypeInfo = mapOf3;
                initialized = true;
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, FeatureExtractor.class);
            }
        } catch (Exception unused) {
        }
    }

    private final boolean isButton(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return ((jSONObject.optInt(ViewHierarchyConstants.CLASS_TYPE_BITMASK_KEY) & 1) << 5) > 0;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    @JvmStatic
    public static final boolean isInitialized() {
        if (CrashShieldHandler.isObjectCrashing(FeatureExtractor.class)) {
            return false;
        }
        try {
            return initialized;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, FeatureExtractor.class);
            return false;
        }
    }

    private final boolean matchIndicators(String[] strArr, String[] strArr2) {
        boolean contains$default;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            int length = strArr.length;
            int i9 = 0;
            while (i9 < length) {
                String str = strArr[i9];
                i9++;
                int length2 = strArr2.length;
                int i10 = 0;
                while (i10 < length2) {
                    String str2 = strArr2[i10];
                    i10++;
                    contains$default = StringsKt__StringsKt.contains$default((CharSequence) str2, (CharSequence) str, false, 2, (Object) null);
                    if (contains$default) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    private final float[] nonparseFeatures(JSONObject jSONObject, JSONArray jSONArray, String str, String str2, String str3) {
        boolean contains$default;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i9 = 0; i9 < 30; i9++) {
                fArr[i9] = 0.0f;
            }
            int length = jSONArray.length();
            fArr[3] = length > 1 ? length - 1.0f : 0.0f;
            try {
                int length2 = jSONArray.length();
                if (length2 > 0) {
                    int i10 = 0;
                    while (true) {
                        int i11 = i10 + 1;
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                        Intrinsics.checkNotNullExpressionValue(jSONObject2, "siblings.getJSONObject(i)");
                        if (isButton(jSONObject2)) {
                            fArr[9] = fArr[9] + 1.0f;
                        }
                        if (i11 >= length2) {
                            break;
                        }
                        i10 = i11;
                    }
                }
            } catch (JSONException unused) {
            }
            fArr[13] = -1.0f;
            fArr[14] = -1.0f;
            String str4 = str + '|' + str3;
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            updateHintAndTextRecursively(jSONObject, sb3, sb2);
            String sb4 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb4, "hintSB.toString()");
            String sb5 = sb3.toString();
            Intrinsics.checkNotNullExpressionValue(sb5, "textSB.toString()");
            fArr[15] = regexMatched(ViewHierarchyConstants.ENGLISH, ViewHierarchyConstants.COMPLETE_REGISTRATION, ViewHierarchyConstants.BUTTON_TEXT, sb5) ? 1.0f : 0.0f;
            fArr[16] = regexMatched(ViewHierarchyConstants.ENGLISH, ViewHierarchyConstants.COMPLETE_REGISTRATION, ViewHierarchyConstants.PAGE_TITLE, str4) ? 1.0f : 0.0f;
            fArr[17] = regexMatched(ViewHierarchyConstants.ENGLISH, ViewHierarchyConstants.COMPLETE_REGISTRATION, ViewHierarchyConstants.BUTTON_ID, sb4) ? 1.0f : 0.0f;
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) str2, (CharSequence) REGEX_CR_PASSWORD_FIELD, false, 2, (Object) null);
            fArr[18] = contains$default ? 1.0f : 0.0f;
            fArr[19] = regexMatched(REGEX_CR_HAS_CONFIRM_PASSWORD_FIELD, str2) ? 1.0f : 0.0f;
            fArr[20] = regexMatched(REGEX_CR_HAS_LOG_IN_KEYWORDS, str2) ? 1.0f : 0.0f;
            fArr[21] = regexMatched(REGEX_CR_HAS_SIGN_ON_KEYWORDS, str2) ? 1.0f : 0.0f;
            fArr[22] = regexMatched(ViewHierarchyConstants.ENGLISH, ViewHierarchyConstants.PURCHASE, ViewHierarchyConstants.BUTTON_TEXT, sb5) ? 1.0f : 0.0f;
            fArr[24] = regexMatched(ViewHierarchyConstants.ENGLISH, ViewHierarchyConstants.PURCHASE, ViewHierarchyConstants.PAGE_TITLE, str4) ? 1.0f : 0.0f;
            fArr[25] = regexMatched(REGEX_ADD_TO_CART_BUTTON_TEXT, sb5) ? 1.0f : 0.0f;
            fArr[27] = regexMatched(REGEX_ADD_TO_CART_PAGE_TITLE, str4) ? 1.0f : 0.0f;
            fArr[28] = regexMatched(ViewHierarchyConstants.ENGLISH, ViewHierarchyConstants.LEAD, ViewHierarchyConstants.BUTTON_TEXT, sb5) ? 1.0f : 0.0f;
            fArr[29] = regexMatched(ViewHierarchyConstants.ENGLISH, ViewHierarchyConstants.LEAD, ViewHierarchyConstants.PAGE_TITLE, str4) ? 1.0f : 0.0f;
            return fArr;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final float[] parseFeatures(JSONObject jSONObject) {
        boolean contains$default;
        boolean contains$default2;
        boolean contains$default3;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            int i9 = 0;
            for (int i10 = 0; i10 < 30; i10++) {
                fArr[i10] = 0.0f;
            }
            String optString = jSONObject.optString(ViewHierarchyConstants.TEXT_KEY);
            Intrinsics.checkNotNullExpressionValue(optString, "node.optString(TEXT_KEY)");
            String lowerCase = optString.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
            String optString2 = jSONObject.optString(ViewHierarchyConstants.HINT_KEY);
            Intrinsics.checkNotNullExpressionValue(optString2, "node.optString(HINT_KEY)");
            String lowerCase2 = optString2.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "(this as java.lang.String).toLowerCase()");
            String optString3 = jSONObject.optString(ViewHierarchyConstants.CLASS_NAME_KEY);
            Intrinsics.checkNotNullExpressionValue(optString3, "node.optString(CLASS_NAME_KEY)");
            String lowerCase3 = optString3.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase3, "(this as java.lang.String).toLowerCase()");
            int optInt = jSONObject.optInt(ViewHierarchyConstants.INPUT_TYPE_KEY, -1);
            String[] strArr = {lowerCase, lowerCase2};
            if (matchIndicators(new String[]{"$", "amount", InAppPurchaseMetaData.KEY_PRICE, "total"}, strArr)) {
                fArr[0] = fArr[0] + 1.0f;
            }
            if (matchIndicators(new String[]{REGEX_CR_PASSWORD_FIELD, "pwd"}, strArr)) {
                fArr[1] = fArr[1] + 1.0f;
            }
            if (matchIndicators(new String[]{"tel", "phone"}, strArr)) {
                fArr[2] = fArr[2] + 1.0f;
            }
            if (matchIndicators(new String[]{"search"}, strArr)) {
                fArr[4] = fArr[4] + 1.0f;
            }
            if (optInt >= 0) {
                fArr[5] = fArr[5] + 1.0f;
            }
            if (optInt == 3 || optInt == 2) {
                fArr[6] = fArr[6] + 1.0f;
            }
            if (optInt == 32 || Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                fArr[7] = fArr[7] + 1.0f;
            }
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "checkbox", false, 2, (Object) null);
            if (contains$default) {
                fArr[8] = fArr[8] + 1.0f;
            }
            if (matchIndicators(new String[]{"complete", VKApiCodes.EXTRA_CONFIRM, "done", "submit"}, new String[]{lowerCase})) {
                fArr[10] = fArr[10] + 1.0f;
            }
            contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "radio", false, 2, (Object) null);
            if (contains$default2) {
                contains$default3 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "button", false, 2, (Object) null);
                if (contains$default3) {
                    fArr[12] = fArr[12] + 1.0f;
                }
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray(ViewHierarchyConstants.CHILDREN_VIEW_KEY);
                int length = optJSONArray.length();
                if (length > 0) {
                    while (true) {
                        int i11 = i9 + 1;
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i9);
                        Intrinsics.checkNotNullExpressionValue(jSONObject2, "childViews.getJSONObject(i)");
                        sum(fArr, parseFeatures(jSONObject2));
                        if (i11 >= length) {
                            break;
                        }
                        i9 = i11;
                    }
                }
            } catch (JSONException unused) {
            }
            return fArr;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final boolean pruneTree(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z10;
        boolean z11;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            if (jSONObject.optBoolean(ViewHierarchyConstants.IS_INTERACTED_KEY)) {
                return true;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray(ViewHierarchyConstants.CHILDREN_VIEW_KEY);
            int length = optJSONArray.length();
            if (length > 0) {
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    if (optJSONArray.getJSONObject(i9).optBoolean(ViewHierarchyConstants.IS_INTERACTED_KEY)) {
                        z10 = true;
                        z11 = true;
                        break;
                    } else if (i10 >= length) {
                        break;
                    } else {
                        i9 = i10;
                    }
                }
            }
            z10 = false;
            z11 = false;
            JSONArray jSONArray2 = new JSONArray();
            if (z10) {
                int length2 = optJSONArray.length();
                if (length2 > 0) {
                    int i11 = 0;
                    while (true) {
                        int i12 = i11 + 1;
                        jSONArray.put(optJSONArray.getJSONObject(i11));
                        if (i12 >= length2) {
                            break;
                        }
                        i11 = i12;
                    }
                }
            } else {
                int length3 = optJSONArray.length();
                if (length3 > 0) {
                    int i13 = 0;
                    while (true) {
                        int i14 = i13 + 1;
                        JSONObject child = optJSONArray.getJSONObject(i13);
                        Intrinsics.checkNotNullExpressionValue(child, "child");
                        if (pruneTree(child, jSONArray)) {
                            jSONArray2.put(child);
                            z11 = true;
                        }
                        if (i14 >= length3) {
                            break;
                        }
                        i13 = i14;
                    }
                }
                jSONObject.put(ViewHierarchyConstants.CHILDREN_VIEW_KEY, jSONArray2);
            }
            return z11;
        } catch (JSONException unused) {
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0050 A[Catch: all -> 0x007a, TryCatch #0 {all -> 0x007a, blocks: (B:5:0x0008, B:7:0x000d, B:31:0x005d, B:23:0x0043, B:26:0x004c, B:28:0x0050, B:33:0x0062, B:34:0x0067, B:15:0x0029, B:18:0x0032, B:20:0x0036, B:35:0x0068, B:36:0x006d, B:10:0x0017, B:12:0x001b, B:37:0x006e, B:38:0x0073, B:39:0x0074, B:40:0x0079), top: B:44:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005d A[Catch: all -> 0x007a, TryCatch #0 {all -> 0x007a, blocks: (B:5:0x0008, B:7:0x000d, B:31:0x005d, B:23:0x0043, B:26:0x004c, B:28:0x0050, B:33:0x0062, B:34:0x0067, B:15:0x0029, B:18:0x0032, B:20:0x0036, B:35:0x0068, B:36:0x006d, B:10:0x0017, B:12:0x001b, B:37:0x006e, B:38:0x0073, B:39:0x0074, B:40:0x0079), top: B:44:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0062 A[Catch: all -> 0x007a, TryCatch #0 {all -> 0x007a, blocks: (B:5:0x0008, B:7:0x000d, B:31:0x005d, B:23:0x0043, B:26:0x004c, B:28:0x0050, B:33:0x0062, B:34:0x0067, B:15:0x0029, B:18:0x0032, B:20:0x0036, B:35:0x0068, B:36:0x006d, B:10:0x0017, B:12:0x001b, B:37:0x006e, B:38:0x0073, B:39:0x0074, B:40:0x0079), top: B:44:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean regexMatched(java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r4 = this;
            boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            org.json.JSONObject r0 = com.facebook.appevents.suggestedevents.FeatureExtractor.rules     // Catch: java.lang.Throwable -> L7a
            r2 = 0
            if (r0 == 0) goto L74
            java.lang.String r3 = "rulesForLanguage"
            org.json.JSONObject r0 = r0.optJSONObject(r3)     // Catch: java.lang.Throwable -> L7a
            if (r0 != 0) goto L17
            r5 = r2
            goto L25
        L17:
            java.util.Map<java.lang.String, java.lang.String> r3 = com.facebook.appevents.suggestedevents.FeatureExtractor.languageInfo     // Catch: java.lang.Throwable -> L7a
            if (r3 == 0) goto L6e
            java.lang.Object r5 = r3.get(r5)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L7a
            org.json.JSONObject r5 = r0.optJSONObject(r5)     // Catch: java.lang.Throwable -> L7a
        L25:
            if (r5 != 0) goto L29
        L27:
            r5 = r2
            goto L40
        L29:
            java.lang.String r0 = "rulesForEvent"
            org.json.JSONObject r5 = r5.optJSONObject(r0)     // Catch: java.lang.Throwable -> L7a
            if (r5 != 0) goto L32
            goto L27
        L32:
            java.util.Map<java.lang.String, java.lang.String> r0 = com.facebook.appevents.suggestedevents.FeatureExtractor.eventInfo     // Catch: java.lang.Throwable -> L7a
            if (r0 == 0) goto L68
            java.lang.Object r6 = r0.get(r6)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L7a
            org.json.JSONObject r5 = r5.optJSONObject(r6)     // Catch: java.lang.Throwable -> L7a
        L40:
            if (r5 != 0) goto L43
            goto L5a
        L43:
            java.lang.String r6 = "positiveRules"
            org.json.JSONObject r5 = r5.optJSONObject(r6)     // Catch: java.lang.Throwable -> L7a
            if (r5 != 0) goto L4c
            goto L5a
        L4c:
            java.util.Map<java.lang.String, java.lang.String> r6 = com.facebook.appevents.suggestedevents.FeatureExtractor.textTypeInfo     // Catch: java.lang.Throwable -> L7a
            if (r6 == 0) goto L62
            java.lang.Object r6 = r6.get(r7)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L7a
            java.lang.String r2 = r5.optString(r6)     // Catch: java.lang.Throwable -> L7a
        L5a:
            if (r2 != 0) goto L5d
            goto L61
        L5d:
            boolean r1 = r4.regexMatched(r2, r8)     // Catch: java.lang.Throwable -> L7a
        L61:
            return r1
        L62:
            java.lang.String r5 = "textTypeInfo"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)     // Catch: java.lang.Throwable -> L7a
            throw r2     // Catch: java.lang.Throwable -> L7a
        L68:
            java.lang.String r5 = "eventInfo"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)     // Catch: java.lang.Throwable -> L7a
            throw r2     // Catch: java.lang.Throwable -> L7a
        L6e:
            java.lang.String r5 = "languageInfo"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)     // Catch: java.lang.Throwable -> L7a
            throw r2     // Catch: java.lang.Throwable -> L7a
        L74:
            java.lang.String r5 = "rules"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)     // Catch: java.lang.Throwable -> L7a
            throw r2     // Catch: java.lang.Throwable -> L7a
        L7a:
            r5 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r5, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.suggestedevents.FeatureExtractor.regexMatched(java.lang.String, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    private final void sum(float[] fArr, float[] fArr2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        int i9 = 0;
        try {
            int length = fArr.length - 1;
            if (length < 0) {
                return;
            }
            while (true) {
                int i10 = i9 + 1;
                fArr[i9] = fArr[i9] + fArr2[i9];
                if (i10 > length) {
                    return;
                }
                i9 = i10;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private final void updateHintAndTextRecursively(JSONObject jSONObject, StringBuilder sb2, StringBuilder sb3) {
        int length;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            String optString = jSONObject.optString(ViewHierarchyConstants.TEXT_KEY, "");
            Intrinsics.checkNotNullExpressionValue(optString, "view.optString(TEXT_KEY, \"\")");
            String lowerCase = optString.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
            String optString2 = jSONObject.optString(ViewHierarchyConstants.HINT_KEY, "");
            Intrinsics.checkNotNullExpressionValue(optString2, "view.optString(HINT_KEY, \"\")");
            String lowerCase2 = optString2.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "(this as java.lang.String).toLowerCase()");
            boolean z10 = true;
            int i9 = 0;
            if (lowerCase.length() > 0) {
                sb2.append(lowerCase);
                sb2.append(" ");
            }
            if (lowerCase2.length() <= 0) {
                z10 = false;
            }
            if (z10) {
                sb3.append(lowerCase2);
                sb3.append(" ");
            }
            JSONArray optJSONArray = jSONObject.optJSONArray(ViewHierarchyConstants.CHILDREN_VIEW_KEY);
            if (optJSONArray == null || (length = optJSONArray.length()) <= 0) {
                return;
            }
            while (true) {
                int i10 = i9 + 1;
                try {
                    JSONObject currentChildView = optJSONArray.getJSONObject(i9);
                    Intrinsics.checkNotNullExpressionValue(currentChildView, "currentChildView");
                    updateHintAndTextRecursively(currentChildView, sb2, sb3);
                } catch (JSONException unused) {
                }
                if (i10 >= length) {
                    return;
                }
                i9 = i10;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private final boolean regexMatched(String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return Pattern.compile(str).matcher(str2).find();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }
}
