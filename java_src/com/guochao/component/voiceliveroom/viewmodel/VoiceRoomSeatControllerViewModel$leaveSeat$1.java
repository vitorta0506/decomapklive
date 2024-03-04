package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$leaveSeat$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {258, TPReportParams.LIVE_STEP_PLAY}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$leaveSeat$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<String> $roomId;
    final /* synthetic */ int $seatIndex;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$leaveSeat$1$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$leaveSeat$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $seatIndex;
        int label;
        final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, int i9, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = voiceRoomSeatControllerViewModel;
            this.$seatIndex = i9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$seatIndex, continuation);
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
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.this$0.clearData();
                super/*com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel*/.leaveSeat(this.$seatIndex);
                VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel = this.this$0;
                UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                voiceRoomSeatControllerViewModel.removeSeatValueOnUserId(current != null ? current.getUserId() : null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$leaveSeat$1(int i9, VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, Ref.ObjectRef<String> objectRef, Continuation<? super VoiceRoomSeatControllerViewModel$leaveSeat$1> continuation) {
        super(2, continuation);
        this.$seatIndex = i9;
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$roomId = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerViewModel$leaveSeat$1(this.$seatIndex, this.this$0, this.$roomId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$leaveSeat$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            int i10 = this.$seatIndex;
            if (i10 == -1) {
                VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel = this.this$0;
                UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                i10 = voiceRoomSeatControllerViewModel.getSeatIndexForUserId((current == null || (r1 = current.getUserId()) == null) ? "" : "");
            }
            this.label = 1;
            obj = this.this$0.getRepository().leaveSeat(this.$roomId.element, i10, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            if (i9 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        } else {
            ResultKt.throwOnFailure(obj);
        }
        if (((Response) obj).isSuccessful() && CoroutineScopeKt.isActive(ViewModelKt.getViewModelScope(this.this$0))) {
            MainCoroutineDispatcher main = Dispatchers.getMain();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$seatIndex, null);
            this.label = 2;
            if (BuildersKt.withContext(main, anonymousClass1, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
