package com.guochao.faceshow.aaspring.modulars.date.viewmodel;

import androidx.lifecycle.ViewModelKt;
import com.facebook.GraphResponse;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.date.model.DatePriceSettingModel;
import com.guochao.faceshow.utils.Contants;
import g7.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0005J9\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00070\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;", "()V", "loadSetting", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveCurrentPriceSetting", "", "type", "", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;", "callBack", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", GraphResponse.SUCCESS_KEY, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DatePriceSettingViewModel extends BaseViewModel<DatePriceSettingModel> {

    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.date.viewmodel.DatePriceSettingViewModel$1", f = "DatePriceSettingViewModel.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.faceshow.aaspring.modulars.date.viewmodel.DatePriceSettingViewModel$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i9 = this.label;
            if (i9 == 0) {
                ResultKt.throwOnFailure(obj);
                DatePriceSettingViewModel datePriceSettingViewModel = DatePriceSettingViewModel.this;
                this.label = 1;
                obj = datePriceSettingViewModel.loadSetting(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i9 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            DatePriceSettingModel datePriceSettingModel = (DatePriceSettingModel) obj;
            if (datePriceSettingModel != null) {
                ServerConfig s10 = i.u().s();
                s10.setAudioDiamond(datePriceSettingModel.getCurrentAudioPrice());
                s10.setVideoDiamond(datePriceSettingModel.getCurrentVideoPrice());
            }
            DatePriceSettingViewModel.this.getModelLiveData().setValue(datePriceSettingModel);
            return Unit.INSTANCE;
        }
    }

    public DatePriceSettingViewModel() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new AnonymousClass1(null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadSetting(Continuation<? super DatePriceSettingModel> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        new GetRequest("tokens/appoint/V2").M(new c<DatePriceSettingModel>() { // from class: com.guochao.faceshow.aaspring.modulars.date.viewmodel.DatePriceSettingViewModel$loadSetting$2$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull a<DatePriceSettingModel> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                Continuation<DatePriceSettingModel> continuation2 = safeContinuation;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(null));
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable DatePriceSettingModel datePriceSettingModel, @NotNull FaceCastBaseResponse<DatePriceSettingModel> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                Continuation<DatePriceSettingModel> continuation2 = safeContinuation;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(datePriceSettingModel));
            }
        });
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public final void saveCurrentPriceSetting(final int i9, @NotNull final DatePriceSettingModel.DatePriceRoleModel model, @NotNull final Function1<? super Boolean, Unit> callBack) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        new PostRequest(Contants.setUpdate).D(i9 == 1 ? "audioPriceRuleId" : "videoPriceRuleId", String.valueOf(model.getRuleId())).M(new c<String>() { // from class: com.guochao.faceshow.aaspring.modulars.date.viewmodel.DatePriceSettingViewModel$saveCurrentPriceSetting$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull a<String> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                callBack.invoke(Boolean.FALSE);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                DatePriceSettingModel datePriceSettingModel = (DatePriceSettingModel) DatePriceSettingViewModel.this.getModelLiveData().getValue();
                if (datePriceSettingModel != null) {
                    List<DatePriceSettingModel.DatePriceRoleModel> audioPriceRules = i9 == 1 ? datePriceSettingModel.getAudioPriceRules() : datePriceSettingModel.getVideoPriceRules();
                    if (audioPriceRules != null) {
                        DatePriceSettingModel.DatePriceRoleModel datePriceRoleModel = model;
                        for (DatePriceSettingModel.DatePriceRoleModel datePriceRoleModel2 : audioPriceRules) {
                            if (datePriceRoleModel2.getRuleId() == datePriceRoleModel.getRuleId()) {
                                datePriceRoleModel2.setChecked(1);
                            } else {
                                datePriceRoleModel2.setChecked(0);
                            }
                        }
                    }
                    DatePriceSettingViewModel.this.getModelLiveData().setValue(datePriceSettingModel);
                }
                callBack.invoke(Boolean.TRUE);
            }
        });
    }
}
