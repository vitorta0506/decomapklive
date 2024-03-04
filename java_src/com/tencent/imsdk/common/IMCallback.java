package com.tencent.imsdk.common;

import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMCompleteCallback;
import com.tencent.imsdk.v2.V2TIMValueCallback;
/* loaded from: classes4.dex */
public abstract class IMCallback<T> {
    protected V2TIMCallback callback;
    protected V2TIMCompleteCallback<T> completeCallback;
    protected V2TIMValueCallback<T> valueCallback;

    /* JADX INFO: Access modifiers changed from: protected */
    public IMCallback(V2TIMCallback v2TIMCallback) {
        this.callback = v2TIMCallback;
    }

    public void fail(final int i9, final String str) {
        IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.common.IMCallback.2
            @Override // java.lang.Runnable
            public void run() {
                IMCallback iMCallback = IMCallback.this;
                V2TIMCallback v2TIMCallback = iMCallback.callback;
                if (v2TIMCallback != null) {
                    v2TIMCallback.onError(i9, str);
                    return;
                }
                V2TIMValueCallback<T> v2TIMValueCallback = iMCallback.valueCallback;
                if (v2TIMValueCallback != null) {
                    v2TIMValueCallback.onError(i9, str);
                }
            }
        });
    }

    public void success(final T t10) {
        IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.common.IMCallback.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                IMCallback iMCallback = IMCallback.this;
                V2TIMCallback v2TIMCallback = iMCallback.callback;
                if (v2TIMCallback != null) {
                    v2TIMCallback.onSuccess();
                    return;
                }
                V2TIMValueCallback<T> v2TIMValueCallback = iMCallback.valueCallback;
                if (v2TIMValueCallback != 0) {
                    v2TIMValueCallback.onSuccess(t10);
                    return;
                }
                V2TIMCompleteCallback<T> v2TIMCompleteCallback = iMCallback.completeCallback;
                if (v2TIMCompleteCallback != 0) {
                    v2TIMCompleteCallback.onComplete(0, "", t10);
                }
            }
        });
    }

    public void fail(final int i9, final String str, final T t10) {
        IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.common.IMCallback.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                IMCallback iMCallback = IMCallback.this;
                V2TIMCallback v2TIMCallback = iMCallback.callback;
                if (v2TIMCallback != null) {
                    v2TIMCallback.onError(i9, str);
                    return;
                }
                V2TIMValueCallback<T> v2TIMValueCallback = iMCallback.valueCallback;
                if (v2TIMValueCallback != null) {
                    v2TIMValueCallback.onError(i9, str);
                    return;
                }
                V2TIMCompleteCallback<T> v2TIMCompleteCallback = iMCallback.completeCallback;
                if (v2TIMCompleteCallback != 0) {
                    v2TIMCompleteCallback.onComplete(i9, str, t10);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IMCallback(V2TIMValueCallback<T> v2TIMValueCallback) {
        this.valueCallback = v2TIMValueCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IMCallback(V2TIMCompleteCallback<T> v2TIMCompleteCallback) {
        this.completeCallback = v2TIMCompleteCallback;
    }
}
