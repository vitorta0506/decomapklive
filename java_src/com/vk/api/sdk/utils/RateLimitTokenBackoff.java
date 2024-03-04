package com.vk.api.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0003\u0018\u0019\u001aB9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0016\u001a\u00020\u0005H\u0002J\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;", "", "store", "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;", "minBackoffTime", "", "maxBackoffTime", "factor", "", "timeProvider", "Lkotlin/Function0;", "(Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;JJFLkotlin/jvm/functions/Function0;)V", "backoff", "", "operationKey", "", "calculate", "retry", "", "reset", "shouldWait", "", CrashHianalyticsData.TIME, HiAnalyticsConstant.HaKey.BI_KEY_WAITTIME, "TokenMemStore", "TokenPrefStore", "TokenStore", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RateLimitTokenBackoff {
    private final float factor;
    private final long maxBackoffTime;
    private final long minBackoffTime;
    @NotNull
    private final TokenStore store;
    @NotNull
    private final Function0<Long> timeProvider;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0007H\u0016J$\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenMemStore;", "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;", "()V", "obj", "", "storage", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lkotlin/Pair;", "", "", "has", "", JThirdPlatFormInterface.KEY_TOKEN, "reset", "", "restore", V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, "store", "value", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class TokenMemStore implements TokenStore {
        @NotNull
        private final ConcurrentHashMap<String, Pair<Long, Integer>> storage = new ConcurrentHashMap<>();
        @NotNull
        private final Object obj = new Object();

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        public boolean has(@NotNull String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            return this.storage.containsKey(token);
        }

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        public void reset(@NotNull String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            synchronized (this.obj) {
                this.storage.remove(token);
            }
        }

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        @NotNull
        public Pair<Long, Integer> restore(@NotNull String token, long j10) {
            Intrinsics.checkNotNullParameter(token, "token");
            Pair<Long, Integer> pair = this.storage.get(token);
            return pair == null ? TuplesKt.to(Long.valueOf(j10), 0) : pair;
        }

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        public void store(@NotNull String token, long j10) {
            Integer second;
            Intrinsics.checkNotNullParameter(token, "token");
            synchronized (this.obj) {
                Pair<Long, Integer> pair = this.storage.get(token);
                int i9 = 0;
                if (pair != null && (second = pair.getSecond()) != null) {
                    i9 = second.intValue() + 1;
                }
                this.storage.put(token, TuplesKt.to(Long.valueOf(j10), Integer.valueOf(i9)));
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0018\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0014H\u0016R#\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;", "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "prefStorage", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "getPrefStorage", "()Landroid/content/SharedPreferences;", "prefStorage$delegate", "Lkotlin/Lazy;", "has", "", JThirdPlatFormInterface.KEY_TOKEN, "", "reset", "", "restore", "Lkotlin/Pair;", "", "", V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, "store", "value", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class TokenPrefStore implements TokenStore {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final String PREF_NAME = "rate_limit_backoff_storage";
        @NotNull
        private final Lazy prefStorage$delegate;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$Companion;", "", "()V", "PREF_NAME", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public TokenPrefStore(@NotNull final Context context) {
            Lazy lazy;
            Intrinsics.checkNotNullParameter(context, "context");
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<SharedPreferences>() { // from class: com.vk.api.sdk.utils.RateLimitTokenBackoff$TokenPrefStore$prefStorage$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final SharedPreferences invoke() {
                    return context.getSharedPreferences("rate_limit_backoff_storage", 0);
                }
            });
            this.prefStorage$delegate = lazy;
        }

        private final SharedPreferences getPrefStorage() {
            return (SharedPreferences) this.prefStorage$delegate.getValue();
        }

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        public boolean has(@NotNull String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            return getPrefStorage().contains(token);
        }

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        public void reset(@NotNull String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            getPrefStorage().edit().remove(token).apply();
        }

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        @NotNull
        public Pair<Long, Integer> restore(@NotNull String token, long j10) {
            Intrinsics.checkNotNullParameter(token, "token");
            return TuplesKt.to(Long.valueOf(getPrefStorage().getLong(token, j10)), 0);
        }

        @Override // com.vk.api.sdk.utils.RateLimitTokenBackoff.TokenStore
        public void store(@NotNull String token, long j10) {
            Intrinsics.checkNotNullParameter(token, "token");
            getPrefStorage().edit().putLong(token, j10).apply();
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J$\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\nH&J\u0018\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\nH&¨\u0006\u000f"}, d2 = {"Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;", "", "has", "", JThirdPlatFormInterface.KEY_TOKEN, "", "reset", "", "restore", "Lkotlin/Pair;", "", "", V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, "store", "value", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface TokenStore {
        boolean has(@NotNull String str);

        void reset(@NotNull String str);

        @NotNull
        Pair<Long, Integer> restore(@NotNull String str, long j10);

        void store(@NotNull String str, long j10);
    }

    public RateLimitTokenBackoff(@NotNull TokenStore store, long j10, long j11, float f10, @NotNull Function0<Long> timeProvider) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        this.store = store;
        this.minBackoffTime = j10;
        this.maxBackoffTime = j11;
        this.factor = f10;
        this.timeProvider = timeProvider;
    }

    private final long calculate(int i9) {
        long j10 = this.minBackoffTime;
        for (int i10 = 0; i10 < i9; i10++) {
            j10 = ((float) j10) * this.factor;
        }
        return Math.min(j10, this.maxBackoffTime);
    }

    private final long time() {
        return this.timeProvider.invoke().longValue();
    }

    public final void backoff(@NotNull String operationKey) {
        Intrinsics.checkNotNullParameter(operationKey, "operationKey");
        this.store.store(operationKey, time());
    }

    public final void reset(@NotNull String operationKey) {
        Intrinsics.checkNotNullParameter(operationKey, "operationKey");
        if (this.store.has(operationKey)) {
            this.store.reset(operationKey);
        }
    }

    public final boolean shouldWait(@NotNull String operationKey) {
        Intrinsics.checkNotNullParameter(operationKey, "operationKey");
        return waitTime(operationKey) > 0;
    }

    public final long waitTime(@NotNull String operationKey) {
        Intrinsics.checkNotNullParameter(operationKey, "operationKey");
        if (this.store.has(operationKey)) {
            Pair<Long, Integer> restore = this.store.restore(operationKey, Long.MAX_VALUE);
            long longValue = restore.component1().longValue();
            int intValue = restore.component2().intValue();
            long time = time() - longValue;
            long calculate = calculate(intValue);
            if (time >= 0 && time < calculate) {
                return calculate - time;
            }
            return 0L;
        }
        return 0L;
    }

    public /* synthetic */ RateLimitTokenBackoff(TokenStore tokenStore, long j10, long j11, float f10, Function0 function0, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenStore, j10, (i9 & 4) != 0 ? j10 : j11, (i9 & 8) != 0 ? 1.5f : f10, (i9 & 16) != 0 ? new Function0<Long>() { // from class: com.vk.api.sdk.utils.RateLimitTokenBackoff.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                return Long.valueOf(SystemClock.elapsedRealtime());
            }
        } : function0);
    }
}
