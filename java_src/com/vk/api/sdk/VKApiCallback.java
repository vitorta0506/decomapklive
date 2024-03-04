package com.vk.api.sdk;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.GraphResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H&J\u0015\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0000H&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vk/api/sdk/VKApiCallback;", ExifInterface.GPS_DIRECTION_TRUE, "", "fail", "", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;", GraphResponse.SUCCESS_KEY, "result", "(Ljava/lang/Object;)V", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKApiCallback<T> {
    void fail(@NotNull Exception exc);

    void success(T t10);
}
