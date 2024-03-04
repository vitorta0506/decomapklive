package com.guochao.faceshow.guild.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.guild.bean.LiveStaticBean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\fR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "liveStaticLiveData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/guochao/faceshow/guild/bean/LiveStaticBean;", "getLiveStaticLiveData", "()Landroidx/lifecycle/MutableLiveData;", "setLiveStaticLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", "checkSignState", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class MyContractViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private MutableLiveData<LiveStaticBean> liveStaticLiveData = new MutableLiveData<>();

    public final void checkSignState() {
        GCRequest putBody = new GCRequest("api/token/guild/anchorin/findAnchorSignInfo").putBody("loveRingSet", 1);
        putBody.getCallbackHolder().setSuccessClz(Object.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.guild.viewmodel.MyContractViewModel$checkSignState$$inlined$success$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
            }
        });
        putBody.request();
    }

    @NotNull
    public final MutableLiveData<LiveStaticBean> getLiveStaticLiveData() {
        return this.liveStaticLiveData;
    }

    public final void setLiveStaticLiveData(@NotNull MutableLiveData<LiveStaticBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.liveStaticLiveData = mutableLiveData;
    }
}
