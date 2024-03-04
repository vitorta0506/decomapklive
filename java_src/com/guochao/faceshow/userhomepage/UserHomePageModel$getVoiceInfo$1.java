package com.guochao.faceshow.userhomepage;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.userhomepage.UserHomePageModel$getVoiceInfo$1", f = "UserHomePageModel.kt", i = {}, l = {TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class UserHomePageModel$getVoiceInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $userId;
    int label;
    final /* synthetic */ UserHomePageModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserHomePageModel$getVoiceInfo$1(UserHomePageModel userHomePageModel, String str, Continuation<? super UserHomePageModel$getVoiceInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = userHomePageModel;
        this.$userId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new UserHomePageModel$getVoiceInfo$1(this.this$0, this.$userId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((UserHomePageModel$getVoiceInfo$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        MutableLiveData modelLiveData;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            UserHomePageModel$getVoiceInfo$1$response$1 userHomePageModel$getVoiceInfo$1$response$1 = new UserHomePageModel$getVoiceInfo$1$response$1(this.$userId, null);
            this.label = 1;
            obj = BuildersKt.withContext(io2, userHomePageModel$getVoiceInfo$1$response$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("getVoiceInfo", ((Response) obj).getData());
        modelLiveData = this.this$0.getModelLiveData();
        modelLiveData.setValue(hashMap);
        return Unit.INSTANCE;
    }
}
