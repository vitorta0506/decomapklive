package com.guochao.component.voiceliveroom.viewmodel;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.model.VoiceRoomCreateRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.repository.CreateRoomRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {694, TypedValues.TransitionType.TYPE_TO, TypedValues.TransitionType.TYPE_AUTO_TRANSITION}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<Integer, Continuation<? super Unit>, Object> $call;
    final /* synthetic */ VoiceRoomCreateRoomModel $model;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1(VoiceRoomCreateRoomModel voiceRoomCreateRoomModel, VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, Function2<? super Integer, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1> continuation) {
        super(2, continuation);
        this.$model = voiceRoomCreateRoomModel;
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$call = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1(this.$model, this.this$0, this.$call, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object saveOrUpdateVoiceRoomInfo;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        VoiceRoomInfoModel voiceRoomInfoModel;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CreateRoomRepository createRoomRepository = new CreateRoomRepository();
            VoiceRoomCreateRoomModel voiceRoomCreateRoomModel = this.$model;
            this.label = 1;
            saveOrUpdateVoiceRoomInfo = createRoomRepository.saveOrUpdateVoiceRoomInfo(voiceRoomCreateRoomModel, this);
            if (saveOrUpdateVoiceRoomInfo == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            if (i9 != 2 && i9 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        } else {
            ResultKt.throwOnFailure(obj);
            saveOrUpdateVoiceRoomInfo = obj;
        }
        Response response = (Response) saveOrUpdateVoiceRoomInfo;
        if (response.isSuccessful()) {
            mutableLiveData = this.this$0._roomInfo;
            mutableLiveData2 = this.this$0._roomInfo;
            VoiceRoomInfoModel voiceRoomInfoModel2 = (VoiceRoomInfoModel) mutableLiveData2.getValue();
            if (voiceRoomInfoModel2 != null) {
                voiceRoomInfoModel = voiceRoomInfoModel2.copy((r55 & 1) != 0 ? voiceRoomInfoModel2.f15984id : 0, (r55 & 2) != 0 ? voiceRoomInfoModel2.userId : null, (r55 & 4) != 0 ? voiceRoomInfoModel2.chatGroupId : null, (r55 & 8) != 0 ? voiceRoomInfoModel2.roomId : null, (r55 & 16) != 0 ? voiceRoomInfoModel2.title : this.$model.getTitle(), (r55 & 32) != 0 ? voiceRoomInfoModel2.coverImgUrl : this.$model.getCoverImgUrl(), (r55 & 64) != 0 ? voiceRoomInfoModel2.notice : null, (r55 & 128) != 0 ? voiceRoomInfoModel2.tagIds : this.$model.getTagIds(), (r55 & 256) != 0 ? voiceRoomInfoModel2.tagConfs : null, (r55 & 512) != 0 ? voiceRoomInfoModel2.tagNames : null, (r55 & 1024) != 0 ? voiceRoomInfoModel2.level : 0, (r55 & 2048) != 0 ? voiceRoomInfoModel2.experienceValue : 0, (r55 & 4096) != 0 ? voiceRoomInfoModel2.ticket : 0L, (r55 & 8192) != 0 ? voiceRoomInfoModel2.nature : 0, (r55 & 16384) != 0 ? voiceRoomInfoModel2.backImgUrl : this.$model.getBackImgUrl(), (r55 & 32768) != 0 ? voiceRoomInfoModel2.memberPrice : 0, (r55 & 65536) != 0 ? voiceRoomInfoModel2.freezeStatus : 0, (r55 & 131072) != 0 ? voiceRoomInfoModel2.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? voiceRoomInfoModel2.expireFreezeTime : 0L, (r55 & 524288) != 0 ? voiceRoomInfoModel2.freezeReason : null, (1048576 & r55) != 0 ? voiceRoomInfoModel2.updateTime : 0L, (r55 & 2097152) != 0 ? voiceRoomInfoModel2.visitorCount : 0, (4194304 & r55) != 0 ? voiceRoomInfoModel2.countryImg : null, (r55 & 8388608) != 0 ? voiceRoomInfoModel2.microCount : 0, (r55 & 16777216) != 0 ? voiceRoomInfoModel2.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? voiceRoomInfoModel2.signInfo : null, (r55 & 67108864) != 0 ? voiceRoomInfoModel2.roleType : 0, (r55 & 134217728) != 0 ? voiceRoomInfoModel2.microType : 0, (r55 & 268435456) != 0 ? voiceRoomInfoModel2.owner : null, (r55 & 536870912) != 0 ? voiceRoomInfoModel2.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? voiceRoomInfoModel2.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? voiceRoomInfoModel2.offlineTime : null, (r56 & 1) != 0 ? voiceRoomInfoModel2.responseCode : 0);
            } else {
                voiceRoomInfoModel = null;
            }
            mutableLiveData.setValue(voiceRoomInfoModel);
            Function2<Integer, Continuation<? super Unit>, Object> function2 = this.$call;
            Integer boxInt = Boxing.boxInt(1);
            this.label = 2;
            if (function2.mo1invoke(boxInt, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            Function2<Integer, Continuation<? super Unit>, Object> function22 = this.$call;
            Integer boxInt2 = Boxing.boxInt(response.getCode());
            this.label = 3;
            if (function22.mo1invoke(boxInt2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
