package com.snapchat.kit.sdk.core.security;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
@Deprecated
/* loaded from: classes4.dex */
public class SecureSharedPreferences implements KeyValueStore {
    private static final String TAG = "SecureSharedPreferences";
    private final EncryptDecryptAlgorithm mAlgorithm;
    private final Gson mGson;
    private final SharedPreferences mSharedPreferences;

    public SecureSharedPreferences(SharedPreferences sharedPreferences, EncryptDecryptAlgorithm encryptDecryptAlgorithm, Gson gson) {
        this.mSharedPreferences = sharedPreferences;
        this.mAlgorithm = encryptDecryptAlgorithm;
        this.mGson = gson;
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public void clearEntry(@NonNull String str) {
        this.mSharedPreferences.edit().remove(str).apply();
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public <T> T get(@NonNull String str, Class<T> cls) {
        String string = getString(str, null);
        if (string == null) {
            return null;
        }
        try {
            return (T) this.mGson.fromJson(string, (Class<Object>) cls);
        } catch (JsonParseException unused) {
            clearEntry(str);
            return null;
        }
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public String getString(@NonNull String str, @Nullable String str2) {
        try {
            String string = this.mSharedPreferences.getString(str, null);
            if (string == null) {
                return str2;
            }
            String decrypt = this.mAlgorithm.decrypt(string);
            if (decrypt == null) {
                clearEntry(str);
                return str2;
            }
            return decrypt;
        } catch (ClassCastException unused) {
            return str2;
        }
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public void put(@NonNull String str, Object obj) {
        putString(str, this.mGson.toJson(obj));
    }

    @Override // com.snapchat.kit.sdk.core.security.KeyValueStore
    public void putString(@NonNull String str, @Nullable String str2) {
        this.mSharedPreferences.edit().putString(str, str2 == null ? null : this.mAlgorithm.encrypt(str2)).apply();
    }
}
