package com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.MvpBagBean;
import com.guochao.faceshow.aaspring.modulars.live.common.i;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J8\u0010\u0019\u001a\u00020\u001a2(\u0010\u001b\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001cø\u0001\u0000¢\u0006\u0002\u0010 J@\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#2(\u0010\u001b\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001cø\u0001\u0000¢\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR(\u0010\r\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "getCount", "()I", "setCount", "(I)V", "currPage", "getCurrPage", "setCurrPage", "mvpLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;", "getMvpLiveData", "()Landroidx/lifecycle/MutableLiveData;", "setMvpLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", "netLiveData", "", "getNetLiveData", "setNetLiveData", "cancelDressUp", "", NotificationCompat.CATEGORY_CALL, "Lkotlin/Function2;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function2;)V", "dressUp", "id", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "loadMvpBagData", "isLoadMore", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvpBagModel extends BaseViewModel<BaseModel> {
    private int count;
    @NotNull
    private MutableLiveData<List<MvpBagBean>> mvpLiveData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Boolean> netLiveData = new MutableLiveData<>();
    private int currPage = 1;

    public final void cancelDressUp(@NotNull Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new MvpBagModel$cancelDressUp$1(this, null), 3, null);
    }

    public final void dressUp(@NotNull String id2, @NotNull Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new MvpBagModel$dressUp$1(this, id2, null), 3, null);
    }

    public final int getCount() {
        return this.count;
    }

    public final int getCurrPage() {
        return this.currPage;
    }

    @NotNull
    public final MutableLiveData<List<MvpBagBean>> getMvpLiveData() {
        return this.mvpLiveData;
    }

    @NotNull
    public final MutableLiveData<Boolean> getNetLiveData() {
        return this.netLiveData;
    }

    public final void loadMvpBagData(boolean z10) {
        if (z10) {
            this.currPage++;
        } else {
            this.currPage = 1;
        }
        if (!i.e(BaseApplication.getInstance())) {
            this.netLiveData.postValue(Boolean.FALSE);
            return;
        }
        this.netLiveData.postValue(Boolean.TRUE);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new MvpBagModel$loadMvpBagData$1(this, null), 3, null);
    }

    public final void setCount(int i9) {
        this.count = i9;
    }

    public final void setCurrPage(int i9) {
        this.currPage = i9;
    }

    public final void setMvpLiveData(@NotNull MutableLiveData<List<MvpBagBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.mvpLiveData = mutableLiveData;
    }

    public final void setNetLiveData(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.netLiveData = mutableLiveData;
    }
}
