package com.vk.api.sdk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0002"}, d2 = {"cached", "Lcom/vk/api/sdk/VKKeyValueStorage;", "core_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKKeyValueStorageKt {
    @NotNull
    public static final VKKeyValueStorage cached(@NotNull VKKeyValueStorage vKKeyValueStorage) {
        Intrinsics.checkNotNullParameter(vKKeyValueStorage, "<this>");
        return new VKCachedKeyValueStorage(vKKeyValueStorage);
    }
}
