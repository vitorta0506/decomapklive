package com.guochao.faceshow.aaspring.db.repo;

import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.db.AppDatabase;
import com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u00020\u00062\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;", "", "()V", "appDatabase", "Lcom/guochao/faceshow/aaspring/db/AppDatabase;", "deleteAll", "", "getAllConversations", "", "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertOrUpdateConversations", "conversations", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemConversationRepository {
    @NotNull
    private final AppDatabase appDatabase;

    public SystemConversationRepository() {
        AppDatabase.Companion companion = AppDatabase.Companion;
        BaseApplication baseApplication = BaseApplication.getInstance();
        Intrinsics.checkNotNullExpressionValue(baseApplication, "getInstance()");
        this.appDatabase = companion.getInstance(baseApplication);
    }

    public final void deleteAll() {
        try {
            this.appDatabase.systemConversationDao().deleteAll();
        } catch (Exception unused) {
        }
    }

    @Nullable
    public final Object getAllConversations(@NotNull Continuation<? super List<SystemConversationModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new SystemConversationRepository$getAllConversations$2(this, null), continuation);
    }

    @Nullable
    public final Object insertOrUpdateConversations(@Nullable List<SystemConversationModel> list, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (list == null) {
            return Unit.INSTANCE;
        }
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new SystemConversationRepository$insertOrUpdateConversations$2(this, list, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }
}
