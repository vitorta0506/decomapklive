package com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.EventTrackData;
import com.guochao.faceshow.aaspring.beans.HelloStarSummon;
import com.guochao.faceshow.aaspring.beans.HelloStarSummonListBean;
import com.guochao.faceshow.aaspring.modulars.live.common.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0011R(\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "helloGiftNewUserLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;", "getHelloGiftNewUserLiveData", "()Landroidx/lifecycle/MutableLiveData;", "setHelloGiftNewUserLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", "helloSummonLiveData", "Lcom/guochao/faceshow/aaspring/beans/EventTrackData;", "getHelloSummonLiveData", "setHelloSummonLiveData", "checkSummonHelloUser", "", "loadHelloStarSummonData", "liveId", "", "startTime", "summonHelloUser", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloGiftNewUserViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private MutableLiveData<List<HelloStarSummon>> helloGiftNewUserLiveData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<EventTrackData> helloSummonLiveData = new MutableLiveData<>();

    public final void checkSummonHelloUser() {
        if (!i.e(BaseApplication.getInstance())) {
            this.helloSummonLiveData.postValue(new EventTrackData(3, "无网络"));
            return;
        }
        GCRequest method = new GCRequest("api/token/live/helloCallLog/checkCall").method(GCRequest.Method.GET);
        method.getCallbackHolder().setSuccessClz(Integer.class);
        method.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$success$1
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
                Integer num = (Integer) _response.getData();
                if (num != null && num.intValue() == 0) {
                    HelloGiftNewUserViewModel.this.getHelloSummonLiveData().postValue(new EventTrackData(0, ""));
                } else if (num != null && num.intValue() == 1) {
                    HelloGiftNewUserViewModel.this.summonHelloUser();
                } else {
                    String msg = _response.getMsg();
                    if (msg != null) {
                        HelloGiftNewUserViewModel.this.getHelloSummonLiveData().postValue(new EventTrackData(2, msg));
                    }
                }
            }
        });
        method.getCallbackHolder().setFailClz(Object.class);
        method.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel$checkSummonHelloUser$$inlined$fail$1
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
                String msg = response.getMsg();
                if (msg != null) {
                    HelloGiftNewUserViewModel.this.getHelloSummonLiveData().postValue(new EventTrackData(2, msg));
                }
            }
        });
        method.request();
    }

    @NotNull
    public final MutableLiveData<List<HelloStarSummon>> getHelloGiftNewUserLiveData() {
        return this.helloGiftNewUserLiveData;
    }

    @NotNull
    public final MutableLiveData<EventTrackData> getHelloSummonLiveData() {
        return this.helloSummonLiveData;
    }

    public final void loadHelloStarSummonData(@NotNull String liveId, @NotNull String startTime) {
        Intrinsics.checkNotNullParameter(liveId, "liveId");
        Intrinsics.checkNotNullParameter(startTime, "startTime");
        if (!i.e(BaseApplication.getInstance())) {
            this.helloGiftNewUserLiveData.postValue(new ArrayList());
            return;
        }
        GCRequest addQuery = new GCRequest("api/token/live/helloLog/helloList").method(GCRequest.Method.GET).addQuery("liveId", liveId).addQuery("liveStartTime", startTime);
        addQuery.getCallbackHolder().setSuccessClz(HelloStarSummonListBean.Result.class);
        addQuery.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$success$1
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
                Unit unit;
                Intrinsics.checkNotNullParameter(_response, "_response");
                HelloStarSummonListBean.Result result = (HelloStarSummonListBean.Result) _response.getData();
                if (result != null) {
                    List<HelloStarSummon> list = result.getList();
                    if (list == null || list.isEmpty()) {
                        HelloGiftNewUserViewModel.this.getHelloGiftNewUserLiveData().postValue(new ArrayList());
                    } else {
                        HelloGiftNewUserViewModel.this.getHelloGiftNewUserLiveData().postValue(result.getList());
                    }
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    HelloGiftNewUserViewModel.this.getHelloGiftNewUserLiveData().postValue(new ArrayList());
                }
            }
        });
        addQuery.getCallbackHolder().setFailClz(HelloStarSummonListBean.Result.class);
        addQuery.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel$loadHelloStarSummonData$$inlined$fail$1
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
                HelloGiftNewUserViewModel.this.getHelloGiftNewUserLiveData().postValue(new ArrayList());
            }
        });
        addQuery.request();
    }

    public final void setHelloGiftNewUserLiveData(@NotNull MutableLiveData<List<HelloStarSummon>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.helloGiftNewUserLiveData = mutableLiveData;
    }

    public final void setHelloSummonLiveData(@NotNull MutableLiveData<EventTrackData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.helloSummonLiveData = mutableLiveData;
    }

    public final void summonHelloUser() {
        if (!i.e(BaseApplication.getInstance())) {
            this.helloSummonLiveData.postValue(new EventTrackData(3, "无网络"));
            return;
        }
        GCRequest method = new GCRequest("api/token/live/helloCallLog/call").method(GCRequest.Method.GET);
        method.getCallbackHolder().setSuccessClz(Object.class);
        method.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel$summonHelloUser$$inlined$success$1
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
                HelloGiftNewUserViewModel.this.getHelloSummonLiveData().postValue(new EventTrackData(1, null, 2, null));
            }
        });
        method.getCallbackHolder().setFailClz(Object.class);
        method.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel$summonHelloUser$$inlined$fail$1
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
                String msg = response.getMsg();
                if (msg != null) {
                    HelloGiftNewUserViewModel.this.getHelloSummonLiveData().postValue(new EventTrackData(2, msg));
                }
            }
        });
        method.request();
    }
}
