package be;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import com.snapchat.kit.sdk.core.security.KeyValueStore;
/* loaded from: classes4.dex */
public final class d implements KeyValueStore {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f1246a;

    /* renamed from: b  reason: collision with root package name */
    private final Gson f1247b;

    public d(SharedPreferences sharedPreferences, Gson gson) {
        this.f1246a = sharedPreferences;
        this.f1247b = gson;
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public final void clearEntry(@NonNull String str) {
        this.f1246a.edit().remove(str).apply();
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    @Nullable
    public final <T> T get(@NonNull String str, Class<T> cls) {
        String string = getString(str, null);
        if (string == null) {
            return null;
        }
        try {
            return (T) this.f1247b.fromJson(string, (Class<Object>) cls);
        } catch (JsonParseException unused) {
            clearEntry(str);
            return null;
        }
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    @Nullable
    public final String getString(@NonNull String str, @Nullable String str2) {
        return this.f1246a.getString(str, str2);
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public final void put(@NonNull String str, Object obj) {
        putString(str, this.f1247b.toJson(obj));
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public final void putString(@NonNull String str, @Nullable String str2) {
        this.f1246a.edit().putString(str, str2).apply();
    }
}
