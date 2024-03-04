package com.vk.api.sdk;

import com.vk.api.sdk.VKKeyValueStorage;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0006H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/vk/api/sdk/VKCachedKeyValueStorage;", "Lcom/vk/api/sdk/VKKeyValueStorage;", "storage", "(Lcom/vk/api/sdk/VKKeyValueStorage;)V", "cache", "", "", "get", "key", "getFromStorage", "put", "", "value", "remove", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKCachedKeyValueStorage implements VKKeyValueStorage {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String NULL_STRING = new String();
    @NotNull
    private final Map<String, String> cache;
    @NotNull
    private final VKKeyValueStorage storage;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/VKCachedKeyValueStorage$Companion;", "", "()V", "NULL_STRING", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public VKCachedKeyValueStorage(@NotNull VKKeyValueStorage storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.storage = storage;
        this.cache = new ConcurrentHashMap();
    }

    private final String getFromStorage(String str) {
        String str2 = this.storage.get(str);
        this.cache.put(str, str2 == null ? NULL_STRING : str2);
        return str2;
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    @Nullable
    public String get(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String str = this.cache.get(key);
        if (str != NULL_STRING) {
            return str == null ? getFromStorage(key) : str;
        }
        return null;
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    public void put(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        if (Intrinsics.areEqual(this.cache.get(key), value)) {
            return;
        }
        this.cache.put(key, value);
        this.storage.put(key, value);
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    public void putOrRemove(@NotNull String str, @Nullable String str2) {
        VKKeyValueStorage.DefaultImpls.putOrRemove(this, str, str2);
    }

    @Override // com.vk.api.sdk.VKKeyValueStorage
    public void remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String str = this.cache.get(key);
        String str2 = NULL_STRING;
        if (str != str2) {
            this.cache.put(key, str2);
            this.storage.remove(key);
        }
    }
}
