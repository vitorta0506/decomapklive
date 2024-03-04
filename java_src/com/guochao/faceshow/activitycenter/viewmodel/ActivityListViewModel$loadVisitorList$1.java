package com.guochao.faceshow.activitycenter.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.activitycenter.repository.ActivityCenterRepository;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.activitycenter.viewmodel.ActivityListViewModel$loadVisitorList$1", f = "ActivityListViewModel.kt", i = {}, l = {56}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ActivityListViewModel$loadVisitorList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $refresh;
    final /* synthetic */ int $size;
    int label;
    final /* synthetic */ ActivityListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityListViewModel$loadVisitorList$1(boolean z10, ActivityListViewModel activityListViewModel, int i9, Continuation<? super ActivityListViewModel$loadVisitorList$1> continuation) {
        super(2, continuation);
        this.$refresh = z10;
        this.this$0 = activityListViewModel;
        this.$size = i9;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ActivityListViewModel$loadVisitorList$1(this.$refresh, this.this$0, this.$size, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ActivityListViewModel$loadVisitorList$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        ActivityCenterRepository activityCenterRepository;
        int i9;
        int i10;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        MutableLiveData mutableLiveData3;
        int i11;
        MutableLiveData mutableLiveData4;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i12 = this.label;
        if (i12 == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.$refresh) {
                this.this$0.visitorPage = 1;
            }
            activityCenterRepository = this.this$0.repository;
            i9 = this.this$0.visitorPage;
            int i13 = this.$size;
            this.label = 1;
            obj = activityCenterRepository.loadActivityList(i9, i13, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        if (response.isSuccessful()) {
            i10 = this.this$0.visitorPage;
            if (i10 == 1) {
                mutableLiveData4 = this.this$0._visitorList;
                mutableLiveData4.setValue(response.getData());
            } else {
                List list = (List) response.getData();
                if (list != null) {
                    mutableLiveData3 = this.this$0._visitorList;
                    List list2 = (List) mutableLiveData3.getValue();
                    if (list2 != null) {
                        Boxing.boxBoolean(list2.addAll(list));
                    }
                }
                mutableLiveData = this.this$0._visitorList;
                mutableLiveData2 = this.this$0._visitorList;
                mutableLiveData.setValue(mutableLiveData2.getValue());
            }
            ActivityListViewModel activityListViewModel = this.this$0;
            i11 = activityListViewModel.visitorPage;
            activityListViewModel.visitorPage = i11 + 1;
        }
        return Unit.INSTANCE;
    }
}
