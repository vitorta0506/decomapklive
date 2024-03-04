package com.guochao.faceshow.aaspring.base.http.callback;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.context.GCApplication;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public abstract class c<T> extends b<FaceCastBaseResponse<T>> implements com.guochao.faceshow.aaspring.base.utils.a {
    public boolean mCancel;
    WeakReference<Context> mContextWeakReference;
    private LifecycleOwner mLifecycleOwner;
    BaseFaceCastRequest mRequest;
    private int mCurrentRetry = 1;
    private int mRetryCount = 1;

    private Context getContext() {
        WeakReference<Context> weakReference = this.mContextWeakReference;
        if (weakReference != null && weakReference.get() != null) {
            return this.mContextWeakReference.get();
        }
        return GCApplication.app();
    }

    @Override // com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        this.mCancel = true;
    }

    public BaseFaceCastRequest getRequest() {
        return this.mRequest;
    }

    public int getRetryCount() {
        return this.mCurrentRetry;
    }

    @Override // com.guochao.faceshow.aaspring.base.http.callback.b
    public void onCompleted() {
        BaseFaceCastRequest baseFaceCastRequest = this.mRequest;
        if (baseFaceCastRequest != null) {
            baseFaceCastRequest.z();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.http.callback.b
    public void onError(g7.a aVar) {
        int i9;
        int i10;
        if (this.mCancel) {
            onFailure(aVar);
        } else if (this.mRequest != null && n7.c.c() && (i9 = this.mRetryCount) > 1 && (i10 = this.mCurrentRetry) < i9) {
            this.mCurrentRetry = i10 + 1;
            this.mRequest.M(this);
        } else {
            BaseFaceCastRequest baseFaceCastRequest = this.mRequest;
            if (baseFaceCastRequest != null && baseFaceCastRequest.q().a() && this.mRequest.f() != null) {
                this.mRequest.f().recordError(aVar, this.mRequest.o());
            }
            onFailure(aVar);
        }
    }

    public abstract void onFailure(@NonNull g7.a<T> aVar);

    public abstract void onResponse(@Nullable T t10, @NonNull FaceCastBaseResponse<T> faceCastBaseResponse);

    @Override // com.guochao.faceshow.aaspring.base.http.callback.b
    public void onStart() {
    }

    @Override // com.guochao.faceshow.aaspring.base.http.callback.b
    public /* bridge */ /* synthetic */ void onSuccess(Object obj) {
        onSuccess((FaceCastBaseResponse) ((FaceCastBaseResponse) obj));
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        this.mLifecycleOwner = lifecycleOwner;
        if (lifecycleOwner instanceof Context) {
            this.mContextWeakReference = new WeakReference<>((Context) this.mLifecycleOwner);
        } else if (lifecycleOwner instanceof Fragment) {
            this.mContextWeakReference = new WeakReference<>(((Fragment) this.mLifecycleOwner).getActivity());
        }
    }

    public void setRequest(BaseFaceCastRequest baseFaceCastRequest) {
        this.mRequest = baseFaceCastRequest;
    }

    public void setRetryCount(int i9) {
        this.mRetryCount = i9;
    }

    public void onSuccess(FaceCastBaseResponse<T> faceCastBaseResponse) {
        if (this.mCancel) {
            return;
        }
        if (faceCastBaseResponse != null) {
            if (faceCastBaseResponse.getCode() == 1) {
                onResponse(faceCastBaseResponse.getResult(), faceCastBaseResponse);
                return;
            }
            g7.a aVar = new g7.a(new RuntimeException(faceCastBaseResponse.getMsg()), faceCastBaseResponse.getCode());
            aVar.f(faceCastBaseResponse.getResult());
            onError(aVar);
            return;
        }
        onError(new g7.a(new RuntimeException("data is null"), -1));
    }
}
