package com.guochao.faceshow.aaspring.modulars.live.game;

import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestKt;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager$loadGames$2", f = "MiniGameDataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MiniGameDataManager$loadGames$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends LiveGameBean>>, Object> {
    int label;
    final /* synthetic */ MiniGameDataManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MiniGameDataManager$loadGames$2(MiniGameDataManager miniGameDataManager, Continuation<? super MiniGameDataManager$loadGames$2> continuation) {
        super(2, continuation);
        this.this$0 = miniGameDataManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new MiniGameDataManager$loadGames$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super List<? extends LiveGameBean>> continuation) {
        return ((MiniGameDataManager$loadGames$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest requestFromViewModel = GCRequestKt.requestFromViewModel(this.this$0, "api/token/promotion/game/getGameList");
            Type type = new TypeToken<List<? extends LiveGameBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager$loadGames$2.1
            }.getType();
            Intrinsics.checkNotNullExpressionValue(type, "object :\n               …>() {\n\n            }.type");
            return requestFromViewModel.execute(type).getData();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
