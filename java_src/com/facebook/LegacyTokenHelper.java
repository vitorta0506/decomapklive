package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u0011\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/facebook/LegacyTokenHelper;", "", "context", "Landroid/content/Context;", "cacheKey", "", "(Landroid/content/Context;Ljava/lang/String;)V", "cache", "Landroid/content/SharedPreferences;", "clear", "", "deserializeKey", "key", "bundle", "Landroid/os/Bundle;", "load", "save", "serializeKey", "editor", "Landroid/content/SharedPreferences$Editor;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class LegacyTokenHelper {
    @NotNull
    public static final String APPLICATION_ID_KEY = "com.facebook.TokenCachingStrategy.ApplicationId";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String DECLINED_PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.DeclinedPermissions";
    @NotNull
    public static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    @NotNull
    public static final String EXPIRATION_DATE_KEY = "com.facebook.TokenCachingStrategy.ExpirationDate";
    @NotNull
    public static final String EXPIRED_PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.ExpiredPermissions";
    private static final long INVALID_BUNDLE_MILLISECONDS = Long.MIN_VALUE;
    @NotNull
    private static final String IS_SSO_KEY = "com.facebook.TokenCachingStrategy.IsSSO";
    @NotNull
    private static final String JSON_VALUE = "value";
    @NotNull
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    @NotNull
    private static final String JSON_VALUE_TYPE = "valueType";
    @NotNull
    public static final String LAST_REFRESH_DATE_KEY = "com.facebook.TokenCachingStrategy.LastRefreshDate";
    @NotNull
    public static final String PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.Permissions";
    @NotNull
    private static final String TAG;
    @NotNull
    public static final String TOKEN_KEY = "com.facebook.TokenCachingStrategy.Token";
    @NotNull
    public static final String TOKEN_SOURCE_KEY = "com.facebook.TokenCachingStrategy.AccessTokenSource";
    @NotNull
    private static final String TYPE_BOOLEAN = "bool";
    @NotNull
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    @NotNull
    private static final String TYPE_BYTE = "byte";
    @NotNull
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    @NotNull
    private static final String TYPE_CHAR = "char";
    @NotNull
    private static final String TYPE_CHAR_ARRAY = "char[]";
    @NotNull
    private static final String TYPE_DOUBLE = "double";
    @NotNull
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    @NotNull
    private static final String TYPE_ENUM = "enum";
    @NotNull
    private static final String TYPE_FLOAT = "float";
    @NotNull
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    @NotNull
    private static final String TYPE_INTEGER = "int";
    @NotNull
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    @NotNull
    private static final String TYPE_LONG = "long";
    @NotNull
    private static final String TYPE_LONG_ARRAY = "long[]";
    @NotNull
    private static final String TYPE_SHORT = "short";
    @NotNull
    private static final String TYPE_SHORT_ARRAY = "short[]";
    @NotNull
    private static final String TYPE_STRING = "string";
    @NotNull
    private static final String TYPE_STRING_LIST = "stringList";
    @NotNull
    private final SharedPreferences cache;
    @NotNull
    private final String cacheKey;

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010'\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020)H\u0007J\u001e\u0010*\u001a\u0004\u0018\u00010+2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010,\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010-\u001a\u0004\u0018\u00010+2\u0006\u0010(\u001a\u00020)H\u0007J\u0010\u0010.\u001a\u00020\n2\u0006\u0010(\u001a\u00020)H\u0007J\u0012\u0010/\u001a\u0004\u0018\u00010+2\u0006\u0010(\u001a\u00020)H\u0007J\u0010\u00100\u001a\u00020\n2\u0006\u0010(\u001a\u00020)H\u0007J\u0018\u00101\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001022\u0006\u0010(\u001a\u00020)H\u0007J\u0012\u00103\u001a\u0004\u0018\u0001042\u0006\u0010(\u001a\u00020)H\u0007J\u0012\u00105\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020)H\u0007J\u0012\u00106\u001a\u0002072\b\u0010(\u001a\u0004\u0018\u00010)H\u0007J\u001a\u00108\u001a\u0002092\u0006\u0010(\u001a\u00020)2\b\u0010:\u001a\u0004\u0018\u00010\u0004H\u0007J\"\u0010;\u001a\u0002092\u0006\u0010(\u001a\u00020)2\b\u0010,\u001a\u0004\u0018\u00010\u00042\u0006\u0010<\u001a\u00020+H\u0002J\u001e\u0010=\u001a\u0002092\u0006\u0010(\u001a\u00020)2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040>H\u0007J\u0018\u0010?\u001a\u0002092\u0006\u0010(\u001a\u00020)2\u0006\u0010:\u001a\u00020+H\u0007J\u0018\u0010@\u001a\u0002092\u0006\u0010(\u001a\u00020)2\u0006\u0010:\u001a\u00020\nH\u0007J\u001e\u0010A\u001a\u0002092\u0006\u0010(\u001a\u00020)2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040>H\u0007J\u0018\u0010B\u001a\u0002092\u0006\u0010(\u001a\u00020)2\u0006\u0010:\u001a\u00020+H\u0007J\u0018\u0010C\u001a\u0002092\u0006\u0010(\u001a\u00020)2\u0006\u0010:\u001a\u00020\nH\u0007J\u001e\u0010D\u001a\u0002092\u0006\u0010(\u001a\u00020)2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040>H\u0007J\u0018\u0010E\u001a\u0002092\u0006\u0010(\u001a\u00020)2\u0006\u0010:\u001a\u000204H\u0007J\u0018\u0010F\u001a\u0002092\u0006\u0010(\u001a\u00020)2\u0006\u0010:\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lcom/facebook/LegacyTokenHelper$Companion;", "", "()V", "APPLICATION_ID_KEY", "", "DECLINED_PERMISSIONS_KEY", "DEFAULT_CACHE_KEY", "EXPIRATION_DATE_KEY", "EXPIRED_PERMISSIONS_KEY", "INVALID_BUNDLE_MILLISECONDS", "", "IS_SSO_KEY", "JSON_VALUE", "JSON_VALUE_ENUM_TYPE", "JSON_VALUE_TYPE", "LAST_REFRESH_DATE_KEY", "PERMISSIONS_KEY", "TAG", "TOKEN_KEY", "TOKEN_SOURCE_KEY", "TYPE_BOOLEAN", "TYPE_BOOLEAN_ARRAY", "TYPE_BYTE", "TYPE_BYTE_ARRAY", "TYPE_CHAR", "TYPE_CHAR_ARRAY", "TYPE_DOUBLE", "TYPE_DOUBLE_ARRAY", "TYPE_ENUM", "TYPE_FLOAT", "TYPE_FLOAT_ARRAY", "TYPE_INTEGER", "TYPE_INTEGER_ARRAY", "TYPE_LONG", "TYPE_LONG_ARRAY", "TYPE_SHORT", "TYPE_SHORT_ARRAY", "TYPE_STRING", "TYPE_STRING_LIST", "getApplicationId", "bundle", "Landroid/os/Bundle;", "getDate", "Ljava/util/Date;", "key", "getExpirationDate", "getExpirationMilliseconds", "getLastRefreshDate", "getLastRefreshMilliseconds", "getPermissions", "", "getSource", "Lcom/facebook/AccessTokenSource;", "getToken", "hasTokenInformation", "", "putApplicationId", "", LegacyTokenHelper.JSON_VALUE, "putDate", "date", "putDeclinedPermissions", "", "putExpirationDate", "putExpirationMilliseconds", "putExpiredPermissions", "putLastRefreshDate", "putLastRefreshMilliseconds", "putPermissions", "putSource", "putToken", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Date getDate(Bundle bundle, String str) {
            if (bundle == null) {
                return null;
            }
            long j10 = bundle.getLong(str, Long.MIN_VALUE);
            if (j10 == Long.MIN_VALUE) {
                return null;
            }
            return new Date(j10);
        }

        private final void putDate(Bundle bundle, String str, Date date) {
            bundle.putLong(str, date.getTime());
        }

        @JvmStatic
        @Nullable
        public final String getApplicationId(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return bundle.getString(LegacyTokenHelper.APPLICATION_ID_KEY);
        }

        @JvmStatic
        @Nullable
        public final Date getExpirationDate(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return getDate(bundle, LegacyTokenHelper.EXPIRATION_DATE_KEY);
        }

        @JvmStatic
        public final long getExpirationMilliseconds(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return bundle.getLong(LegacyTokenHelper.EXPIRATION_DATE_KEY);
        }

        @JvmStatic
        @Nullable
        public final Date getLastRefreshDate(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return getDate(bundle, LegacyTokenHelper.LAST_REFRESH_DATE_KEY);
        }

        @JvmStatic
        public final long getLastRefreshMilliseconds(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return bundle.getLong(LegacyTokenHelper.LAST_REFRESH_DATE_KEY);
        }

        @JvmStatic
        @Nullable
        public final Set<String> getPermissions(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            ArrayList<String> stringArrayList = bundle.getStringArrayList(LegacyTokenHelper.PERMISSIONS_KEY);
            if (stringArrayList == null) {
                return null;
            }
            return new HashSet(stringArrayList);
        }

        @JvmStatic
        @Nullable
        public final AccessTokenSource getSource(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (bundle.containsKey(LegacyTokenHelper.TOKEN_SOURCE_KEY)) {
                return (AccessTokenSource) bundle.getSerializable(LegacyTokenHelper.TOKEN_SOURCE_KEY);
            }
            return bundle.getBoolean(LegacyTokenHelper.IS_SSO_KEY) ? AccessTokenSource.FACEBOOK_APPLICATION_WEB : AccessTokenSource.WEB_VIEW;
        }

        @JvmStatic
        @Nullable
        public final String getToken(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return bundle.getString(LegacyTokenHelper.TOKEN_KEY);
        }

        @JvmStatic
        public final boolean hasTokenInformation(@Nullable Bundle bundle) {
            String string;
            if (bundle == null || (string = bundle.getString(LegacyTokenHelper.TOKEN_KEY)) == null) {
                return false;
            }
            return ((string.length() == 0) || bundle.getLong(LegacyTokenHelper.EXPIRATION_DATE_KEY, 0L) == 0) ? false : true;
        }

        @JvmStatic
        public final void putApplicationId(@NotNull Bundle bundle, @Nullable String str) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.putString(LegacyTokenHelper.APPLICATION_ID_KEY, str);
        }

        @JvmStatic
        public final void putDeclinedPermissions(@NotNull Bundle bundle, @NotNull Collection<String> value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putStringArrayList(LegacyTokenHelper.DECLINED_PERMISSIONS_KEY, new ArrayList<>(value));
        }

        @JvmStatic
        public final void putExpirationDate(@NotNull Bundle bundle, @NotNull Date value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(value, "value");
            putDate(bundle, LegacyTokenHelper.EXPIRATION_DATE_KEY, value);
        }

        @JvmStatic
        public final void putExpirationMilliseconds(@NotNull Bundle bundle, long j10) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.putLong(LegacyTokenHelper.EXPIRATION_DATE_KEY, j10);
        }

        @JvmStatic
        public final void putExpiredPermissions(@NotNull Bundle bundle, @NotNull Collection<String> value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putStringArrayList(LegacyTokenHelper.EXPIRED_PERMISSIONS_KEY, new ArrayList<>(value));
        }

        @JvmStatic
        public final void putLastRefreshDate(@NotNull Bundle bundle, @NotNull Date value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(value, "value");
            putDate(bundle, LegacyTokenHelper.LAST_REFRESH_DATE_KEY, value);
        }

        @JvmStatic
        public final void putLastRefreshMilliseconds(@NotNull Bundle bundle, long j10) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.putLong(LegacyTokenHelper.LAST_REFRESH_DATE_KEY, j10);
        }

        @JvmStatic
        public final void putPermissions(@NotNull Bundle bundle, @NotNull Collection<String> value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putStringArrayList(LegacyTokenHelper.PERMISSIONS_KEY, new ArrayList<>(value));
        }

        @JvmStatic
        public final void putSource(@NotNull Bundle bundle, @NotNull AccessTokenSource value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putSerializable(LegacyTokenHelper.TOKEN_SOURCE_KEY, value);
        }

        @JvmStatic
        public final void putToken(@NotNull Bundle bundle, @NotNull String value) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putString(LegacyTokenHelper.TOKEN_KEY, value);
        }
    }

    static {
        String simpleName = LegacyTokenHelper.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "LegacyTokenHelper::class.java.simpleName");
        TAG = simpleName;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LegacyTokenHelper(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        if ((r4.length() == 0) != false) goto L14;
     */
    @kotlin.jvm.JvmOverloads
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LegacyTokenHelper(@org.jetbrains.annotations.NotNull android.content.Context r3, @org.jetbrains.annotations.Nullable java.lang.String r4) {
        /*
            r2 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            r2.<init>()
            r0 = 0
            if (r4 == 0) goto L16
            int r1 = r4.length()
            if (r1 != 0) goto L13
            r1 = 1
            goto L14
        L13:
            r1 = 0
        L14:
            if (r1 == 0) goto L18
        L16:
            java.lang.String r4 = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"
        L18:
            r2.cacheKey = r4
            android.content.Context r1 = r3.getApplicationContext()
            if (r1 != 0) goto L21
            goto L22
        L21:
            r3 = r1
        L22:
            android.content.SharedPreferences r3 = r3.getSharedPreferences(r4, r0)
            java.lang.String r4 = "context.getSharedPreferences(this.cacheKey, Context.MODE_PRIVATE)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r2.cache = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.LegacyTokenHelper.<init>(android.content.Context, java.lang.String):void");
    }

    private final void deserializeKey(String str, Bundle bundle) throws JSONException {
        String str2;
        String string;
        String string2 = this.cache.getString(str, "{}");
        if (string2 != null) {
            JSONObject jSONObject = new JSONObject(string2);
            String string3 = jSONObject.getString(JSON_VALUE_TYPE);
            if (string3 != null) {
                int i9 = 0;
                switch (string3.hashCode()) {
                    case -1573317553:
                        if (string3.equals(TYPE_STRING_LIST)) {
                            JSONArray jSONArray = jSONObject.getJSONArray(JSON_VALUE);
                            int length = jSONArray.length();
                            ArrayList<String> arrayList = new ArrayList<>(length);
                            if (length > 0) {
                                while (true) {
                                    int i10 = i9 + 1;
                                    Object obj = jSONArray.get(i9);
                                    if (obj == JSONObject.NULL) {
                                        str2 = null;
                                    } else {
                                        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
                                        str2 = (String) obj;
                                    }
                                    arrayList.add(i9, str2);
                                    if (i10 < length) {
                                        i9 = i10;
                                    }
                                }
                            }
                            bundle.putStringArrayList(str, arrayList);
                            return;
                        }
                        return;
                    case -1383386164:
                        if (string3.equals(TYPE_BOOLEAN_ARRAY)) {
                            JSONArray jSONArray2 = jSONObject.getJSONArray(JSON_VALUE);
                            int length2 = jSONArray2.length();
                            boolean[] zArr = new boolean[length2];
                            int i11 = length2 - 1;
                            if (i11 >= 0) {
                                while (true) {
                                    int i12 = i9 + 1;
                                    zArr[i9] = jSONArray2.getBoolean(i9);
                                    if (i12 <= i11) {
                                        i9 = i12;
                                    }
                                }
                            }
                            bundle.putBooleanArray(str, zArr);
                            return;
                        }
                        return;
                    case -1374008726:
                        if (string3.equals(TYPE_BYTE_ARRAY)) {
                            JSONArray jSONArray3 = jSONObject.getJSONArray(JSON_VALUE);
                            int length3 = jSONArray3.length();
                            byte[] bArr = new byte[length3];
                            int i13 = length3 - 1;
                            if (i13 >= 0) {
                                while (true) {
                                    int i14 = i9 + 1;
                                    bArr[i9] = (byte) jSONArray3.getInt(i9);
                                    if (i14 <= i13) {
                                        i9 = i14;
                                    }
                                }
                            }
                            bundle.putByteArray(str, bArr);
                            return;
                        }
                        return;
                    case -1361632968:
                        if (string3.equals(TYPE_CHAR_ARRAY)) {
                            JSONArray jSONArray4 = jSONObject.getJSONArray(JSON_VALUE);
                            int length4 = jSONArray4.length();
                            char[] cArr = new char[length4];
                            int i15 = length4 - 1;
                            if (i15 >= 0) {
                                int i16 = 0;
                                while (true) {
                                    int i17 = i16 + 1;
                                    String string4 = jSONArray4.getString(i16);
                                    if (string4 != null && string4.length() == 1) {
                                        cArr[i16] = string4.charAt(0);
                                    }
                                    if (i17 <= i15) {
                                        i16 = i17;
                                    }
                                }
                            }
                            bundle.putCharArray(str, cArr);
                            return;
                        }
                        return;
                    case -1325958191:
                        if (string3.equals(TYPE_DOUBLE)) {
                            bundle.putDouble(str, jSONObject.getDouble(JSON_VALUE));
                            return;
                        }
                        return;
                    case -1097129250:
                        if (string3.equals(TYPE_LONG_ARRAY)) {
                            JSONArray jSONArray5 = jSONObject.getJSONArray(JSON_VALUE);
                            int length5 = jSONArray5.length();
                            long[] jArr = new long[length5];
                            int i18 = length5 - 1;
                            if (i18 >= 0) {
                                while (true) {
                                    int i19 = i9 + 1;
                                    jArr[i9] = jSONArray5.getLong(i9);
                                    if (i19 <= i18) {
                                        i9 = i19;
                                    }
                                }
                            }
                            bundle.putLongArray(str, jArr);
                            return;
                        }
                        return;
                    case -891985903:
                        if (string3.equals("string")) {
                            bundle.putString(str, jSONObject.getString(JSON_VALUE));
                            return;
                        }
                        return;
                    case -766441794:
                        if (string3.equals(TYPE_FLOAT_ARRAY)) {
                            JSONArray jSONArray6 = jSONObject.getJSONArray(JSON_VALUE);
                            int length6 = jSONArray6.length();
                            float[] fArr = new float[length6];
                            int i20 = length6 - 1;
                            if (i20 >= 0) {
                                while (true) {
                                    int i21 = i9 + 1;
                                    fArr[i9] = (float) jSONArray6.getDouble(i9);
                                    if (i21 <= i20) {
                                        i9 = i21;
                                    }
                                }
                            }
                            bundle.putFloatArray(str, fArr);
                            return;
                        }
                        return;
                    case 104431:
                        if (string3.equals(TYPE_INTEGER)) {
                            bundle.putInt(str, jSONObject.getInt(JSON_VALUE));
                            return;
                        }
                        return;
                    case 3029738:
                        if (string3.equals(TYPE_BOOLEAN)) {
                            bundle.putBoolean(str, jSONObject.getBoolean(JSON_VALUE));
                            return;
                        }
                        return;
                    case 3039496:
                        if (string3.equals(TYPE_BYTE)) {
                            bundle.putByte(str, (byte) jSONObject.getInt(JSON_VALUE));
                            return;
                        }
                        return;
                    case 3052374:
                        if (string3.equals(TYPE_CHAR) && (string = jSONObject.getString(JSON_VALUE)) != null && string.length() == 1) {
                            bundle.putChar(str, string.charAt(0));
                            return;
                        }
                        return;
                    case 3118337:
                        if (string3.equals(TYPE_ENUM)) {
                            try {
                                bundle.putSerializable(str, Enum.valueOf(Class.forName(jSONObject.getString(JSON_VALUE_ENUM_TYPE)), jSONObject.getString(JSON_VALUE)));
                                return;
                            } catch (ClassNotFoundException | IllegalArgumentException unused) {
                                return;
                            }
                        }
                        return;
                    case 3327612:
                        if (string3.equals(TYPE_LONG)) {
                            bundle.putLong(str, jSONObject.getLong(JSON_VALUE));
                            return;
                        }
                        return;
                    case 97526364:
                        if (string3.equals("float")) {
                            bundle.putFloat(str, (float) jSONObject.getDouble(JSON_VALUE));
                            return;
                        }
                        return;
                    case 100361105:
                        if (string3.equals(TYPE_INTEGER_ARRAY)) {
                            JSONArray jSONArray7 = jSONObject.getJSONArray(JSON_VALUE);
                            int length7 = jSONArray7.length();
                            int[] iArr = new int[length7];
                            int i22 = length7 - 1;
                            if (i22 >= 0) {
                                while (true) {
                                    int i23 = i9 + 1;
                                    iArr[i9] = jSONArray7.getInt(i9);
                                    if (i23 <= i22) {
                                        i9 = i23;
                                    }
                                }
                            }
                            bundle.putIntArray(str, iArr);
                            return;
                        }
                        return;
                    case 109413500:
                        if (string3.equals(TYPE_SHORT)) {
                            bundle.putShort(str, (short) jSONObject.getInt(JSON_VALUE));
                            return;
                        }
                        return;
                    case 1359468275:
                        if (string3.equals(TYPE_DOUBLE_ARRAY)) {
                            JSONArray jSONArray8 = jSONObject.getJSONArray(JSON_VALUE);
                            int length8 = jSONArray8.length();
                            double[] dArr = new double[length8];
                            int i24 = length8 - 1;
                            if (i24 >= 0) {
                                while (true) {
                                    int i25 = i9 + 1;
                                    dArr[i9] = jSONArray8.getDouble(i9);
                                    if (i25 <= i24) {
                                        i9 = i25;
                                    }
                                }
                            }
                            bundle.putDoubleArray(str, dArr);
                            return;
                        }
                        return;
                    case 2067161310:
                        if (string3.equals(TYPE_SHORT_ARRAY)) {
                            JSONArray jSONArray9 = jSONObject.getJSONArray(JSON_VALUE);
                            int length9 = jSONArray9.length();
                            short[] sArr = new short[length9];
                            int i26 = length9 - 1;
                            if (i26 >= 0) {
                                while (true) {
                                    int i27 = i9 + 1;
                                    sArr[i9] = (short) jSONArray9.getInt(i9);
                                    if (i27 <= i26) {
                                        i9 = i27;
                                    }
                                }
                            }
                            bundle.putShortArray(str, sArr);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @JvmStatic
    @Nullable
    public static final String getApplicationId(@NotNull Bundle bundle) {
        return Companion.getApplicationId(bundle);
    }

    @JvmStatic
    @Nullable
    public static final Date getExpirationDate(@NotNull Bundle bundle) {
        return Companion.getExpirationDate(bundle);
    }

    @JvmStatic
    public static final long getExpirationMilliseconds(@NotNull Bundle bundle) {
        return Companion.getExpirationMilliseconds(bundle);
    }

    @JvmStatic
    @Nullable
    public static final Date getLastRefreshDate(@NotNull Bundle bundle) {
        return Companion.getLastRefreshDate(bundle);
    }

    @JvmStatic
    public static final long getLastRefreshMilliseconds(@NotNull Bundle bundle) {
        return Companion.getLastRefreshMilliseconds(bundle);
    }

    @JvmStatic
    @Nullable
    public static final Set<String> getPermissions(@NotNull Bundle bundle) {
        return Companion.getPermissions(bundle);
    }

    @JvmStatic
    @Nullable
    public static final AccessTokenSource getSource(@NotNull Bundle bundle) {
        return Companion.getSource(bundle);
    }

    @JvmStatic
    @Nullable
    public static final String getToken(@NotNull Bundle bundle) {
        return Companion.getToken(bundle);
    }

    @JvmStatic
    public static final boolean hasTokenInformation(@Nullable Bundle bundle) {
        return Companion.hasTokenInformation(bundle);
    }

    @JvmStatic
    public static final void putApplicationId(@NotNull Bundle bundle, @Nullable String str) {
        Companion.putApplicationId(bundle, str);
    }

    @JvmStatic
    public static final void putDeclinedPermissions(@NotNull Bundle bundle, @NotNull Collection<String> collection) {
        Companion.putDeclinedPermissions(bundle, collection);
    }

    @JvmStatic
    public static final void putExpirationDate(@NotNull Bundle bundle, @NotNull Date date) {
        Companion.putExpirationDate(bundle, date);
    }

    @JvmStatic
    public static final void putExpirationMilliseconds(@NotNull Bundle bundle, long j10) {
        Companion.putExpirationMilliseconds(bundle, j10);
    }

    @JvmStatic
    public static final void putExpiredPermissions(@NotNull Bundle bundle, @NotNull Collection<String> collection) {
        Companion.putExpiredPermissions(bundle, collection);
    }

    @JvmStatic
    public static final void putLastRefreshDate(@NotNull Bundle bundle, @NotNull Date date) {
        Companion.putLastRefreshDate(bundle, date);
    }

    @JvmStatic
    public static final void putLastRefreshMilliseconds(@NotNull Bundle bundle, long j10) {
        Companion.putLastRefreshMilliseconds(bundle, j10);
    }

    @JvmStatic
    public static final void putPermissions(@NotNull Bundle bundle, @NotNull Collection<String> collection) {
        Companion.putPermissions(bundle, collection);
    }

    @JvmStatic
    public static final void putSource(@NotNull Bundle bundle, @NotNull AccessTokenSource accessTokenSource) {
        Companion.putSource(bundle, accessTokenSource);
    }

    @JvmStatic
    public static final void putToken(@NotNull Bundle bundle, @NotNull String str) {
        Companion.putToken(bundle, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void serializeKey(java.lang.String r9, android.os.Bundle r10, android.content.SharedPreferences.Editor r11) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.LegacyTokenHelper.serializeKey(java.lang.String, android.os.Bundle, android.content.SharedPreferences$Editor):void");
    }

    public final void clear() {
        this.cache.edit().clear().apply();
    }

    @Nullable
    public final Bundle load() {
        Bundle bundle = new Bundle();
        for (String key : this.cache.getAll().keySet()) {
            try {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                deserializeKey(key, bundle);
            } catch (JSONException e10) {
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str = TAG;
                companion.log(loggingBehavior, 5, str, "Error reading cached value for key: '" + ((Object) key) + "' -- " + e10);
                return null;
            }
        }
        return bundle;
    }

    public final void save(@NotNull Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        SharedPreferences.Editor editor = this.cache.edit();
        for (String key : bundle.keySet()) {
            try {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                Intrinsics.checkNotNullExpressionValue(editor, "editor");
                serializeKey(key, bundle, editor);
            } catch (JSONException e10) {
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str = TAG;
                companion.log(loggingBehavior, 5, str, "Error processing value for key: '" + ((Object) key) + "' -- " + e10);
                return;
            }
        }
        editor.apply();
    }

    public /* synthetic */ LegacyTokenHelper(Context context, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : str);
    }
}
