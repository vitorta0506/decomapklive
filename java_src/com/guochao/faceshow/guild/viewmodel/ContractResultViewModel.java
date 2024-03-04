package com.guochao.faceshow.guild.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestKt;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u001f\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0015J\u0015\u0010\t\u001a\u00020\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\bR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "cancelResultLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "getCancelResultLiveData", "()Landroidx/lifecycle/MutableLiveData;", "cancellation", "cancellingRescind", "checkSignExpireLiveData", "", "getCheckSignExpireLiveData", "contractHistoryLiveData", "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;", "getContractHistoryLiveData", "cancelRescind", "", "guildId", "signId", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "(Ljava/lang/Integer;)V", "checkSignExpire", "checkSignState", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractResultViewModel extends BaseViewModel<BaseModel> {
    private boolean cancellation;
    private boolean cancellingRescind;
    @NotNull
    private final MutableLiveData<Boolean> cancelResultLiveData = new MutableLiveData<>();
    @NotNull
    private final MutableLiveData<ContractHistoryBean> contractHistoryLiveData = new MutableLiveData<>();
    @NotNull
    private final MutableLiveData<Integer> checkSignExpireLiveData = new MutableLiveData<>();

    public final void cancelRescind(@Nullable Integer num, @Nullable Integer num2) {
        if (num != null) {
            num.intValue();
            if (num2 != null) {
                num2.intValue();
                if (this.cancellingRescind) {
                    return;
                }
                this.cancellingRescind = true;
                GCRequest requestFromViewModel = GCRequestKt.requestFromViewModel(this, "api/token/guild/anchorin/cancelRescind");
                requestFromViewModel.putBody("signId", num2);
                requestFromViewModel.putBody("guildId", num);
                requestFromViewModel.getCallbackHolder().setSuccessClz(Integer.class);
                requestFromViewModel.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$cancelRescind$$inlined$success$1
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
                        MutableLiveData<Boolean> cancelResultLiveData = ContractResultViewModel.this.getCancelResultLiveData();
                        Integer num3 = (Integer) _response.getData();
                        boolean z10 = true;
                        cancelResultLiveData.setValue(Boolean.valueOf((num3 == null || num3.intValue() != 1) ? false : false));
                    }
                });
                requestFromViewModel.complete(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$cancelRescind$2
                    /* JADX INFO: Access modifiers changed from: package-private */
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
                        ContractResultViewModel.this.cancellingRescind = false;
                    }
                }).request();
            }
        }
    }

    public final void cancellation(@Nullable Integer num) {
        if (this.cancellation) {
            return;
        }
        this.cancellation = true;
        GCRequest requestFromViewModel = GCRequestKt.requestFromViewModel(this, "api/token/guild/anchorin/cancelSign");
        if (num != null) {
            requestFromViewModel.putBody("signId", Integer.valueOf(num.intValue()));
        }
        requestFromViewModel.getCallbackHolder().setSuccessClz(Integer.class);
        requestFromViewModel.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$cancellation$$inlined$success$1
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
                MutableLiveData<Boolean> cancelResultLiveData = ContractResultViewModel.this.getCancelResultLiveData();
                Integer num2 = (Integer) _response.getData();
                boolean z10 = true;
                cancelResultLiveData.setValue(Boolean.valueOf((num2 == null || num2.intValue() != 1) ? false : false));
            }
        });
        requestFromViewModel.complete(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$cancellation$3
            /* JADX INFO: Access modifiers changed from: package-private */
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
                ContractResultViewModel.this.cancellation = false;
            }
        }).request();
    }

    public final void checkSignExpire() {
        GCRequest requestFromViewModel = GCRequestKt.requestFromViewModel(this, "api/token/guild/anchorin/chkSignExpire");
        requestFromViewModel.getCallbackHolder().setSuccessClz(Integer.class);
        requestFromViewModel.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$checkSignExpire$$inlined$success$1
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
                ContractResultViewModel.this.getCheckSignExpireLiveData().setValue(_response.getData());
            }
        });
        requestFromViewModel.getCallbackHolder().setFailClz(Integer.class);
        requestFromViewModel.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$checkSignExpire$$inlined$fail$1
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
                ContractResultViewModel.this.getCheckSignExpireLiveData().setValue(0);
            }
        });
        requestFromViewModel.request();
    }

    public final void checkSignState() {
        GCRequest requestFromViewModel = GCRequestKt.requestFromViewModel(this, "api/token/guild/anchorin/findAnchorSignInfo");
        requestFromViewModel.getCallbackHolder().setSuccessClz(ContractHistoryBean.class);
        requestFromViewModel.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$checkSignState$$inlined$success$1
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
                ContractResultViewModel.this.getContractHistoryLiveData().setValue(_response.getData());
            }
        });
        requestFromViewModel.getCallbackHolder().setFailClz(ContractHistoryBean.class);
        requestFromViewModel.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.ContractResultViewModel$checkSignState$$inlined$fail$1
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
                ContractResultViewModel.this.getContractHistoryLiveData().setValue(null);
            }
        });
        requestFromViewModel.request();
    }

    @NotNull
    public final MutableLiveData<Boolean> getCancelResultLiveData() {
        return this.cancelResultLiveData;
    }

    @NotNull
    public final MutableLiveData<Integer> getCheckSignExpireLiveData() {
        return this.checkSignExpireLiveData;
    }

    @NotNull
    public final MutableLiveData<ContractHistoryBean> getContractHistoryLiveData() {
        return this.contractHistoryLiveData;
    }
}
