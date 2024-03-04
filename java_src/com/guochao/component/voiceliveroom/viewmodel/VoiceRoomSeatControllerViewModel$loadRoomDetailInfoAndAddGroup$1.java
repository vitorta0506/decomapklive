package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $chatGroupId;
    final /* synthetic */ String $roomId;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00060\u0001R\u00020\u0002*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super VoiceRoomSeatControllerViewModel.AddGroupTask>, Object> {
        final /* synthetic */ String $chatGroupId;
        int label;
        final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = voiceRoomSeatControllerViewModel;
            this.$chatGroupId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$chatGroupId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super VoiceRoomSeatControllerViewModel.AddGroupTask> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                VoiceRoomSeatControllerViewModel.AddGroupTask addGroupTask = new VoiceRoomSeatControllerViewModel.AddGroupTask(this.this$0, this.$chatGroupId, null, 2, null);
                VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel = this.this$0;
                addGroupTask.addGroup();
                voiceRoomSeatControllerViewModel.setAddGroupTask(addGroupTask);
                return addGroupTask;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, String str, String str2, Continuation<? super VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$roomId = str;
        this.$chatGroupId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1 voiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1 = new VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1(this.this$0, this.$roomId, this.$chatGroupId, continuation);
        voiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1.L$0 = obj;
        return voiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        MutableLiveData mutableLiveData;
        Deferred async$default;
        Deferred async$default2;
        Object await;
        MutableLiveData mutableLiveData2;
        MutableLiveData mutableLiveData3;
        Long kickEndTime;
        MutableLiveData mutableLiveData4;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            VoiceRoomSeatControllerViewModel.AddGroupTask addGroupTask = this.this$0.getAddGroupTask();
            if (addGroupTask != null) {
                addGroupTask.cancel();
            }
            mutableLiveData = this.this$0._audioSwitch;
            mutableLiveData.setValue(Boxing.boxBoolean(true));
            this.this$0.setLastRoomId(this.$roomId);
            async$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, this.$chatGroupId, null), 3, null);
            async$default.start();
            async$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$info$1(this.this$0, this.$roomId, null), 3, null);
            async$default2.start();
            this.label = 1;
            await = async$default2.await(this);
            if (await == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
            await = obj;
        }
        Response response = (Response) await;
        if (response.getCode() != 1001 && response.getCode() != 1002 && response.getCode() != 5001) {
            VoiceRoomInfoModel voiceRoomInfoModel = (VoiceRoomInfoModel) response.getData();
            if (voiceRoomInfoModel != null && voiceRoomInfoModel.getFreezeStatus() == 0) {
                mutableLiveData4 = this.this$0._roomInfo;
                String str = this.$roomId;
                voiceRoomInfoModel.setResponseCode(8888);
                voiceRoomInfoModel.setRoomId(str);
                mutableLiveData4.setValue(voiceRoomInfoModel);
                return Unit.INSTANCE;
            }
            if (voiceRoomInfoModel != null) {
                String str2 = this.$roomId;
                VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel = this.this$0;
                voiceRoomInfoModel.setRoomId(str2);
                voiceRoomSeatControllerViewModel.setLastRoomId(str2);
                voiceRoomSeatControllerViewModel.setLastRoleType(voiceRoomInfoModel.getRoleType());
                VoiceRoomSeatControllerViewModel.checkIfEnterTRTCRoomAsAudience$default(voiceRoomSeatControllerViewModel, voiceRoomInfoModel, false, 2, null);
            }
            mutableLiveData3 = this.this$0._roomInfo;
            mutableLiveData3.setValue(voiceRoomInfoModel);
            if (((voiceRoomInfoModel == null || (kickEndTime = voiceRoomInfoModel.getKickEndTime()) == null) ? 0L : kickEndTime.longValue()) > 0) {
                return Unit.INSTANCE;
            }
            this.this$0.setViewerPage(1);
            VoiceRoomSeatControllerViewModel.loadViewerList$default(this.this$0, 20, false, 2, null);
            return Unit.INSTANCE;
        }
        mutableLiveData2 = this.this$0._roomInfo;
        mutableLiveData2.setValue(new VoiceRoomInfoModel(0, null, null, null, null, null, null, null, null, null, 0, 0, 0L, 0, null, 0, 0, 0L, 0L, null, 0L, 0, null, 0, null, null, 0, 0, null, null, null, null, response.getCode(), -1, 0, null));
        return Unit.INSTANCE;
    }
}
