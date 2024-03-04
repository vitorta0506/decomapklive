package com.linecorp.linesdk.openchat.ui;

import androidx.lifecycle.MutableLiveData;
import com.linecorp.linesdk.openchat.OpenChatParameters;
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
import qc.c;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatroom$1", f = "OpenChatInfoViewModel.kt", i = {0}, l = {78}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class OpenChatInfoViewModel$createChatroom$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ OpenChatParameters $openChatParameters;
    Object L$0;
    int label;
    private CoroutineScope p$;
    final /* synthetic */ OpenChatInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$createChatroom$1(OpenChatInfoViewModel openChatInfoViewModel, OpenChatParameters openChatParameters, Continuation continuation) {
        super(2, continuation);
        this.this$0 = openChatInfoViewModel;
        this.$openChatParameters = openChatParameters;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        OpenChatInfoViewModel$createChatroom$1 openChatInfoViewModel$createChatroom$1 = new OpenChatInfoViewModel$createChatroom$1(this.this$0, this.$openChatParameters, continuation);
        openChatInfoViewModel$createChatroom$1.p$ = (CoroutineScope) obj;
        return openChatInfoViewModel$createChatroom$1;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public final Object mo1invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((OpenChatInfoViewModel$createChatroom$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        MutableLiveData mutableLiveData3;
        MutableLiveData mutableLiveData4;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = this.p$;
            mutableLiveData = this.this$0._isCreatingChatRoom;
            mutableLiveData.setValue(Boxing.boxBoolean(true));
            OpenChatInfoViewModel openChatInfoViewModel = this.this$0;
            OpenChatParameters openChatParameters = this.$openChatParameters;
            this.L$0 = coroutineScope;
            this.label = 1;
            obj = openChatInfoViewModel.createChatRoomAsync(openChatParameters, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        c cVar = (c) obj;
        if (cVar.g()) {
            mutableLiveData4 = this.this$0._openChatRoomInfo;
            mutableLiveData4.setValue(cVar.e());
        } else {
            mutableLiveData2 = this.this$0._createChatRoomError;
            mutableLiveData2.setValue(cVar);
        }
        mutableLiveData3 = this.this$0._isCreatingChatRoom;
        mutableLiveData3.setValue(Boxing.boxBoolean(false));
        return Unit.INSTANCE;
    }
}
