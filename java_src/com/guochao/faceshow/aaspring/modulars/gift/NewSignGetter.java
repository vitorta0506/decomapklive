package com.guochao.faceshow.aaspring.modulars.gift;

import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.UserSignBean;
import com.guochao.faceshow.utils.Md5;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001e\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/NewSignGetter;", "", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "Lcom/guochao/faceshow/aaspring/beans/UserSignBean;", "callBack", "", "getNewSign", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class NewSignGetter {
    @NotNull
    public static final NewSignGetter INSTANCE = new NewSignGetter();

    private NewSignGetter() {
    }

    public final void getNewSign(@Nullable LifecycleOwner lifecycleOwner, @NotNull final com.guochao.faceshow.aaspring.base.http.callback.c<UserSignBean> callBack) {
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        GCRequest bindToLifecycle = new GCRequest("api/token/user/sesign/generate").bindToLifecycle(lifecycleOwner);
        bindToLifecycle.getCallbackHolder().setSuccessClz(UserSignBean.class);
        bindToLifecycle.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.NewSignGetter$getNewSign$$inlined$success$1
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
                if (((UserSignBean) _response.getData()) != null) {
                    FaceCastBaseResponse faceCastBaseResponse = new FaceCastBaseResponse();
                    faceCastBaseResponse.setCode(_response.getCode());
                    faceCastBaseResponse.setResult(_response.getData());
                    com.guochao.faceshow.aaspring.base.http.callback.c.this.onSuccess(faceCastBaseResponse);
                }
            }
        });
        bindToLifecycle.complete(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.NewSignGetter$getNewSign$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest gCRequest) {
                invoke2(gCRequest);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                callBack.onCompleted();
            }
        }).onStart(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.NewSignGetter$getNewSign$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest gCRequest) {
                invoke2(gCRequest);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                String signature = Md5.md5("deviceId=" + it.getHeaderValue("deviceId") + "&unixTime=" + it.getHeaderValue("unixTime") + "&nonce=" + it.getHeaderValue("nonce"));
                Intrinsics.checkNotNullExpressionValue(signature, "signature");
                it.putBody("signature", signature);
            }
        }).request();
    }
}
