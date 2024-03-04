package com.guochao.faceshow.aaspring.base.mvvm.callback;

import androidx.exifinterface.media.ExifInterface;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/callback/LifecycleAwareCallback;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;", "()V", "onValue", "", "data", "(Ljava/lang/Object;)V", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class LifecycleAwareCallback<T> implements GCValueCallback<T> {
    @Override // com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback
    public void onError(int i9, @Nullable String str) {
        GCValueCallback.DefaultImpls.onError(this, i9, str);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback
    public void onValue(T t10) {
    }
}
