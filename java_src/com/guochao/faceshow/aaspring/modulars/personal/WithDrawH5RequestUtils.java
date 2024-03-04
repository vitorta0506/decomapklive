package com.guochao.faceshow.aaspring.modulars.personal;

import androidx.lifecycle.LifecycleOwner;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ0\u0010\n\u001a\u00020\t2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;", "", "Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "", "callBack", "Landroidx/lifecycle/LifecycleOwner;", "lifecycle", "", NativeProtocol.WEB_DIALOG_PARAMS, "", "startRequest", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class WithDrawH5RequestUtils {
    public final void startRequest(@NotNull final com.guochao.faceshow.aaspring.base.http.callback.c<String> callBack, @NotNull LifecycleOwner lifecycle, @NotNull Map<String, ? extends Object> params) {
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(params, "params");
        GCRequest bindToLifecycle = new GCRequest("api/token/promotion/invite-earn-money/applyWithdraw").bindToLifecycle(lifecycle);
        for (String str : params.keySet()) {
            Object obj = params.get(str);
            if (obj != null) {
                bindToLifecycle.putBody(str, obj);
            }
        }
        bindToLifecycle.getCallbackHolder().setSuccessClz(Object.class);
        bindToLifecycle.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.WithDrawH5RequestUtils$startRequest$$inlined$success$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                FaceCastBaseResponse faceCastBaseResponse = new FaceCastBaseResponse();
                faceCastBaseResponse.setCode(_response.getCode());
                faceCastBaseResponse.setResult(GsonGetter.getGson().toJson(_response.getData()));
                faceCastBaseResponse.setMsg(_response.getMsg());
                com.guochao.faceshow.aaspring.base.http.callback.c.this.onSuccess(faceCastBaseResponse);
            }
        });
        bindToLifecycle.getCallbackHolder().setFailClz(Object.class);
        bindToLifecycle.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.WithDrawH5RequestUtils$startRequest$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                Throwable error = response.getError();
                if (error == null) {
                    error = new Exception("");
                }
                com.guochao.faceshow.aaspring.base.http.callback.c.this.onFailure(new g7.a(error, response.getCode()));
            }
        });
        bindToLifecycle.request();
    }
}
