package com.vk.api.sdk.auth;

import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.utils.Contants;
import com.vk.api.sdk.VKKeyValueStorage;
import com.vk.dto.common.id.UserId;
import com.vk.dto.common.id.UserIdKt;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 &2\u00020\u0001:\u0001&B!\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007B\u001b\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020$J\u0016\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fR\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\fR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u0006'"}, d2 = {"Lcom/vk/api/sdk/auth/VKAccessToken;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "accessToken", "", VKAccessToken.SECRET, "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;)V", NativeProtocol.WEB_DIALOG_PARAMS, "", "(Ljava/util/Map;)V", "getAccessToken", "()Ljava/lang/String;", VKAccessToken.CREATED, "", "getCreated", "()J", "email", "getEmail", "expirationDate", "httpsRequired", "", "isValid", "()Z", "phone", "getPhone", "phoneAccessKey", "getPhoneAccessKey", "getSecret", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "save", "", "bundle", "Landroid/os/Bundle;", "storage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "toMap", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKAccessToken {
    @NotNull
    private static final String ACCESS_TOKEN = "access_token";
    @NotNull
    private static final String CREATED = "created";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String EMAIL = "email";
    @NotNull
    private static final String EXPIRES_IN = "expires_in";
    @NotNull
    private static final String HTTPS_REQUIRED = "https_required";
    @NotNull
    private static final List<String> KEYS;
    @NotNull
    private static final String PHONE = "phone";
    @NotNull
    private static final String PHONE_ACCESS_KEY = "phone_access_key";
    @NotNull
    private static final String SECRET = "secret";
    @NotNull
    private static final String USER_ID = "user_id";
    @NotNull
    private static final String VK_ACCESS_TOKEN_KEY = "vk_access_token";
    @NotNull
    private final String accessToken;
    private final long created;
    @Nullable
    private final String email;
    private final long expirationDate;
    private final boolean httpsRequired;
    @Nullable
    private final String phone;
    @Nullable
    private final String phoneAccessKey;
    @Nullable
    private final String secret;
    @NotNull
    private final UserId userId;

    static {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"access_token", "expires_in", "user_id", SECRET, HTTPS_REQUIRED, CREATED, VK_ACCESS_TOKEN_KEY, "email", "phone", PHONE_ACCESS_KEY});
        KEYS = listOf;
    }

    public VKAccessToken(@NotNull Map<String, String> params) {
        long currentTimeMillis;
        long j10;
        Intrinsics.checkNotNullParameter(params, "params");
        String str = params.get("user_id");
        UserId userId = str == null ? null : UserIdKt.toUserId(Long.parseLong(str));
        Intrinsics.checkNotNull(userId);
        this.userId = userId;
        String str2 = params.get("access_token");
        Intrinsics.checkNotNull(str2);
        this.accessToken = str2;
        this.secret = params.get(SECRET);
        this.httpsRequired = Intrinsics.areEqual("1", params.get(HTTPS_REQUIRED));
        if (params.containsKey(CREATED)) {
            String str3 = params.get(CREATED);
            Intrinsics.checkNotNull(str3);
            currentTimeMillis = Long.parseLong(str3);
        } else {
            currentTimeMillis = System.currentTimeMillis();
        }
        this.created = currentTimeMillis;
        if (params.containsKey("expires_in")) {
            String str4 = params.get("expires_in");
            Intrinsics.checkNotNull(str4);
            j10 = Long.parseLong(str4);
        } else {
            j10 = -1;
        }
        this.expirationDate = j10;
        this.email = params.containsKey("email") ? params.get("email") : null;
        this.phone = params.containsKey("phone") ? params.get("phone") : null;
        this.phoneAccessKey = params.containsKey(PHONE_ACCESS_KEY) ? params.get(PHONE_ACCESS_KEY) : null;
    }

    private final Map<String, String> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("access_token", this.accessToken);
        hashMap.put(SECRET, this.secret);
        hashMap.put(HTTPS_REQUIRED, this.httpsRequired ? "1" : "0");
        hashMap.put(CREATED, String.valueOf(this.created));
        hashMap.put("expires_in", String.valueOf(this.expirationDate));
        hashMap.put("user_id", this.userId.toString());
        hashMap.put("email", this.email);
        hashMap.put("phone", this.phone);
        hashMap.put(PHONE_ACCESS_KEY, this.phoneAccessKey);
        return hashMap;
    }

    @NotNull
    public final String getAccessToken() {
        return this.accessToken;
    }

    public final long getCreated() {
        return this.created;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @Nullable
    public final String getPhoneAccessKey() {
        return this.phoneAccessKey;
    }

    @Nullable
    public final String getSecret() {
        return this.secret;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    public final boolean isValid() {
        long j10 = this.expirationDate;
        return j10 <= 0 || this.created + (j10 * ((long) 1000)) > System.currentTimeMillis();
    }

    public final void save(@NotNull Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, String> entry : toMap().entrySet()) {
            bundle2.putString(entry.getKey(), entry.getValue());
        }
        bundle.putBundle(VK_ACCESS_TOKEN_KEY, bundle2);
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/vk/api/sdk/auth/VKAccessToken$Companion;", "", "()V", "ACCESS_TOKEN", "", DebugCoroutineInfoImplKt.CREATED, "EMAIL", "EXPIRES_IN", "HTTPS_REQUIRED", "KEYS", "", "getKEYS", "()Ljava/util/List;", "PHONE", "PHONE_ACCESS_KEY", "SECRET", "USER_ID", "VK_ACCESS_TOKEN_KEY", "remove", "", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "restore", "Lcom/vk/api/sdk/auth/VKAccessToken;", "bundle", "Landroid/os/Bundle;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<String> getKEYS() {
            return VKAccessToken.KEYS;
        }

        public final void remove(@NotNull VKKeyValueStorage keyValueStorage) {
            Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
            for (String str : getKEYS()) {
                keyValueStorage.remove(str);
            }
        }

        @Nullable
        public final VKAccessToken restore(@Nullable Bundle bundle) {
            Bundle bundle2;
            if (bundle == null || (bundle2 = bundle.getBundle(VKAccessToken.VK_ACCESS_TOKEN_KEY)) == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            for (String key : bundle2.keySet()) {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                hashMap.put(key, bundle2.getString(key));
            }
            return new VKAccessToken(hashMap);
        }

        @Nullable
        public final VKAccessToken restore(@NotNull VKKeyValueStorage keyValueStorage) {
            Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
            HashMap hashMap = new HashMap(getKEYS().size());
            for (String str : getKEYS()) {
                String str2 = keyValueStorage.get(str);
                if (str2 != null) {
                    hashMap.put(str, str2);
                }
            }
            if (hashMap.containsKey("access_token") && hashMap.containsKey("user_id")) {
                return new VKAccessToken(hashMap);
            }
            return null;
        }
    }

    public final void save(@NotNull VKKeyValueStorage storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        for (Map.Entry<String, String> entry : toMap().entrySet()) {
            storage.putOrRemove(entry.getKey(), entry.getValue());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VKAccessToken(@org.jetbrains.annotations.NotNull com.vk.dto.common.id.UserId r3, @org.jetbrains.annotations.NotNull java.lang.String r4, @org.jetbrains.annotations.Nullable java.lang.String r5) {
        /*
            r2 = this;
            java.lang.String r0 = "userId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "accessToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r0 = 4
            kotlin.Pair[] r0 = new kotlin.Pair[r0]
            java.lang.String r3 = r3.toString()
            java.lang.String r1 = "user_id"
            kotlin.Pair r3 = kotlin.TuplesKt.to(r1, r3)
            r1 = 0
            r0[r1] = r3
            java.lang.String r3 = "access_token"
            kotlin.Pair r3 = kotlin.TuplesKt.to(r3, r4)
            r4 = 1
            r0[r4] = r3
            java.lang.String r3 = "secret"
            kotlin.Pair r3 = kotlin.TuplesKt.to(r3, r5)
            r4 = 2
            r0[r4] = r3
            java.lang.String r3 = "https_required"
            java.lang.String r4 = "1"
            kotlin.Pair r3 = kotlin.TuplesKt.to(r3, r4)
            r4 = 3
            r0[r4] = r3
            java.util.Map r3 = kotlin.collections.MapsKt.mapOf(r0)
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.auth.VKAccessToken.<init>(com.vk.dto.common.id.UserId, java.lang.String, java.lang.String):void");
    }
}
