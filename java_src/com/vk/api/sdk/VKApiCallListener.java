package com.vk.api.sdk;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u00060\u0007j\u0002`\bH&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lcom/vk/api/sdk/VKApiCallListener;", "", "onApiCallFailed", "", "requestTagId", "", com.huawei.hms.push.e.f27721a, "Ljava/lang/Exception;", "Lkotlin/Exception;", "onApiCallStart", "url", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKApiCallListener {
    void onApiCallFailed(long j10, @NotNull Exception exc);

    void onApiCallStart(long j10, @NotNull String str);
}
