package com.guochao.faceshow.component.f2fmatch.datasource;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.component.f2fmatch.model.F2fGoogleTokenModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J!\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ!\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ!\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u0019\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ!\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ!\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;", "", "()V", "api", "Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;", "agreeMatch", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "roomId", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelMatch", "requestId", "confirmMatchSuccess", "getGoogleToken", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fGoogleTokenModel;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPrepareMatchInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;", "heartBeat", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "quitRoom", "startMatch", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;", "gender", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchDataSource {
    @NotNull
    private final F2fMatchApi api = new F2fMatchApi();

    @Nullable
    public final Object agreeMatch(@NotNull String str, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$agreeMatch$2(this, str, null), continuation);
    }

    @Nullable
    public final Object cancelMatch(@NotNull String str, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$cancelMatch$2(this, str, null), continuation);
    }

    @Nullable
    public final Object confirmMatchSuccess(@NotNull String str, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$confirmMatchSuccess$2(this, str, null), continuation);
    }

    @Nullable
    public final Object getGoogleToken(@NotNull Continuation<? super Response<F2fGoogleTokenModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$getGoogleToken$2(this, null), continuation);
    }

    @Nullable
    public final Object getPrepareMatchInfo(@NotNull Continuation<? super Response<F2fMatchModel.F2fTrtcSignatureModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$getPrepareMatchInfo$2(this, null), continuation);
    }

    @Nullable
    public final Object heartBeat(@NotNull Continuation<? super Response<F2fMatchModel.F2fHeartBeatModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$heartBeat$2(this, null), continuation);
    }

    @Nullable
    public final Object quitRoom(@NotNull String str, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$quitRoom$2(this, str, null), continuation);
    }

    @Nullable
    public final Object startMatch(int i9, @NotNull Continuation<? super Response<F2fMatchModel.F2fStartMatchResultModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchDataSource$startMatch$2(this, i9, null), continuation);
    }
}
