package com.vk.api.sdk.auth;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B)\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u0006\u0010\u000f\u001a\u00020\u0005J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthParams;", "", "appId", "", "redirectUrl", "", "scope", "", "Lcom/vk/api/sdk/auth/VKScope;", "(ILjava/lang/String;Ljava/util/Collection;)V", "getAppId", "()I", "getRedirectUrl", "()Ljava/lang/String;", "", "getScopeString", "toBundle", "Landroid/os/Bundle;", "toExtraBundle", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKAuthParams {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String DEFAULT_REDIRECT_URL = "https://oauth.vk.com/blank.html";
    @NotNull
    private static final String VK_APP_ID_KEY = "vk_app_id";
    @NotNull
    private static final String VK_APP_REDIRECT_URL_KEY = "vk_app_redirect_url";
    @NotNull
    private static final String VK_APP_SCOPE_KEY = "vk_app_scope";
    @NotNull
    private static final String VK_EXTRA_CLIENT_ID = "client_id";
    @NotNull
    private static final String VK_EXTRA_REDIRECT_URL = "redirect_url";
    @NotNull
    private static final String VK_EXTRA_REVOKE = "revoke";
    @NotNull
    private static final String VK_EXTRA_SCOPE = "scope";
    private final int appId;
    @NotNull
    private final String redirectUrl;
    @NotNull
    private final Set<VKScope> scope;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthParams$Companion;", "", "()V", "DEFAULT_REDIRECT_URL", "", "VK_APP_ID_KEY", "VK_APP_REDIRECT_URL_KEY", "VK_APP_SCOPE_KEY", "VK_EXTRA_CLIENT_ID", "VK_EXTRA_REDIRECT_URL", "VK_EXTRA_REVOKE", "VK_EXTRA_SCOPE", "fromBundle", "Lcom/vk/api/sdk/auth/VKAuthParams;", "bundle", "Landroid/os/Bundle;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final VKAuthParams fromBundle(@Nullable Bundle bundle) {
            int collectionSizeOrDefault;
            Collection collection = null;
            if (bundle == null) {
                return null;
            }
            int i9 = bundle.getInt(VKAuthParams.VK_APP_ID_KEY);
            ArrayList<String> stringArrayList = bundle.getStringArrayList(VKAuthParams.VK_APP_SCOPE_KEY);
            if (stringArrayList != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(stringArrayList, 10);
                collection = new ArrayList(collectionSizeOrDefault);
                for (String it : stringArrayList) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    collection.add(VKScope.valueOf(it));
                }
            }
            if (collection == null) {
                collection = SetsKt__SetsKt.emptySet();
            }
            String redirectUrl = bundle.getString(VKAuthParams.VK_APP_REDIRECT_URL_KEY, VKAuthParams.DEFAULT_REDIRECT_URL);
            Intrinsics.checkNotNullExpressionValue(redirectUrl, "redirectUrl");
            return new VKAuthParams(i9, redirectUrl, collection);
        }
    }

    @JvmOverloads
    public VKAuthParams(int i9) {
        this(i9, null, null, 6, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VKAuthParams(int i9, @NotNull String redirectUrl) {
        this(i9, redirectUrl, null, 4, null);
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
    }

    @JvmOverloads
    public VKAuthParams(int i9, @NotNull String redirectUrl, @NotNull Collection<? extends VKScope> scope) {
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.appId = i9;
        this.redirectUrl = redirectUrl;
        if (i9 != 0) {
            this.scope = new HashSet(scope);
            return;
        }
        throw new IllegalStateException("AppId is empty! Find out how to get your appId at https://vk.com/dev/access_token");
    }

    public final int getAppId() {
        return this.appId;
    }

    @NotNull
    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    @NotNull
    public final String getScopeString() {
        String joinToString$default;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this.scope, ",", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    @NotNull
    public final Bundle toBundle() {
        int collectionSizeOrDefault;
        Bundle bundle = new Bundle();
        bundle.putInt(VK_APP_ID_KEY, this.appId);
        Set<VKScope> set = this.scope;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (VKScope vKScope : set) {
            arrayList.add(vKScope.name());
        }
        bundle.putStringArrayList(VK_APP_SCOPE_KEY, new ArrayList<>(arrayList));
        bundle.putString(VK_APP_REDIRECT_URL_KEY, this.redirectUrl);
        return bundle;
    }

    @NotNull
    public final Bundle toExtraBundle() {
        String joinToString$default;
        Bundle bundle = new Bundle();
        bundle.putInt("client_id", this.appId);
        bundle.putBoolean(VK_EXTRA_REVOKE, true);
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this.scope, ",", null, null, 0, null, null, 62, null);
        bundle.putString("scope", joinToString$default);
        bundle.putString(VK_EXTRA_REDIRECT_URL, this.redirectUrl);
        return bundle;
    }

    public /* synthetic */ VKAuthParams(int i9, String str, Collection collection, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? DEFAULT_REDIRECT_URL : str, (i10 & 4) != 0 ? SetsKt__SetsKt.emptySet() : collection);
    }
}
