package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\"\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 L2\u00020\u0001:\u0001LB\u0017\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0085\u0002\b\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018\u0012\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018\u0012\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001eB\u000f\b\u0010\u0012\u0006\u0010\u001f\u001a\u00020 ¢\u0006\u0002\u0010!J\b\u0010;\u001a\u00020\u0019H\u0016J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010?H\u0096\u0002J\b\u0010@\u001a\u00020\u0019H\u0016J\u0018\u0010A\u001a\u00020=2\u0006\u0010B\u001a\u00020C2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010D\u001a\u00020\u0003H\u0007J\r\u0010E\u001a\u00020CH\u0001¢\u0006\u0002\bFJ\b\u0010G\u001a\u00020\u0003H\u0016J\u0018\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020 2\u0006\u0010K\u001a\u00020\u0019H\u0016R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010#R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010#R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b)\u0010&R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010#R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010#R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b-\u0010#R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b.\u0010#R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010#R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010#R\u001f\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b3\u0010#R\u0019\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u000104¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u0010#R\u001f\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018¢\u0006\b\n\u0000\u001a\u0004\b8\u00102R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b9\u0010#R\u001f\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018¢\u0006\b\n\u0000\u001a\u0004\b:\u00102¨\u0006M"}, d2 = {"Lcom/facebook/AuthenticationTokenClaims;", "Landroid/os/Parcelable;", "encodedClaims", "", "expectedNonce", "(Ljava/lang/String;Ljava/lang/String;)V", "jti", "iss", "aud", "nonce", "exp", "", "iat", "sub", "name", "givenName", "middleName", "familyName", "email", "picture", "userFriends", "", "userBirthday", "userAgeRange", "", "", "userHometown", "userLocation", "userGender", "userLink", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getAud", "()Ljava/lang/String;", "getEmail", "getExp", "()J", "getFamilyName", "getGivenName", "getIat", "getIss", "getJti", "getMiddleName", "getName", "getNonce", "getPicture", "getSub", "getUserAgeRange", "()Ljava/util/Map;", "getUserBirthday", "", "getUserFriends", "()Ljava/util/Set;", "getUserGender", "getUserHometown", "getUserLink", "getUserLocation", "describeContents", "equals", "", "other", "", "hashCode", "isValidClaims", "claimsJson", "Lorg/json/JSONObject;", "toEnCodedString", "toJSONObject", "toJSONObject$facebook_core_release", "toString", "writeToParcel", "", "dest", "flags", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AuthenticationTokenClaims implements Parcelable {
    @NotNull
    public static final String JSON_KEY_AUD = "aud";
    @NotNull
    public static final String JSON_KEY_EMAIL = "email";
    @NotNull
    public static final String JSON_KEY_EXP = "exp";
    @NotNull
    public static final String JSON_KEY_FAMILY_NAME = "family_name";
    @NotNull
    public static final String JSON_KEY_GIVEN_NAME = "given_name";
    @NotNull
    public static final String JSON_KEY_IAT = "iat";
    @NotNull
    public static final String JSON_KEY_ISS = "iss";
    @NotNull
    public static final String JSON_KEY_JIT = "jti";
    @NotNull
    public static final String JSON_KEY_MIDDLE_NAME = "middle_name";
    @NotNull
    public static final String JSON_KEY_NAME = "name";
    @NotNull
    public static final String JSON_KEY_NONCE = "nonce";
    @NotNull
    public static final String JSON_KEY_PICTURE = "picture";
    @NotNull
    public static final String JSON_KEY_SUB = "sub";
    @NotNull
    public static final String JSON_KEY_USER_AGE_RANGE = "user_age_range";
    @NotNull
    public static final String JSON_KEY_USER_BIRTHDAY = "user_birthday";
    @NotNull
    public static final String JSON_KEY_USER_FRIENDS = "user_friends";
    @NotNull
    public static final String JSON_KEY_USER_GENDER = "user_gender";
    @NotNull
    public static final String JSON_KEY_USER_HOMETOWN = "user_hometown";
    @NotNull
    public static final String JSON_KEY_USER_LINK = "user_link";
    @NotNull
    public static final String JSON_KEY_USER_LOCATION = "user_location";
    public static final long MAX_TIME_SINCE_TOKEN_ISSUED = 600000;
    @NotNull
    private final String aud;
    @Nullable
    private final String email;
    private final long exp;
    @Nullable
    private final String familyName;
    @Nullable
    private final String givenName;
    private final long iat;
    @NotNull
    private final String iss;
    @NotNull
    private final String jti;
    @Nullable
    private final String middleName;
    @Nullable
    private final String name;
    @NotNull
    private final String nonce;
    @Nullable
    private final String picture;
    @NotNull
    private final String sub;
    @Nullable
    private final Map<String, Integer> userAgeRange;
    @Nullable
    private final String userBirthday;
    @Nullable
    private final Set<String> userFriends;
    @Nullable
    private final String userGender;
    @Nullable
    private final Map<String, String> userHometown;
    @Nullable
    private final String userLink;
    @Nullable
    private final Map<String, String> userLocation;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<AuthenticationTokenClaims> CREATOR = new Parcelable.Creator<AuthenticationTokenClaims>() { // from class: com.facebook.AuthenticationTokenClaims$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public AuthenticationTokenClaims createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new AuthenticationTokenClaims(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public AuthenticationTokenClaims[] newArray(int i9) {
            return new AuthenticationTokenClaims[i9];
        }
    };

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001fH\u0001¢\u0006\u0002\b J\u001b\u0010!\u001a\u0004\u0018\u00010\u0007*\u00020\u001f2\u0006\u0010\"\u001a\u00020\u0007H\u0000¢\u0006\u0002\b#R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0086T¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/facebook/AuthenticationTokenClaims$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/AuthenticationTokenClaims;", "JSON_KEY_AUD", "", "JSON_KEY_EMAIL", "JSON_KEY_EXP", "JSON_KEY_FAMILY_NAME", "JSON_KEY_GIVEN_NAME", "JSON_KEY_IAT", "JSON_KEY_ISS", "JSON_KEY_JIT", "JSON_KEY_MIDDLE_NAME", "JSON_KEY_NAME", "JSON_KEY_NONCE", "JSON_KEY_PICTURE", "JSON_KEY_SUB", "JSON_KEY_USER_AGE_RANGE", "JSON_KEY_USER_BIRTHDAY", "JSON_KEY_USER_FRIENDS", "JSON_KEY_USER_GENDER", "JSON_KEY_USER_HOMETOWN", "JSON_KEY_USER_LINK", "JSON_KEY_USER_LOCATION", "MAX_TIME_SINCE_TOKEN_ISSUED", "", "createFromJSONObject", "jsonObject", "Lorg/json/JSONObject;", "createFromJSONObject$facebook_core_release", "getNullableString", "name", "getNullableString$facebook_core_release", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final AuthenticationTokenClaims createFromJSONObject$facebook_core_release(@NotNull JSONObject jsonObject) throws JSONException {
            List<String> jsonArrayToStringList;
            Map<String, Object> convertJSONObjectToHashMap;
            Map<String, String> convertJSONObjectToStringMap;
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            String jti = jsonObject.getString("jti");
            String iss = jsonObject.getString("iss");
            String aud = jsonObject.getString("aud");
            String nonce = jsonObject.getString("nonce");
            long j10 = jsonObject.getLong("exp");
            long j11 = jsonObject.getLong("iat");
            String sub = jsonObject.getString("sub");
            String nullableString$facebook_core_release = getNullableString$facebook_core_release(jsonObject, "name");
            String nullableString$facebook_core_release2 = getNullableString$facebook_core_release(jsonObject, AuthenticationTokenClaims.JSON_KEY_GIVEN_NAME);
            String nullableString$facebook_core_release3 = getNullableString$facebook_core_release(jsonObject, AuthenticationTokenClaims.JSON_KEY_MIDDLE_NAME);
            String nullableString$facebook_core_release4 = getNullableString$facebook_core_release(jsonObject, AuthenticationTokenClaims.JSON_KEY_FAMILY_NAME);
            String nullableString$facebook_core_release5 = getNullableString$facebook_core_release(jsonObject, "email");
            String nullableString$facebook_core_release6 = getNullableString$facebook_core_release(jsonObject, "picture");
            JSONArray optJSONArray = jsonObject.optJSONArray(AuthenticationTokenClaims.JSON_KEY_USER_FRIENDS);
            String nullableString$facebook_core_release7 = getNullableString$facebook_core_release(jsonObject, "user_birthday");
            JSONObject optJSONObject = jsonObject.optJSONObject(AuthenticationTokenClaims.JSON_KEY_USER_AGE_RANGE);
            JSONObject optJSONObject2 = jsonObject.optJSONObject(AuthenticationTokenClaims.JSON_KEY_USER_HOMETOWN);
            JSONObject optJSONObject3 = jsonObject.optJSONObject(AuthenticationTokenClaims.JSON_KEY_USER_LOCATION);
            String nullableString$facebook_core_release8 = getNullableString$facebook_core_release(jsonObject, AuthenticationTokenClaims.JSON_KEY_USER_GENDER);
            String nullableString$facebook_core_release9 = getNullableString$facebook_core_release(jsonObject, AuthenticationTokenClaims.JSON_KEY_USER_LINK);
            Intrinsics.checkNotNullExpressionValue(jti, "jti");
            Intrinsics.checkNotNullExpressionValue(iss, "iss");
            Intrinsics.checkNotNullExpressionValue(aud, "aud");
            Intrinsics.checkNotNullExpressionValue(nonce, "nonce");
            Intrinsics.checkNotNullExpressionValue(sub, "sub");
            Map<String, String> map = null;
            if (optJSONArray == null) {
                jsonArrayToStringList = null;
            } else {
                Utility utility = Utility.INSTANCE;
                jsonArrayToStringList = Utility.jsonArrayToStringList(optJSONArray);
            }
            if (optJSONObject == null) {
                convertJSONObjectToHashMap = null;
            } else {
                Utility utility2 = Utility.INSTANCE;
                convertJSONObjectToHashMap = Utility.convertJSONObjectToHashMap(optJSONObject);
            }
            if (optJSONObject2 == null) {
                convertJSONObjectToStringMap = null;
            } else {
                Utility utility3 = Utility.INSTANCE;
                convertJSONObjectToStringMap = Utility.convertJSONObjectToStringMap(optJSONObject2);
            }
            if (optJSONObject3 != null) {
                Utility utility4 = Utility.INSTANCE;
                map = Utility.convertJSONObjectToStringMap(optJSONObject3);
            }
            return new AuthenticationTokenClaims(jti, iss, aud, nonce, j10, j11, sub, nullableString$facebook_core_release, nullableString$facebook_core_release2, nullableString$facebook_core_release3, nullableString$facebook_core_release4, nullableString$facebook_core_release5, nullableString$facebook_core_release6, jsonArrayToStringList, nullableString$facebook_core_release7, convertJSONObjectToHashMap, convertJSONObjectToStringMap, map, nullableString$facebook_core_release8, nullableString$facebook_core_release9);
        }

        @Nullable
        public final String getNullableString$facebook_core_release(@NotNull JSONObject jSONObject, @NotNull String name) {
            Intrinsics.checkNotNullParameter(jSONObject, "<this>");
            Intrinsics.checkNotNullParameter(name, "name");
            if (jSONObject.has(name)) {
                return jSONObject.getString(name);
            }
            return null;
        }
    }

    @JvmOverloads
    public AuthenticationTokenClaims(@NotNull String encodedClaims, @NotNull String expectedNonce) {
        Set<String> unmodifiableSet;
        Map<String, Integer> unmodifiableMap;
        Map<String, String> unmodifiableMap2;
        Intrinsics.checkNotNullParameter(encodedClaims, "encodedClaims");
        Intrinsics.checkNotNullParameter(expectedNonce, "expectedNonce");
        Validate validate = Validate.INSTANCE;
        Validate.notEmpty(encodedClaims, "encodedClaims");
        byte[] decodedBytes = Base64.decode(encodedClaims, 8);
        Intrinsics.checkNotNullExpressionValue(decodedBytes, "decodedBytes");
        JSONObject jSONObject = new JSONObject(new String(decodedBytes, Charsets.UTF_8));
        if (isValidClaims(jSONObject, expectedNonce)) {
            String string = jSONObject.getString("jti");
            Intrinsics.checkNotNullExpressionValue(string, "jsonObj.getString(JSON_KEY_JIT)");
            this.jti = string;
            String string2 = jSONObject.getString("iss");
            Intrinsics.checkNotNullExpressionValue(string2, "jsonObj.getString(JSON_KEY_ISS)");
            this.iss = string2;
            String string3 = jSONObject.getString("aud");
            Intrinsics.checkNotNullExpressionValue(string3, "jsonObj.getString(JSON_KEY_AUD)");
            this.aud = string3;
            String string4 = jSONObject.getString("nonce");
            Intrinsics.checkNotNullExpressionValue(string4, "jsonObj.getString(JSON_KEY_NONCE)");
            this.nonce = string4;
            this.exp = jSONObject.getLong("exp");
            this.iat = jSONObject.getLong("iat");
            String string5 = jSONObject.getString("sub");
            Intrinsics.checkNotNullExpressionValue(string5, "jsonObj.getString(JSON_KEY_SUB)");
            this.sub = string5;
            Companion companion = Companion;
            this.name = companion.getNullableString$facebook_core_release(jSONObject, "name");
            this.givenName = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_GIVEN_NAME);
            this.middleName = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_MIDDLE_NAME);
            this.familyName = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_FAMILY_NAME);
            this.email = companion.getNullableString$facebook_core_release(jSONObject, "email");
            this.picture = companion.getNullableString$facebook_core_release(jSONObject, "picture");
            JSONArray optJSONArray = jSONObject.optJSONArray(JSON_KEY_USER_FRIENDS);
            Map<String, String> map = null;
            if (optJSONArray == null) {
                unmodifiableSet = null;
            } else {
                Utility utility = Utility.INSTANCE;
                unmodifiableSet = Collections.unmodifiableSet(Utility.jsonArrayToSet(optJSONArray));
            }
            this.userFriends = unmodifiableSet;
            this.userBirthday = companion.getNullableString$facebook_core_release(jSONObject, "user_birthday");
            JSONObject optJSONObject = jSONObject.optJSONObject(JSON_KEY_USER_AGE_RANGE);
            if (optJSONObject == null) {
                unmodifiableMap = null;
            } else {
                Utility utility2 = Utility.INSTANCE;
                unmodifiableMap = Collections.unmodifiableMap(Utility.convertJSONObjectToHashMap(optJSONObject));
            }
            this.userAgeRange = unmodifiableMap;
            JSONObject optJSONObject2 = jSONObject.optJSONObject(JSON_KEY_USER_HOMETOWN);
            if (optJSONObject2 == null) {
                unmodifiableMap2 = null;
            } else {
                Utility utility3 = Utility.INSTANCE;
                unmodifiableMap2 = Collections.unmodifiableMap(Utility.convertJSONObjectToStringMap(optJSONObject2));
            }
            this.userHometown = unmodifiableMap2;
            JSONObject optJSONObject3 = jSONObject.optJSONObject(JSON_KEY_USER_LOCATION);
            if (optJSONObject3 != null) {
                Utility utility4 = Utility.INSTANCE;
                map = Collections.unmodifiableMap(Utility.convertJSONObjectToStringMap(optJSONObject3));
            }
            this.userLocation = map;
            this.userGender = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_USER_GENDER);
            this.userLink = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_USER_LINK);
            return;
        }
        throw new IllegalArgumentException("Invalid claims".toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub) {
        this(jti, iss, aud, nonce, j10, j11, sub, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048448, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, null, null, null, null, null, null, null, null, null, null, null, null, 1048320, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, null, null, null, null, null, null, null, null, null, null, null, 1048064, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, null, null, null, null, null, null, null, null, null, null, 1047552, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, null, null, null, null, null, null, null, null, null, 1046528, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, null, null, null, null, null, null, null, null, 1044480, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, str6, null, null, null, null, null, null, null, 1040384, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Collection<String> collection) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, str6, collection, null, null, null, null, null, null, 1032192, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Collection<String> collection, @Nullable String str7) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, str6, collection, str7, null, null, null, null, null, 1015808, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Collection<String> collection, @Nullable String str7, @Nullable Map<String, Integer> map) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, str6, collection, str7, map, null, null, null, null, 983040, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Collection<String> collection, @Nullable String str7, @Nullable Map<String, Integer> map, @Nullable Map<String, String> map2) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, str6, collection, str7, map, map2, null, null, null, 917504, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Collection<String> collection, @Nullable String str7, @Nullable Map<String, Integer> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, str6, collection, str7, map, map2, map3, null, null, 786432, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Collection<String> collection, @Nullable String str7, @Nullable Map<String, Integer> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @Nullable String str8) {
        this(jti, iss, aud, nonce, j10, j11, sub, str, str2, str3, str4, str5, str6, collection, str7, map, map2, map3, str8, null, 524288, null);
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(new java.net.URL(r2).getHost(), "www.facebook.com") == false) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean isValidClaims(org.json.JSONObject r9, java.lang.String r10) {
        /*
            r8 = this;
            java.lang.String r0 = "iss"
            r1 = 0
            if (r9 != 0) goto L6
            return r1
        L6:
            java.lang.String r2 = "jti"
            java.lang.String r3 = r9.optString(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            int r2 = r3.length()
            r3 = 1
            if (r2 != 0) goto L18
            r2 = 1
            goto L19
        L18:
            r2 = 0
        L19:
            if (r2 == 0) goto L1c
            return r1
        L1c:
            java.lang.String r2 = r9.optString(r0)     // Catch: java.net.MalformedURLException -> Lde
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)     // Catch: java.net.MalformedURLException -> Lde
            int r0 = r2.length()     // Catch: java.net.MalformedURLException -> Lde
            if (r0 != 0) goto L2b
            r0 = 1
            goto L2c
        L2b:
            r0 = 0
        L2c:
            if (r0 != 0) goto Lde
            java.net.URL r0 = new java.net.URL     // Catch: java.net.MalformedURLException -> Lde
            r0.<init>(r2)     // Catch: java.net.MalformedURLException -> Lde
            java.lang.String r0 = r0.getHost()     // Catch: java.net.MalformedURLException -> Lde
            java.lang.String r4 = "facebook.com"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r4)     // Catch: java.net.MalformedURLException -> Lde
            if (r0 != 0) goto L53
            java.net.URL r0 = new java.net.URL     // Catch: java.net.MalformedURLException -> Lde
            r0.<init>(r2)     // Catch: java.net.MalformedURLException -> Lde
            java.lang.String r0 = r0.getHost()     // Catch: java.net.MalformedURLException -> Lde
            java.lang.String r2 = "www.facebook.com"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)     // Catch: java.net.MalformedURLException -> Lde
            if (r0 != 0) goto L53
            goto Lde
        L53:
            java.lang.String r0 = "aud"
            java.lang.String r2 = r9.optString(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            int r0 = r2.length()
            if (r0 != 0) goto L64
            r0 = 1
            goto L65
        L64:
            r0 = 0
        L65:
            if (r0 != 0) goto Lde
            com.facebook.FacebookSdk r0 = com.facebook.FacebookSdk.INSTANCE
            java.lang.String r0 = com.facebook.FacebookSdk.getApplicationId()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
            if (r0 != 0) goto L74
            goto Lde
        L74:
            java.util.Date r0 = new java.util.Date
            java.lang.String r2 = "exp"
            long r4 = r9.optLong(r2)
            r2 = 1000(0x3e8, float:1.401E-42)
            long r6 = (long) r2
            long r4 = r4 * r6
            r0.<init>(r4)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            boolean r0 = r2.after(r0)
            if (r0 == 0) goto L90
            return r1
        L90:
            java.lang.String r0 = "iat"
            long r4 = r9.optLong(r0)
            java.util.Date r0 = new java.util.Date
            long r4 = r4 * r6
            r6 = 600000(0x927c0, double:2.964394E-318)
            long r4 = r4 + r6
            r0.<init>(r4)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            boolean r0 = r2.after(r0)
            if (r0 == 0) goto Lad
            return r1
        Lad:
            java.lang.String r0 = "sub"
            java.lang.String r2 = r9.optString(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            int r0 = r2.length()
            if (r0 != 0) goto Lbe
            r0 = 1
            goto Lbf
        Lbe:
            r0 = 0
        Lbf:
            if (r0 == 0) goto Lc2
            return r1
        Lc2:
            java.lang.String r0 = "nonce"
            java.lang.String r9 = r9.optString(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r0)
            int r0 = r9.length()
            if (r0 != 0) goto Ld3
            r0 = 1
            goto Ld4
        Ld3:
            r0 = 0
        Ld4:
            if (r0 != 0) goto Lde
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 != 0) goto Ldd
            goto Lde
        Ldd:
            return r3
        Lde:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AuthenticationTokenClaims.isValidClaims(org.json.JSONObject, java.lang.String):boolean");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AuthenticationTokenClaims) {
            AuthenticationTokenClaims authenticationTokenClaims = (AuthenticationTokenClaims) obj;
            return Intrinsics.areEqual(this.jti, authenticationTokenClaims.jti) && Intrinsics.areEqual(this.iss, authenticationTokenClaims.iss) && Intrinsics.areEqual(this.aud, authenticationTokenClaims.aud) && Intrinsics.areEqual(this.nonce, authenticationTokenClaims.nonce) && this.exp == authenticationTokenClaims.exp && this.iat == authenticationTokenClaims.iat && Intrinsics.areEqual(this.sub, authenticationTokenClaims.sub) && Intrinsics.areEqual(this.name, authenticationTokenClaims.name) && Intrinsics.areEqual(this.givenName, authenticationTokenClaims.givenName) && Intrinsics.areEqual(this.middleName, authenticationTokenClaims.middleName) && Intrinsics.areEqual(this.familyName, authenticationTokenClaims.familyName) && Intrinsics.areEqual(this.email, authenticationTokenClaims.email) && Intrinsics.areEqual(this.picture, authenticationTokenClaims.picture) && Intrinsics.areEqual(this.userFriends, authenticationTokenClaims.userFriends) && Intrinsics.areEqual(this.userBirthday, authenticationTokenClaims.userBirthday) && Intrinsics.areEqual(this.userAgeRange, authenticationTokenClaims.userAgeRange) && Intrinsics.areEqual(this.userHometown, authenticationTokenClaims.userHometown) && Intrinsics.areEqual(this.userLocation, authenticationTokenClaims.userLocation) && Intrinsics.areEqual(this.userGender, authenticationTokenClaims.userGender) && Intrinsics.areEqual(this.userLink, authenticationTokenClaims.userLink);
        }
        return false;
    }

    @NotNull
    public final String getAud() {
        return this.aud;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    public final long getExp() {
        return this.exp;
    }

    @Nullable
    public final String getFamilyName() {
        return this.familyName;
    }

    @Nullable
    public final String getGivenName() {
        return this.givenName;
    }

    public final long getIat() {
        return this.iat;
    }

    @NotNull
    public final String getIss() {
        return this.iss;
    }

    @NotNull
    public final String getJti() {
        return this.jti;
    }

    @Nullable
    public final String getMiddleName() {
        return this.middleName;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getNonce() {
        return this.nonce;
    }

    @Nullable
    public final String getPicture() {
        return this.picture;
    }

    @NotNull
    public final String getSub() {
        return this.sub;
    }

    @Nullable
    public final Map<String, Integer> getUserAgeRange() {
        return this.userAgeRange;
    }

    @Nullable
    public final String getUserBirthday() {
        return this.userBirthday;
    }

    @Nullable
    public final Set<String> getUserFriends() {
        return this.userFriends;
    }

    @Nullable
    public final String getUserGender() {
        return this.userGender;
    }

    @Nullable
    public final Map<String, String> getUserHometown() {
        return this.userHometown;
    }

    @Nullable
    public final String getUserLink() {
        return this.userLink;
    }

    @Nullable
    public final Map<String, String> getUserLocation() {
        return this.userLocation;
    }

    public int hashCode() {
        int hashCode = (((((((((((((527 + this.jti.hashCode()) * 31) + this.iss.hashCode()) * 31) + this.aud.hashCode()) * 31) + this.nonce.hashCode()) * 31) + b7.b.a(this.exp)) * 31) + b7.b.a(this.iat)) * 31) + this.sub.hashCode()) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.givenName;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.middleName;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.familyName;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.email;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.picture;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Set<String> set = this.userFriends;
        int hashCode8 = (hashCode7 + (set == null ? 0 : set.hashCode())) * 31;
        String str7 = this.userBirthday;
        int hashCode9 = (hashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Map<String, Integer> map = this.userAgeRange;
        int hashCode10 = (hashCode9 + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, String> map2 = this.userHometown;
        int hashCode11 = (hashCode10 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, String> map3 = this.userLocation;
        int hashCode12 = (hashCode11 + (map3 == null ? 0 : map3.hashCode())) * 31;
        String str8 = this.userGender;
        int hashCode13 = (hashCode12 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.userLink;
        return hashCode13 + (str9 != null ? str9.hashCode() : 0);
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final String toEnCodedString() {
        String authenticationTokenClaims = toString();
        Charset charset = Charsets.UTF_8;
        Objects.requireNonNull(authenticationTokenClaims, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = authenticationTokenClaims.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        String encodeToString = Base64.encodeToString(bytes, 8);
        Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(claimsJsonString.toByteArray(), Base64.URL_SAFE)");
        return encodeToString;
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final JSONObject toJSONObject$facebook_core_release() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("jti", this.jti);
        jSONObject.put("iss", this.iss);
        jSONObject.put("aud", this.aud);
        jSONObject.put("nonce", this.nonce);
        jSONObject.put("exp", this.exp);
        jSONObject.put("iat", this.iat);
        String str = this.sub;
        if (str != null) {
            jSONObject.put("sub", str);
        }
        String str2 = this.name;
        if (str2 != null) {
            jSONObject.put("name", str2);
        }
        String str3 = this.givenName;
        if (str3 != null) {
            jSONObject.put(JSON_KEY_GIVEN_NAME, str3);
        }
        String str4 = this.middleName;
        if (str4 != null) {
            jSONObject.put(JSON_KEY_MIDDLE_NAME, str4);
        }
        String str5 = this.familyName;
        if (str5 != null) {
            jSONObject.put(JSON_KEY_FAMILY_NAME, str5);
        }
        String str6 = this.email;
        if (str6 != null) {
            jSONObject.put("email", str6);
        }
        String str7 = this.picture;
        if (str7 != null) {
            jSONObject.put("picture", str7);
        }
        if (this.userFriends != null) {
            jSONObject.put(JSON_KEY_USER_FRIENDS, new JSONArray((Collection) this.userFriends));
        }
        String str8 = this.userBirthday;
        if (str8 != null) {
            jSONObject.put("user_birthday", str8);
        }
        if (this.userAgeRange != null) {
            jSONObject.put(JSON_KEY_USER_AGE_RANGE, new JSONObject(this.userAgeRange));
        }
        if (this.userHometown != null) {
            jSONObject.put(JSON_KEY_USER_HOMETOWN, new JSONObject(this.userHometown));
        }
        if (this.userLocation != null) {
            jSONObject.put(JSON_KEY_USER_LOCATION, new JSONObject(this.userLocation));
        }
        String str9 = this.userGender;
        if (str9 != null) {
            jSONObject.put(JSON_KEY_USER_GENDER, str9);
        }
        String str10 = this.userLink;
        if (str10 != null) {
            jSONObject.put(JSON_KEY_USER_LINK, str10);
        }
        return jSONObject;
    }

    @NotNull
    public String toString() {
        String jSONObject = toJSONObject$facebook_core_release().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "claimsJsonObject.toString()");
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i9) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.jti);
        dest.writeString(this.iss);
        dest.writeString(this.aud);
        dest.writeString(this.nonce);
        dest.writeLong(this.exp);
        dest.writeLong(this.iat);
        dest.writeString(this.sub);
        dest.writeString(this.name);
        dest.writeString(this.givenName);
        dest.writeString(this.middleName);
        dest.writeString(this.familyName);
        dest.writeString(this.email);
        dest.writeString(this.picture);
        if (this.userFriends == null) {
            dest.writeStringList(null);
        } else {
            dest.writeStringList(new ArrayList(this.userFriends));
        }
        dest.writeString(this.userBirthday);
        dest.writeMap(this.userAgeRange);
        dest.writeMap(this.userHometown);
        dest.writeMap(this.userLocation);
        dest.writeString(this.userGender);
        dest.writeString(this.userLink);
    }

    public /* synthetic */ AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection collection, String str12, Map map, Map map2, Map map3, String str13, String str14, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, j10, j11, str5, (i9 & 128) != 0 ? null : str6, (i9 & 256) != 0 ? null : str7, (i9 & 512) != 0 ? null : str8, (i9 & 1024) != 0 ? null : str9, (i9 & 2048) != 0 ? null : str10, (i9 & 4096) != 0 ? null : str11, (i9 & 8192) != 0 ? null : collection, (i9 & 16384) != 0 ? null : str12, (32768 & i9) != 0 ? null : map, (65536 & i9) != 0 ? null : map2, (131072 & i9) != 0 ? null : map3, (262144 & i9) != 0 ? null : str13, (i9 & 524288) != 0 ? null : str14);
    }

    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String jti, @NotNull String iss, @NotNull String aud, @NotNull String nonce, long j10, long j11, @NotNull String sub, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Collection<String> collection, @Nullable String str7, @Nullable Map<String, Integer> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @Nullable String str8, @Nullable String str9) {
        Intrinsics.checkNotNullParameter(jti, "jti");
        Intrinsics.checkNotNullParameter(iss, "iss");
        Intrinsics.checkNotNullParameter(aud, "aud");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(sub, "sub");
        Validate validate = Validate.INSTANCE;
        Validate.notEmpty(jti, "jti");
        Validate.notEmpty(iss, "iss");
        Validate.notEmpty(aud, "aud");
        Validate.notEmpty(nonce, "nonce");
        Validate.notEmpty(sub, "sub");
        this.jti = jti;
        this.iss = iss;
        this.aud = aud;
        this.nonce = nonce;
        this.exp = j10;
        this.iat = j11;
        this.sub = sub;
        this.name = str;
        this.givenName = str2;
        this.middleName = str3;
        this.familyName = str4;
        this.email = str5;
        this.picture = str6;
        this.userFriends = collection != null ? Collections.unmodifiableSet(new HashSet(collection)) : null;
        this.userBirthday = str7;
        this.userAgeRange = map != null ? Collections.unmodifiableMap(new HashMap(map)) : null;
        this.userHometown = map2 != null ? Collections.unmodifiableMap(new HashMap(map2)) : null;
        this.userLocation = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
        this.userGender = str8;
        this.userLink = str9;
    }

    public AuthenticationTokenClaims(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        String readString = parcel.readString();
        Validate validate = Validate.INSTANCE;
        this.jti = Validate.notNullOrEmpty(readString, "jti");
        this.iss = Validate.notNullOrEmpty(parcel.readString(), "iss");
        this.aud = Validate.notNullOrEmpty(parcel.readString(), "aud");
        this.nonce = Validate.notNullOrEmpty(parcel.readString(), "nonce");
        this.exp = parcel.readLong();
        this.iat = parcel.readLong();
        this.sub = Validate.notNullOrEmpty(parcel.readString(), "sub");
        this.name = parcel.readString();
        this.givenName = parcel.readString();
        this.middleName = parcel.readString();
        this.familyName = parcel.readString();
        this.email = parcel.readString();
        this.picture = parcel.readString();
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        this.userFriends = createStringArrayList != null ? Collections.unmodifiableSet(new HashSet(createStringArrayList)) : null;
        this.userBirthday = parcel.readString();
        HashMap readHashMap = parcel.readHashMap(IntCompanionObject.INSTANCE.getClass().getClassLoader());
        readHashMap = readHashMap instanceof HashMap ? readHashMap : null;
        this.userAgeRange = readHashMap != null ? Collections.unmodifiableMap(readHashMap) : null;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        HashMap readHashMap2 = parcel.readHashMap(stringCompanionObject.getClass().getClassLoader());
        readHashMap2 = readHashMap2 instanceof HashMap ? readHashMap2 : null;
        this.userHometown = readHashMap2 != null ? Collections.unmodifiableMap(readHashMap2) : null;
        HashMap readHashMap3 = parcel.readHashMap(stringCompanionObject.getClass().getClassLoader());
        readHashMap3 = readHashMap3 instanceof HashMap ? readHashMap3 : null;
        this.userLocation = readHashMap3 != null ? Collections.unmodifiableMap(readHashMap3) : null;
        this.userGender = parcel.readString();
        this.userLink = parcel.readString();
    }
}
