package com.guochao.faceshow.guild.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.LoadingStateModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "chckIdResultLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "getChckIdResultLiveData", "()Landroidx/lifecycle/MutableLiveData;", "checkIdValid", "", "id", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InputGuildIdViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<Integer> chckIdResultLiveData = new MutableLiveData<>();

    public final void checkIdValid(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        GCRequest putBody = new GCRequest("api/token/guild/anchorin/chkGhIdValid").putBody("guildId", id2);
        putBody.getCallbackHolder().setSuccessClz(Integer.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.InputGuildIdViewModel$checkIdValid$$inlined$success$1
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
                InputGuildIdViewModel.this.getChckIdResultLiveData().setValue(_response.getData());
            }
        });
        putBody.getCallbackHolder().setFailClz(Integer.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.InputGuildIdViewModel$checkIdValid$$inlined$fail$1
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
                InputGuildIdViewModel.this.getChckIdResultLiveData().setValue(-1);
            }
        });
        putBody.complete(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.InputGuildIdViewModel$checkIdValid$3
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
                InputGuildIdViewModel.this.publishingLoadingState(new LoadingStateModel.LoadingSuccessModel(null, 1, null));
            }
        }).request();
    }

    @NotNull
    public final MutableLiveData<Integer> getChckIdResultLiveData() {
        return this.chckIdResultLiveData;
    }
}
