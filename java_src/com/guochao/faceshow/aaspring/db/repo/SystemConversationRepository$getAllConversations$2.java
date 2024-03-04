package com.guochao.faceshow.aaspring.db.repo;

import com.guochao.faceshow.aaspring.db.AppDatabase;
import com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel;
import java.util.List;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.db.repo.SystemConversationRepository$getAllConversations$2", f = "SystemConversationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SystemConversationRepository$getAllConversations$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends SystemConversationModel>>, Object> {
    int label;
    final /* synthetic */ SystemConversationRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemConversationRepository$getAllConversations$2(SystemConversationRepository systemConversationRepository, Continuation<? super SystemConversationRepository$getAllConversations$2> continuation) {
        super(2, continuation);
        this.this$0 = systemConversationRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SystemConversationRepository$getAllConversations$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends SystemConversationModel>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super List<SystemConversationModel>>) continuation);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super List<SystemConversationModel>> continuation) {
        return ((SystemConversationRepository$getAllConversations$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AppDatabase appDatabase;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                appDatabase = this.this$0.appDatabase;
                return appDatabase.systemConversationDao().getAllSystemConversation();
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
