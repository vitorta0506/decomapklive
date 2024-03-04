package com.vk.api.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.vk.api.sdk.VKKeyValueStorage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/VKPreferencesKeyValueStorage;", "Lcom/vk/api/sdk/VKKeyValueStorage;", "context", "Landroid/content/Context;", "prefsName", "", "(Landroid/content/Context;Ljava/lang/String;)V", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "get", "key", "put", "", "value", "remove", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKPreferencesKeyValueStorage implements VKKeyValueStorage {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String PREFERENCE_NAME = "com.vkontakte.android_pref_name";
    private final SharedPreferences prefs;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/VKPreferencesKeyValueStorage$Companion;", "", "()V", "PREFERENCE_NAME", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public VKPreferencesKeyValueStorage(@NotNull Context context, @NotNull String prefsName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(prefsName, "prefsName");
        this.prefs = context.getSharedPreferences(prefsName, 0);
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    @Nullable
    public String get(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.prefs.getString(key, null);
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    public void put(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.prefs.edit().putString(key, value).apply();
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    public void putOrRemove(@NotNull String str, @Nullable String str2) {
        VKKeyValueStorage.DefaultImpls.putOrRemove(this, str, str2);
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    public void remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.prefs.edit().remove(key).apply();
    }

    public /* synthetic */ VKPreferencesKeyValueStorage(Context context, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? PREFERENCE_NAME : str);
    }
}
