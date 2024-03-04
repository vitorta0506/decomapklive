package com.facebook.login;

import android.os.Bundle;
import android.util.Base64;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import io.jsonwebtoken.JwtParser;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.CharRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\f\u001a\u00020\u0006H\u0007J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u000f"}, d2 = {"Lcom/facebook/login/PKCEUtil;", "", "()V", "createCodeExchangeRequest", "Lcom/facebook/GraphRequest;", "authorizationCode", "", "redirectUri", "codeVerifier", "generateCodeChallenge", "codeChallengeMethod", "Lcom/facebook/login/CodeChallengeMethod;", "generateCodeVerifier", "isValidCodeVerifier", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PKCEUtil {
    @NotNull
    public static final PKCEUtil INSTANCE = new PKCEUtil();

    private PKCEUtil() {
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest createCodeExchangeRequest(@NotNull String authorizationCode, @NotNull String redirectUri, @NotNull String codeVerifier) {
        Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
        Intrinsics.checkNotNullParameter(redirectUri, "redirectUri");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        Bundle bundle = new Bundle();
        bundle.putString("code", authorizationCode);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        bundle.putString("client_id", FacebookSdk.getApplicationId());
        bundle.putString("redirect_uri", redirectUri);
        bundle.putString("code_verifier", codeVerifier);
        GraphRequest newGraphPathRequest = GraphRequest.Companion.newGraphPathRequest(null, "oauth/access_token", null);
        newGraphPathRequest.setHttpMethod(HttpMethod.GET);
        newGraphPathRequest.setParameters(bundle);
        return newGraphPathRequest;
    }

    @JvmStatic
    @NotNull
    public static final String generateCodeChallenge(@NotNull String codeVerifier, @NotNull CodeChallengeMethod codeChallengeMethod) throws FacebookException {
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        Intrinsics.checkNotNullParameter(codeChallengeMethod, "codeChallengeMethod");
        if (isValidCodeVerifier(codeVerifier)) {
            if (codeChallengeMethod == CodeChallengeMethod.PLAIN) {
                return codeVerifier;
            }
            try {
                byte[] bytes = codeVerifier.getBytes(Charsets.US_ASCII);
                Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(bytes, 0, bytes.length);
                String encodeToString = Base64.encodeToString(messageDigest.digest(), 11);
                Intrinsics.checkNotNullExpressionValue(encodeToString, "{\n      // try to generate challenge with S256\n      val bytes: ByteArray = codeVerifier.toByteArray(Charsets.US_ASCII)\n      val messageDigest = MessageDigest.getInstance(\"SHA-256\")\n      messageDigest.update(bytes, 0, bytes.size)\n      val digest = messageDigest.digest()\n\n      Base64.encodeToString(digest, Base64.URL_SAFE or Base64.NO_PADDING or Base64.NO_WRAP)\n    }");
                return encodeToString;
            } catch (Exception e10) {
                throw new FacebookException(e10);
            }
        }
        throw new FacebookException("Invalid Code Verifier.");
    }

    @JvmStatic
    @NotNull
    public static final String generateCodeVerifier() {
        int random;
        List plus;
        List plus2;
        List plus3;
        List plus4;
        List plus5;
        List plus6;
        String joinToString$default;
        Object random2;
        random = RangesKt___RangesKt.random(new IntRange(43, 128), Random.Default);
        plus = CollectionsKt___CollectionsKt.plus((Iterable) new CharRange('a', 'z'), (Iterable) new CharRange('A', 'Z'));
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) new CharRange('0', '9'));
        plus3 = CollectionsKt___CollectionsKt.plus((Collection<? extends char>) ((Collection<? extends Object>) plus2), '-');
        plus4 = CollectionsKt___CollectionsKt.plus((Collection<? extends Character>) ((Collection<? extends Object>) plus3), Character.valueOf(JwtParser.SEPARATOR_CHAR));
        plus5 = CollectionsKt___CollectionsKt.plus((Collection<? extends char>) ((Collection<? extends Object>) plus4), '_');
        plus6 = CollectionsKt___CollectionsKt.plus((Collection<? extends char>) ((Collection<? extends Object>) plus5), '~');
        ArrayList arrayList = new ArrayList(random);
        for (int i9 = 0; i9 < random; i9++) {
            random2 = CollectionsKt___CollectionsKt.random(plus6, Random.Default);
            arrayList.add(Character.valueOf(((Character) random2).charValue()));
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, "", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    @JvmStatic
    public static final boolean isValidCodeVerifier(@Nullable String str) {
        if ((str == null || str.length() == 0) || str.length() < 43 || str.length() > 128) {
            return false;
        }
        return new Regex("^[-._~A-Za-z0-9]+$").matches(str);
    }
}
