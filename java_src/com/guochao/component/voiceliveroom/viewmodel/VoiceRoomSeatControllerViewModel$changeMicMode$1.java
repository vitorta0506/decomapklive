package com.guochao.component.voiceliveroom.viewmodel;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$changeMicMode$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {583}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$changeMicMode$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GCValueCallback<Integer> $gcValueCallback;
    final /* synthetic */ int $microType;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$changeMicMode$1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, int i9, GCValueCallback<Integer> gCValueCallback, Continuation<? super VoiceRoomSeatControllerViewModel$changeMicMode$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$microType = i9;
        this.$gcValueCallback = gCValueCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerViewModel$changeMicMode$1(this.this$0, this.$microType, this.$gcValueCallback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$changeMicMode$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object changeMicMode;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        MutableLiveData mutableLiveData3;
        MutableLiveData mutableLiveData4;
        MutableLiveData mutableLiveData5;
        MutableLiveData mutableLiveData6;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            VoiceRoomSeatControllerRepository repository = this.this$0.getRepository();
            int i10 = this.$microType;
            this.label = 1;
            changeMicMode = repository.changeMicMode(i10, this);
            if (changeMicMode == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
            changeMicMode = obj;
        }
        Response response = (Response) changeMicMode;
        if (response.isSuccessful()) {
            mutableLiveData5 = this.this$0._roomInfo;
            mutableLiveData6 = this.this$0._roomInfo;
            VoiceRoomInfoModel voiceRoomInfoModel = (VoiceRoomInfoModel) mutableLiveData6.getValue();
            mutableLiveData5.setValue(voiceRoomInfoModel != null ? voiceRoomInfoModel.copy((r55 & 1) != 0 ? voiceRoomInfoModel.f15984id : 0, (r55 & 2) != 0 ? voiceRoomInfoModel.userId : null, (r55 & 4) != 0 ? voiceRoomInfoModel.chatGroupId : null, (r55 & 8) != 0 ? voiceRoomInfoModel.roomId : null, (r55 & 16) != 0 ? voiceRoomInfoModel.title : null, (r55 & 32) != 0 ? voiceRoomInfoModel.coverImgUrl : null, (r55 & 64) != 0 ? voiceRoomInfoModel.notice : null, (r55 & 128) != 0 ? voiceRoomInfoModel.tagIds : null, (r55 & 256) != 0 ? voiceRoomInfoModel.tagConfs : null, (r55 & 512) != 0 ? voiceRoomInfoModel.tagNames : null, (r55 & 1024) != 0 ? voiceRoomInfoModel.level : 0, (r55 & 2048) != 0 ? voiceRoomInfoModel.experienceValue : 0, (r55 & 4096) != 0 ? voiceRoomInfoModel.ticket : 0L, (r55 & 8192) != 0 ? voiceRoomInfoModel.nature : 0, (r55 & 16384) != 0 ? voiceRoomInfoModel.backImgUrl : null, (r55 & 32768) != 0 ? voiceRoomInfoModel.memberPrice : 0, (r55 & 65536) != 0 ? voiceRoomInfoModel.freezeStatus : 0, (r55 & 131072) != 0 ? voiceRoomInfoModel.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? voiceRoomInfoModel.expireFreezeTime : 0L, (r55 & 524288) != 0 ? voiceRoomInfoModel.freezeReason : null, (1048576 & r55) != 0 ? voiceRoomInfoModel.updateTime : 0L, (r55 & 2097152) != 0 ? voiceRoomInfoModel.visitorCount : 0, (4194304 & r55) != 0 ? voiceRoomInfoModel.countryImg : null, (r55 & 8388608) != 0 ? voiceRoomInfoModel.microCount : 0, (r55 & 16777216) != 0 ? voiceRoomInfoModel.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? voiceRoomInfoModel.signInfo : null, (r55 & 67108864) != 0 ? voiceRoomInfoModel.roleType : 0, (r55 & 134217728) != 0 ? voiceRoomInfoModel.microType : this.$microType, (r55 & 268435456) != 0 ? voiceRoomInfoModel.owner : null, (r55 & 536870912) != 0 ? voiceRoomInfoModel.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? voiceRoomInfoModel.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? voiceRoomInfoModel.offlineTime : null, (r56 & 1) != 0 ? voiceRoomInfoModel.responseCode : 0) : null);
            GCValueCallback<Integer> gCValueCallback = this.$gcValueCallback;
            if (gCValueCallback != null) {
                gCValueCallback.onValue(Boxing.boxInt(1));
            }
        } else {
            if (this.$microType == 2) {
                mutableLiveData3 = this.this$0._roomInfo;
                mutableLiveData4 = this.this$0._roomInfo;
                VoiceRoomInfoModel voiceRoomInfoModel2 = (VoiceRoomInfoModel) mutableLiveData4.getValue();
                mutableLiveData3.setValue(voiceRoomInfoModel2 != null ? voiceRoomInfoModel2.copy((r55 & 1) != 0 ? voiceRoomInfoModel2.f15984id : 0, (r55 & 2) != 0 ? voiceRoomInfoModel2.userId : null, (r55 & 4) != 0 ? voiceRoomInfoModel2.chatGroupId : null, (r55 & 8) != 0 ? voiceRoomInfoModel2.roomId : null, (r55 & 16) != 0 ? voiceRoomInfoModel2.title : null, (r55 & 32) != 0 ? voiceRoomInfoModel2.coverImgUrl : null, (r55 & 64) != 0 ? voiceRoomInfoModel2.notice : null, (r55 & 128) != 0 ? voiceRoomInfoModel2.tagIds : null, (r55 & 256) != 0 ? voiceRoomInfoModel2.tagConfs : null, (r55 & 512) != 0 ? voiceRoomInfoModel2.tagNames : null, (r55 & 1024) != 0 ? voiceRoomInfoModel2.level : 0, (r55 & 2048) != 0 ? voiceRoomInfoModel2.experienceValue : 0, (r55 & 4096) != 0 ? voiceRoomInfoModel2.ticket : 0L, (r55 & 8192) != 0 ? voiceRoomInfoModel2.nature : 0, (r55 & 16384) != 0 ? voiceRoomInfoModel2.backImgUrl : null, (r55 & 32768) != 0 ? voiceRoomInfoModel2.memberPrice : 0, (r55 & 65536) != 0 ? voiceRoomInfoModel2.freezeStatus : 0, (r55 & 131072) != 0 ? voiceRoomInfoModel2.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? voiceRoomInfoModel2.expireFreezeTime : 0L, (r55 & 524288) != 0 ? voiceRoomInfoModel2.freezeReason : null, (1048576 & r55) != 0 ? voiceRoomInfoModel2.updateTime : 0L, (r55 & 2097152) != 0 ? voiceRoomInfoModel2.visitorCount : 0, (4194304 & r55) != 0 ? voiceRoomInfoModel2.countryImg : null, (r55 & 8388608) != 0 ? voiceRoomInfoModel2.microCount : 0, (r55 & 16777216) != 0 ? voiceRoomInfoModel2.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? voiceRoomInfoModel2.signInfo : null, (r55 & 67108864) != 0 ? voiceRoomInfoModel2.roleType : 0, (r55 & 134217728) != 0 ? voiceRoomInfoModel2.microType : 1, (r55 & 268435456) != 0 ? voiceRoomInfoModel2.owner : null, (r55 & 536870912) != 0 ? voiceRoomInfoModel2.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? voiceRoomInfoModel2.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? voiceRoomInfoModel2.offlineTime : null, (r56 & 1) != 0 ? voiceRoomInfoModel2.responseCode : 0) : null);
            } else {
                mutableLiveData = this.this$0._roomInfo;
                mutableLiveData2 = this.this$0._roomInfo;
                VoiceRoomInfoModel voiceRoomInfoModel3 = (VoiceRoomInfoModel) mutableLiveData2.getValue();
                mutableLiveData.setValue(voiceRoomInfoModel3 != null ? voiceRoomInfoModel3.copy((r55 & 1) != 0 ? voiceRoomInfoModel3.f15984id : 0, (r55 & 2) != 0 ? voiceRoomInfoModel3.userId : null, (r55 & 4) != 0 ? voiceRoomInfoModel3.chatGroupId : null, (r55 & 8) != 0 ? voiceRoomInfoModel3.roomId : null, (r55 & 16) != 0 ? voiceRoomInfoModel3.title : null, (r55 & 32) != 0 ? voiceRoomInfoModel3.coverImgUrl : null, (r55 & 64) != 0 ? voiceRoomInfoModel3.notice : null, (r55 & 128) != 0 ? voiceRoomInfoModel3.tagIds : null, (r55 & 256) != 0 ? voiceRoomInfoModel3.tagConfs : null, (r55 & 512) != 0 ? voiceRoomInfoModel3.tagNames : null, (r55 & 1024) != 0 ? voiceRoomInfoModel3.level : 0, (r55 & 2048) != 0 ? voiceRoomInfoModel3.experienceValue : 0, (r55 & 4096) != 0 ? voiceRoomInfoModel3.ticket : 0L, (r55 & 8192) != 0 ? voiceRoomInfoModel3.nature : 0, (r55 & 16384) != 0 ? voiceRoomInfoModel3.backImgUrl : null, (r55 & 32768) != 0 ? voiceRoomInfoModel3.memberPrice : 0, (r55 & 65536) != 0 ? voiceRoomInfoModel3.freezeStatus : 0, (r55 & 131072) != 0 ? voiceRoomInfoModel3.expireUnfreezeTime : 0L, (r55 & 262144) != 0 ? voiceRoomInfoModel3.expireFreezeTime : 0L, (r55 & 524288) != 0 ? voiceRoomInfoModel3.freezeReason : null, (1048576 & r55) != 0 ? voiceRoomInfoModel3.updateTime : 0L, (r55 & 2097152) != 0 ? voiceRoomInfoModel3.visitorCount : 0, (4194304 & r55) != 0 ? voiceRoomInfoModel3.countryImg : null, (r55 & 8388608) != 0 ? voiceRoomInfoModel3.microCount : 0, (r55 & 16777216) != 0 ? voiceRoomInfoModel3.microList : null, (r55 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? voiceRoomInfoModel3.signInfo : null, (r55 & 67108864) != 0 ? voiceRoomInfoModel3.roleType : 0, (r55 & 134217728) != 0 ? voiceRoomInfoModel3.microType : this.$microType, (r55 & 268435456) != 0 ? voiceRoomInfoModel3.owner : null, (r55 & 536870912) != 0 ? voiceRoomInfoModel3.kickEndTime : null, (r55 & BasicMeasure.EXACTLY) != 0 ? voiceRoomInfoModel3.banEndTime : null, (r55 & Integer.MIN_VALUE) != 0 ? voiceRoomInfoModel3.offlineTime : null, (r56 & 1) != 0 ? voiceRoomInfoModel3.responseCode : 0) : null);
            }
            GCValueCallback<Integer> gCValueCallback2 = this.$gcValueCallback;
            if (gCValueCallback2 != null) {
                gCValueCallback2.onError(response.getCode(), response.getMsg());
            }
        }
        return Unit.INSTANCE;
    }
}
