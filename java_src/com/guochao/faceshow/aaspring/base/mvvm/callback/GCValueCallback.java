package com.guochao.faceshow.aaspring.base.mvvm.callback;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;", ExifInterface.GPS_DIRECTION_TRUE, "", "onError", "", "code", "", "msg", "", "onValue", "data", "(Ljava/lang/Object;)V", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GCValueCallback<T> {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static <T> void onError(@NotNull GCValueCallback<T> gCValueCallback, int i9, @Nullable String str) {
        }
    }

    void onError(int i9, @Nullable String str);

    void onValue(T t10);
}
