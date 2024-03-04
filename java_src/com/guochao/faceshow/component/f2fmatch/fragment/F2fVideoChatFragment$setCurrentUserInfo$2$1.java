package com.guochao.faceshow.component.f2fmatch.fragment;

import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$setCurrentUserInfo$2$1", f = "F2fVideoChatFragment.kt", i = {}, l = {EventTrackingUtils.EVENT_TRACKING_RESULT_CODE}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class F2fVideoChatFragment$setCurrentUserInfo$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ F2fMatchModel.F2fMatchRoomInfo $it;
    int label;
    final /* synthetic */ F2fVideoChatFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fVideoChatFragment$setCurrentUserInfo$2$1(F2fVideoChatFragment f2fVideoChatFragment, F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, Continuation<? super F2fVideoChatFragment$setCurrentUserInfo$2$1> continuation) {
        super(2, continuation);
        this.this$0 = f2fVideoChatFragment;
        this.$it = f2fMatchRoomInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new F2fVideoChatFragment$setCurrentUserInfo$2$1(this.this$0, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((F2fVideoChatFragment$setCurrentUserInfo$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.getViewBinding().audioTranslate.setVisibility(4);
            if (!Objects.equals(q7.a.e().g(), this.$it.getLanguage())) {
                F2fMatchViewModel viewModel = this.this$0.getViewModel();
                this.label = 1;
                obj = viewModel.checkGoogleCloudAvailable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.this$0.getViewBinding().audioTranslate.setVisibility(0);
        }
        return Unit.INSTANCE;
    }
}
