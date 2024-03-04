package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.main.repository.ShortVideoRepository;
import com.guochao.faceshow.bean.MusicTypeTopicList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel$findVideoRelevantNew$1", f = "ShortVideoViewModel.kt", i = {}, l = {103}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ShortVideoViewModel$findVideoRelevantNew$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Response<MusicTypeTopicList.Page>, Unit> $call;
    final /* synthetic */ String $country;
    final /* synthetic */ String $is_private;
    final /* synthetic */ int $limit;
    final /* synthetic */ String $musicId;
    final /* synthetic */ int $page;
    final /* synthetic */ String $topicId;
    final /* synthetic */ String $type;
    final /* synthetic */ String $url;
    Object L$0;
    int label;
    final /* synthetic */ ShortVideoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ShortVideoViewModel$findVideoRelevantNew$1(Function1<? super Response<MusicTypeTopicList.Page>, Unit> function1, ShortVideoViewModel shortVideoViewModel, String str, String str2, String str3, String str4, String str5, int i9, int i10, String str6, Continuation<? super ShortVideoViewModel$findVideoRelevantNew$1> continuation) {
        super(2, continuation);
        this.$call = function1;
        this.this$0 = shortVideoViewModel;
        this.$url = str;
        this.$musicId = str2;
        this.$country = str3;
        this.$is_private = str4;
        this.$type = str5;
        this.$page = i9;
        this.$limit = i10;
        this.$topicId = str6;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ShortVideoViewModel$findVideoRelevantNew$1(this.$call, this.this$0, this.$url, this.$musicId, this.$country, this.$is_private, this.$type, this.$page, this.$limit, this.$topicId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ShortVideoViewModel$findVideoRelevantNew$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.jvm.functions.Function1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        ShortVideoRepository shortVideoRepository;
        Function1<Response<MusicTypeTopicList.Page>, Unit> function1;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            Function1<Response<MusicTypeTopicList.Page>, Unit> function12 = this.$call;
            shortVideoRepository = this.this$0.repository;
            String str = this.$url;
            String str2 = this.$musicId;
            String str3 = this.$country;
            String str4 = this.$is_private;
            String str5 = this.$type;
            int i10 = this.$page;
            int i11 = this.$limit;
            String str6 = this.$topicId;
            this.L$0 = function12;
            this.label = 1;
            Object findVideoRelevantNew = shortVideoRepository.findVideoRelevantNew(str, str2, str3, str4, str5, i10, i11, str6, this);
            if (findVideoRelevantNew == coroutine_suspended) {
                return coroutine_suspended;
            }
            function1 = function12;
            obj = findVideoRelevantNew;
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            function1 = (Function1) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        function1.invoke(obj);
        return Unit.INSTANCE;
    }
}
