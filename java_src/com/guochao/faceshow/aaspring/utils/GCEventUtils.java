package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.GCEventModel;
import com.guochao.faceshow.aaspring.db.GCEventDatabase;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0007J\u0010\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J+\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00042\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\b\b\u0002\u0010\"\u001a\u00020!H\u0007¢\u0006\u0002\u0010#R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;", "", "()V", GCEventUtils.CLICK_ATTENTION, "", GCEventUtils.CLICK_FIND, GCEventUtils.CLICK_FRIENDRING, GCEventUtils.CLICK_IM, GCEventUtils.CLICK_LIVE, GCEventUtils.CLICK_MINE, GCEventUtils.CLICK_NEARBY, GCEventUtils.CLICK_PARTY, GCEventUtils.CLICK_PUSH_FRIENDRING, GCEventUtils.CLICK_PUSH_VIDEO, GCEventUtils.CLICK_RANKING, GCEventUtils.CLICK_VIDEO, GCEventUtils.NEW_USER_EFFECTIVE, GCEventUtils.OPEN_VIP, GCEventUtils.STAY_IN_LIVE, GCEventUtils.USER_LOGIN, GCEventUtils.VIEW_LIVE, "eventIO", "Lkotlinx/coroutines/CoroutineDispatcher;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "flushEvents", "", "init", "saveEvent", "event", "Lcom/guochao/faceshow/aaspring/beans/GCEventModel;", "track", "targetUserId", "", "num", "(Ljava/lang/String;Ljava/lang/Integer;I)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GCEventUtils {
    @NotNull
    public static final String CLICK_ATTENTION = "CLICK_ATTENTION";
    @NotNull
    public static final String CLICK_FIND = "CLICK_FIND";
    @NotNull
    public static final String CLICK_FRIENDRING = "CLICK_FRIENDRING";
    @NotNull
    public static final String CLICK_IM = "CLICK_IM";
    @NotNull
    public static final String CLICK_LIVE = "CLICK_LIVE";
    @NotNull
    public static final String CLICK_MINE = "CLICK_MINE";
    @NotNull
    public static final String CLICK_NEARBY = "CLICK_NEARBY";
    @NotNull
    public static final String CLICK_PARTY = "CLICK_PARTY";
    @NotNull
    public static final String CLICK_PUSH_FRIENDRING = "CLICK_PUSH_FRIENDRING";
    @NotNull
    public static final String CLICK_PUSH_VIDEO = "CLICK_PUSH_VIDEO";
    @NotNull
    public static final String CLICK_RANKING = "CLICK_RANKING";
    @NotNull
    public static final String CLICK_VIDEO = "CLICK_VIDEO";
    @NotNull
    public static final GCEventUtils INSTANCE = new GCEventUtils();
    @NotNull
    public static final String NEW_USER_EFFECTIVE = "NEW_USER_EFFECTIVE";
    @NotNull
    public static final String OPEN_VIP = "OPEN_VIP";
    @NotNull
    public static final String STAY_IN_LIVE = "STAY_IN_LIVE";
    @NotNull
    public static final String USER_LOGIN = "USER_LOGIN";
    @NotNull
    public static final String VIEW_LIVE = "VIEW_LIVE";
    @NotNull
    private static final CoroutineDispatcher eventIO;
    @NotNull
    private static final CoroutineScope scope;

    static {
        ExecutorCoroutineDispatcher executorCoroutineDispatcher = new ExecutorCoroutineDispatcher() { // from class: com.guochao.faceshow.aaspring.utils.GCEventUtils$eventIO$1
            private final ExecutorService _executor = Executors.newSingleThreadExecutor();

            @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                this._executor.shutdown();
            }

            @Override // kotlinx.coroutines.CoroutineDispatcher
            /* renamed from: dispatch */
            public void mo3203dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                this._executor.submit(block);
            }

            @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
            @NotNull
            public Executor getExecutor() {
                ExecutorService _executor = this._executor;
                Intrinsics.checkNotNullExpressionValue(_executor, "_executor");
                return _executor;
            }
        };
        eventIO = executorCoroutineDispatcher;
        scope = CoroutineScopeKt.CoroutineScope(executorCoroutineDispatcher);
    }

    private GCEventUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void flushEvents() {
        Response response;
        try {
            GCEventDatabase eventDb = GCEventDatabase.Companion.getEventDb();
            List<GCEventModel> list = eventDb.eventDao().totalList();
            if (list.isEmpty()) {
                return;
            }
            GCRequest putBody = new GCRequest("api/token/social/buryingPoint/addBuryingPointLog").putBody("details", list);
            try {
                response = Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), Object.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                Response fail = Response.Companion.fail(-1, null, e10.getMessage());
                fail.setError(e10);
                response = fail;
            }
            if (response.isSuccessful()) {
                eventDb.eventDao().clear();
            }
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    public static final void init() {
        BuildersKt.launch$default(scope, null, null, new GCEventUtils$init$1(null), 3, null);
    }

    private final void saveEvent(GCEventModel gCEventModel) {
        BuildersKt.launch$default(scope, null, null, new GCEventUtils$saveEvent$1(gCEventModel, null), 3, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void track(@NotNull String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        track$default(event, null, 0, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void track(@NotNull String event, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(event, "event");
        track$default(event, num, 0, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void track(@NotNull String event, @Nullable Integer num, int i9) {
        Intrinsics.checkNotNullParameter(event, "event");
        INSTANCE.saveEvent(new GCEventModel(0L, event, 0L, num, i9, 5, null));
    }

    public static /* synthetic */ void track$default(String str, Integer num, int i9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            i9 = 1;
        }
        track(str, num, i9);
    }
}
