package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomListRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomListViewModel$loadMyRoomList$1", f = "VoiceRoomListViewModel.kt", i = {}, l = {56}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomListViewModel$loadMyRoomList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $page;
    int label;
    final /* synthetic */ VoiceRoomListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomListViewModel$loadMyRoomList$1(VoiceRoomListViewModel voiceRoomListViewModel, int i9, Continuation<? super VoiceRoomListViewModel$loadMyRoomList$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomListViewModel;
        this.$page = i9;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomListViewModel$loadMyRoomList$1(this.this$0, this.$page, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomListViewModel$loadMyRoomList$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        VoiceRoomListRepository voiceRoomListRepository;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            voiceRoomListRepository = this.this$0.repository;
            int i10 = this.$page;
            this.label = 1;
            obj = voiceRoomListRepository.getMyVoiceRoomList(i10, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        VoiceRoomMyRoomListModel voiceRoomMyRoomListModel = (VoiceRoomMyRoomListModel) response.getData();
        if (voiceRoomMyRoomListModel != null) {
            mutableLiveData2 = this.this$0._myRoomList;
            mutableLiveData2.setValue(voiceRoomMyRoomListModel);
        }
        mutableLiveData = this.this$0._myRoomCount;
        VoiceRoomMyRoomListModel voiceRoomMyRoomListModel2 = (VoiceRoomMyRoomListModel) response.getData();
        mutableLiveData.setValue(voiceRoomMyRoomListModel2 != null ? Boxing.boxInt(voiceRoomMyRoomListModel2.getTotal()) : null);
        return Unit.INSTANCE;
    }
}
