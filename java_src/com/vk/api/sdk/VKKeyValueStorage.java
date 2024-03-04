package com.vk.api.sdk;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H&J\u001a\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H&¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/VKKeyValueStorage;", "", "get", "", "key", "put", "", "value", "putOrRemove", "remove", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKKeyValueStorage {

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static void putOrRemove(@NotNull VKKeyValueStorage vKKeyValueStorage, @NotNull String key, @Nullable String str) {
            Unit unit;
            Intrinsics.checkNotNullParameter(vKKeyValueStorage, "this");
            Intrinsics.checkNotNullParameter(key, "key");
            if (str == null) {
                unit = null;
            } else {
                vKKeyValueStorage.put(key, str);
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                vKKeyValueStorage.remove(key);
            }
        }
    }

    @Nullable
    String get(@NotNull String str);

    void put(@NotNull String str, @NotNull String str2);

    void putOrRemove(@NotNull String str, @Nullable String str2);

    void remove(@NotNull String str);
}
