package com.linecorp.linesdk.openchat.ui;

import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
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
import qc.c;
import rc.a;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lqc/c;", "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$2", f = "OpenChatInfoViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class OpenChatInfoViewModel$createChatRoomAsync$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super c<OpenChatRoomInfo>>, Object> {
    final /* synthetic */ OpenChatParameters $openChatParameters;
    int label;
    private CoroutineScope p$;
    final /* synthetic */ OpenChatInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$createChatRoomAsync$2(OpenChatInfoViewModel openChatInfoViewModel, OpenChatParameters openChatParameters, Continuation continuation) {
        super(2, continuation);
        this.this$0 = openChatInfoViewModel;
        this.$openChatParameters = openChatParameters;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        OpenChatInfoViewModel$createChatRoomAsync$2 openChatInfoViewModel$createChatRoomAsync$2 = new OpenChatInfoViewModel$createChatRoomAsync$2(this.this$0, this.$openChatParameters, continuation);
        openChatInfoViewModel$createChatRoomAsync$2.p$ = (CoroutineScope) obj;
        return openChatInfoViewModel$createChatRoomAsync$2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public final Object mo1invoke(CoroutineScope coroutineScope, Continuation<? super c<OpenChatRoomInfo>> continuation) {
        return ((OpenChatInfoViewModel$createChatRoomAsync$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a aVar;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            aVar = this.this$0.lineApiClient;
            return aVar.b(this.$openChatParameters);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
