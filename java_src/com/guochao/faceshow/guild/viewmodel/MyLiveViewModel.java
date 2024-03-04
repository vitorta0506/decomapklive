package com.guochao.faceshow.guild.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import com.guochao.faceshow.guild.bean.LiveStaticBean;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "contractHistoryLiveData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;", "getContractHistoryLiveData", "()Landroidx/lifecycle/MutableLiveData;", "liveStaticLiveData", "Lcom/guochao/faceshow/guild/bean/LiveStaticBean;", "getLiveStaticLiveData", "checkSignState", "", "getPeriodNumLiveData", "getStatic", "type", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class MyLiveViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<LiveStaticBean> liveStaticLiveData = new MutableLiveData<>();
    @NotNull
    private final MutableLiveData<ContractHistoryBean> contractHistoryLiveData = new MutableLiveData<>();

    public final void checkSignState() {
        GCRequest gCRequest = new GCRequest("api/token/guild/anchorin/findAnchorSignInfo");
        gCRequest.getCallbackHolder().setSuccessClz(ContractHistoryBean.class);
        gCRequest.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.MyLiveViewModel$checkSignState$$inlined$success$1
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
                MyLiveViewModel.this.getContractHistoryLiveData().setValue(_response.getData());
            }
        });
        gCRequest.getCallbackHolder().setFailClz(ContractHistoryBean.class);
        gCRequest.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.MyLiveViewModel$checkSignState$$inlined$fail$1
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
                MyLiveViewModel.this.getContractHistoryLiveData().setValue(null);
            }
        });
        gCRequest.request();
    }

    @NotNull
    public final MutableLiveData<ContractHistoryBean> getContractHistoryLiveData() {
        return this.contractHistoryLiveData;
    }

    @NotNull
    public final MutableLiveData<LiveStaticBean> getLiveStaticLiveData() {
        return this.liveStaticLiveData;
    }

    public final void getPeriodNumLiveData() {
        GCRequest gCRequest = new GCRequest("api/token/guild/anchorin/getExpireDay");
        gCRequest.getCallbackHolder().setSuccessClz(Integer.class);
        gCRequest.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.MyLiveViewModel$getPeriodNumLiveData$$inlined$success$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                Integer num = (Integer) _response.getData();
                if (num != null) {
                    MMKVUtils.putInt(BaseConfig.KEY_GUILD_EXPIRE_DAY, num.intValue());
                }
            }
        });
        gCRequest.getCallbackHolder().setFailClz(Integer.class);
        gCRequest.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.MyLiveViewModel$getPeriodNumLiveData$$inlined$fail$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
            }
        });
        gCRequest.request();
    }

    public final void getStatic(final int i9) {
        GCRequest putBody = new GCRequest("api/token/guild/anchorin/staticByType").putBody("type", Integer.valueOf(i9));
        putBody.getCallbackHolder().setSuccessClz(LiveStaticBean.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.MyLiveViewModel$getStatic$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                MutableLiveData<LiveStaticBean> liveStaticLiveData = MyLiveViewModel.this.getLiveStaticLiveData();
                LiveStaticBean liveStaticBean = (LiveStaticBean) _response.getData();
                if (liveStaticBean != null) {
                    liveStaticBean.setType(i9);
                } else {
                    liveStaticBean = null;
                }
                liveStaticLiveData.setValue(liveStaticBean);
            }
        });
        putBody.request();
    }
}
