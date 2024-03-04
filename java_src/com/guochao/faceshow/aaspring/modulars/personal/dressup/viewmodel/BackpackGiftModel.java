package com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.BackPageGift;
import com.guochao.faceshow.aaspring.beans.BackPageGiftListBean;
import com.guochao.faceshow.aaspring.modulars.live.common.i;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R(\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "backPageGiftLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;", "getBackPageGiftLiveData", "()Landroidx/lifecycle/MutableLiveData;", "setBackPageGiftLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "getCount", "()I", "setCount", "(I)V", "currPage", "getCurrPage", "setCurrPage", "loadBackPackData", "", "isLoadMore", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BackpackGiftModel extends BaseViewModel<BaseModel> {
    private int count;
    @NotNull
    private MutableLiveData<List<BackPageGift>> backPageGiftLiveData = new MutableLiveData<>();
    private int currPage = 1;

    @NotNull
    public final MutableLiveData<List<BackPageGift>> getBackPageGiftLiveData() {
        return this.backPageGiftLiveData;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getCurrPage() {
        return this.currPage;
    }

    public final void loadBackPackData(boolean z10) {
        if (z10) {
            this.currPage++;
        } else {
            this.currPage = 1;
        }
        if (!i.e(BaseApplication.getInstance())) {
            this.backPageGiftLiveData.postValue(new ArrayList());
            return;
        }
        GCRequest putBody = new GCRequest("api/token/trade/bag/personList/V2").putBody("page", Integer.valueOf(this.currPage)).putBody("size", 20);
        putBody.getCallbackHolder().setSuccessClz(BackPageGiftListBean.Result.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.BackpackGiftModel$loadBackPackData$$inlined$success$1
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
                boolean z11 = true;
                if (BackpackGiftModel.this.getCurrPage() == 1) {
                    BackPageGiftListBean.Result result = (BackPageGiftListBean.Result) _response.getData();
                    if (result != null) {
                        BackpackGiftModel.this.setCount(result.getCount());
                        List<BackPageGift> list = result.getList();
                        if (list != null && !list.isEmpty()) {
                            z11 = false;
                        }
                        if (z11) {
                            BackpackGiftModel.this.getBackPageGiftLiveData().postValue(new ArrayList());
                        } else {
                            BackpackGiftModel.this.getBackPageGiftLiveData().postValue(result.getList());
                        }
                        unit = Unit.INSTANCE;
                    } else {
                        unit = null;
                    }
                    if (unit == null) {
                        BackpackGiftModel.this.getBackPageGiftLiveData().postValue(new ArrayList());
                        return;
                    }
                    return;
                }
                BackPageGiftListBean.Result result2 = (BackPageGiftListBean.Result) _response.getData();
                if (result2 != null) {
                    BackpackGiftModel.this.getBackPageGiftLiveData().postValue(result2.getList());
                }
            }
        });
        putBody.getCallbackHolder().setFailClz(BackPageGiftListBean.Result.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.BackpackGiftModel$loadBackPackData$$inlined$fail$1
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
                BackpackGiftModel.this.getBackPageGiftLiveData().postValue(new ArrayList());
            }
        });
        putBody.request();
    }

    public final void setBackPageGiftLiveData(@NotNull MutableLiveData<List<BackPageGift>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.backPageGiftLiveData = mutableLiveData;
    }

    public final void setCount(int i9) {
        this.count = i9;
    }

    public final void setCurrPage(int i9) {
        this.currPage = i9;
    }
}
