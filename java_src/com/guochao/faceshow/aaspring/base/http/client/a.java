package com.guochao.faceshow.aaspring.base.http.client;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import java.io.File;
import java.util.Map;
@Deprecated
/* loaded from: classes3.dex */
public interface a {
    com.guochao.faceshow.aaspring.base.utils.a a(@Nullable LifecycleOwner lifecycleOwner, @NonNull String str, @NonNull String str2, @Nullable c<File> cVar);

    <T> com.guochao.faceshow.aaspring.base.utils.a b(LifecycleOwner lifecycleOwner, String str, Map<String, String> map, c<T> cVar);
}
