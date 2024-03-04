package com.vk.api.sdk.okhttp;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.vk.api.sdk.utils.ThreadLocalDelegate;
import com.vk.api.sdk.utils.ThreadLocalDelegateKt;
import com.vk.api.sdk.utils.log.Logger;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.Typography;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 A2\u00020\u0001:\u0001AB\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B%\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\nB\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u000eJ\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\tH\u0002R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001c\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\t0\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R-\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020#0!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001a\u001a\u0004\b$\u0010%R'\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\u001a\u001a\u0004\b)\u0010*R\u001b\u0010,\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\u001a\u001a\u0004\b-\u0010\u0018R'\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\u001a\u001a\u0004\b0\u0010*R\u001b\u00102\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\u001a\u001a\u0004\b3\u0010\u0018R\u001b\u00105\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\u001a\u001a\u0004\b6\u0010\u0018R'\u00108\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010\u001a\u001a\u0004\b9\u0010*¨\u0006B"}, d2 = {"Lcom/vk/api/sdk/okhttp/LoggingInterceptor;", "Lokhttp3/Interceptor;", "filterCredentials", "", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "(ZLcom/vk/api/sdk/utils/log/Logger;)V", "keysToFilter", "", "", "(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;)V", "loggingPrefixer", "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;", "(ZLcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V", "(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V", "delegate", "Lokhttp3/logging/HttpLoggingInterceptor;", "getDelegate", "()Lokhttp3/logging/HttpLoggingInterceptor;", "delegate$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "kvKeysExtractorPattern", "Lkotlin/text/Regex;", "getKvKeysExtractorPattern", "()Lkotlin/text/Regex;", "kvKeysExtractorPattern$delegate", "Lkotlin/Lazy;", "kvKeysRestorePattern", "getKvKeysRestorePattern", "kvKeysRestorePattern$delegate", "prefix", "Ljava/lang/ThreadLocal;", "restoreKVKeysTransformer", "Lkotlin/Function2;", "Lkotlin/text/MatchResult;", "", "getRestoreKVKeysTransformer", "()Lkotlin/jvm/functions/Function2;", "restoreKVKeysTransformer$delegate", "sensitiveKeyRequestTransformer", "Lkotlin/Function1;", "getSensitiveKeyRequestTransformer", "()Lkotlin/jvm/functions/Function1;", "sensitiveKeyRequestTransformer$delegate", "sensitiveKeyValuesResponseRegex", "getSensitiveKeyValuesResponseRegex", "sensitiveKeyValuesResponseRegex$delegate", "sensitiveKeyValuesResponseTransformer", "getSensitiveKeyValuesResponseTransformer", "sensitiveKeyValuesResponseTransformer$delegate", "sensitiveKeysRequestRegex", "getSensitiveKeysRequestRegex", "sensitiveKeysRequestRegex$delegate", "sensitiveKeysResponseRegex", "getSensitiveKeysResponseRegex", "sensitiveKeysResponseRegex$delegate", "sensitiveKeysResponseTransformer", "getSensitiveKeysResponseTransformer", "sensitiveKeysResponseTransformer$delegate", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "removeSensitiveKeys", "msg", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LoggingInterceptor implements Interceptor {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(LoggingInterceptor.class, "delegate", "getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;", 0))};
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<Integer, HttpLoggingInterceptor.Level> levelsMap;
    @NotNull
    private final ThreadLocalDelegate delegate$delegate;
    private final boolean filterCredentials;
    @NotNull
    private final Collection<String> keysToFilter;
    @NotNull
    private final Lazy kvKeysExtractorPattern$delegate;
    @NotNull
    private final Lazy kvKeysRestorePattern$delegate;
    @NotNull
    private final Logger logger;
    @NotNull
    private final LoggingPrefixer loggingPrefixer;
    @NotNull
    private ThreadLocal<String> prefix;
    @NotNull
    private final Lazy restoreKVKeysTransformer$delegate;
    @NotNull
    private final Lazy sensitiveKeyRequestTransformer$delegate;
    @NotNull
    private final Lazy sensitiveKeyValuesResponseRegex$delegate;
    @NotNull
    private final Lazy sensitiveKeyValuesResponseTransformer$delegate;
    @NotNull
    private final Lazy sensitiveKeysRequestRegex$delegate;
    @NotNull
    private final Lazy sensitiveKeysResponseRegex$delegate;
    @NotNull
    private final Lazy sensitiveKeysResponseTransformer$delegate;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;", "", "()V", "levelsMap", "", "", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Map<Integer, HttpLoggingInterceptor.Level> mapOf;
        Logger.LogLevel logLevel = Logger.LogLevel.NONE;
        Integer valueOf = Integer.valueOf(logLevel.getLevel());
        HttpLoggingInterceptor.Level level = HttpLoggingInterceptor.Level.NONE;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(valueOf, level), TuplesKt.to(Integer.valueOf(Logger.LogLevel.ERROR.getLevel()), level), TuplesKt.to(Integer.valueOf(Logger.LogLevel.WARNING.getLevel()), HttpLoggingInterceptor.Level.BASIC), TuplesKt.to(Integer.valueOf(Logger.LogLevel.DEBUG.getLevel()), HttpLoggingInterceptor.Level.HEADERS), TuplesKt.to(Integer.valueOf(Logger.LogLevel.VERBOSE.getLevel()), HttpLoggingInterceptor.Level.BODY), TuplesKt.to(Integer.valueOf(logLevel.getLevel()), level));
        levelsMap = mapOf;
    }

    public LoggingInterceptor(boolean z10, @NotNull Collection<String> keysToFilter, @NotNull Logger logger, @NotNull LoggingPrefixer loggingPrefixer) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        Intrinsics.checkNotNullParameter(keysToFilter, "keysToFilter");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(loggingPrefixer, "loggingPrefixer");
        this.filterCredentials = z10;
        this.keysToFilter = keysToFilter;
        this.logger = logger;
        this.loggingPrefixer = loggingPrefixer;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Regex>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeysRequestRegex$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Regex invoke() {
                Collection collection;
                String joinToString$default;
                StringBuilder sb2 = new StringBuilder();
                LoggingInterceptor loggingInterceptor = LoggingInterceptor.this;
                sb2.append("(");
                collection = loggingInterceptor.keysToFilter;
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(collection, HiAnalyticsConstant.REPORT_VAL_SEPARATOR, null, null, 0, null, null, 62, null);
                sb2.append(joinToString$default);
                sb2.append(")=[a-z0-9]+");
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply {\n…]+\")\n        }.toString()");
                return new Regex(sb3, RegexOption.IGNORE_CASE);
            }
        });
        this.sensitiveKeysRequestRegex$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Function1<? super MatchResult, ? extends String>>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeyRequestTransformer$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Function1<? super MatchResult, ? extends String> invoke() {
                return new Function1<MatchResult, String>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeyRequestTransformer$2.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull MatchResult match) {
                        Intrinsics.checkNotNullParameter(match, "match");
                        return Intrinsics.stringPlus(match.getGroupValues().get(1), "=<HIDE>");
                    }
                };
            }
        });
        this.sensitiveKeyRequestTransformer$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Regex>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeysResponseRegex$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Regex invoke() {
                Collection collection;
                String joinToString$default;
                StringBuilder sb2 = new StringBuilder();
                LoggingInterceptor loggingInterceptor = LoggingInterceptor.this;
                sb2.append("\"(");
                collection = loggingInterceptor.keysToFilter;
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(collection, HiAnalyticsConstant.REPORT_VAL_SEPARATOR, null, null, 0, null, null, 62, null);
                sb2.append(joinToString$default);
                sb2.append(")\":\"[a-z0-9]+\"");
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply {\n…\\\"\")\n        }.toString()");
                return new Regex(sb3, RegexOption.IGNORE_CASE);
            }
        });
        this.sensitiveKeysResponseRegex$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Function1<? super MatchResult, ? extends String>>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeysResponseTransformer$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Function1<? super MatchResult, ? extends String> invoke() {
                return new Function1<MatchResult, String>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeysResponseTransformer$2.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull MatchResult match) {
                        Intrinsics.checkNotNullParameter(match, "match");
                        return Typography.quote + match.getGroupValues().get(1) + "\":<HIDE>";
                    }
                };
            }
        });
        this.sensitiveKeysResponseTransformer$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<Regex>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$kvKeysExtractorPattern$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Regex invoke() {
                return new Regex("\\{\"key\":\"([a-z0-9]+)\",\"value\":\"[^\"]*\"", RegexOption.IGNORE_CASE);
            }
        });
        this.kvKeysExtractorPattern$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<Regex>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$kvKeysRestorePattern$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Regex invoke() {
                return new Regex("(\\{\"key\":)<HIDE>(,\"value\":\"[^\"]*\")", RegexOption.IGNORE_CASE);
            }
        });
        this.kvKeysRestorePattern$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<Function2<? super MatchResult, ? super String, ? extends String>>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$restoreKVKeysTransformer$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Function2<? super MatchResult, ? super String, ? extends String> invoke() {
                return new Function2<MatchResult, String, String>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$restoreKVKeysTransformer$2.1
                    @Override // kotlin.jvm.functions.Function2
                    @NotNull
                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final String mo1invoke(@NotNull MatchResult match, @NotNull String key) {
                        Intrinsics.checkNotNullParameter(match, "match");
                        Intrinsics.checkNotNullParameter(key, "key");
                        return match.getGroupValues().get(1) + Typography.quote + key + Typography.quote + match.getGroupValues().get(2);
                    }
                };
            }
        });
        this.restoreKVKeysTransformer$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<Regex>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeyValuesResponseRegex$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Regex invoke() {
                Collection collection;
                String joinToString$default;
                StringBuilder sb2 = new StringBuilder();
                LoggingInterceptor loggingInterceptor = LoggingInterceptor.this;
                sb2.append("\\{\"key\":\"(");
                collection = loggingInterceptor.keysToFilter;
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(collection, HiAnalyticsConstant.REPORT_VAL_SEPARATOR, null, null, 0, null, null, 62, null);
                sb2.append(joinToString$default);
                sb2.append(")\",\"value\":\"[a-z0-9]+\"");
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply {\n…\\\"\")\n        }.toString()");
                return new Regex(sb3, RegexOption.IGNORE_CASE);
            }
        });
        this.sensitiveKeyValuesResponseRegex$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<Function1<? super MatchResult, ? extends String>>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Function1<? super MatchResult, ? extends String> invoke() {
                return new Function1<MatchResult, String>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull MatchResult match) {
                        Intrinsics.checkNotNullParameter(match, "match");
                        return Typography.quote + match.getGroupValues().get(1) + ":<HIDE>\"}";
                    }
                };
            }
        });
        this.sensitiveKeyValuesResponseTransformer$delegate = lazy9;
        this.prefix = new ThreadLocal<>();
        this.delegate$delegate = ThreadLocalDelegateKt.threadLocal(new Function0<HttpLoggingInterceptor>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$delegate$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HttpLoggingInterceptor invoke() {
                final LoggingInterceptor loggingInterceptor = LoggingInterceptor.this;
                return new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$delegate$2.1
                    private final String filterCredentials(String str) {
                        String removeSensitiveKeys;
                        removeSensitiveKeys = LoggingInterceptor.this.removeSensitiveKeys(str);
                        return removeSensitiveKeys;
                    }

                    @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                    public void log(@NotNull String message) {
                        ThreadLocal threadLocal;
                        boolean z11;
                        Logger logger2;
                        Logger logger3;
                        Intrinsics.checkNotNullParameter(message, "message");
                        threadLocal = LoggingInterceptor.this.prefix;
                        String str = (String) threadLocal.get();
                        if (str != null) {
                            String str2 = str + ' ' + message;
                            if (str2 != null) {
                                message = str2;
                            }
                        }
                        z11 = LoggingInterceptor.this.filterCredentials;
                        if (z11) {
                            message = filterCredentials(message);
                        }
                        String str3 = message;
                        logger2 = LoggingInterceptor.this.logger;
                        logger3 = LoggingInterceptor.this.logger;
                        Logger.DefaultImpls.log$default(logger2, logger3.getLogLevel().getValue(), str3, null, 4, null);
                    }
                });
            }
        });
    }

    private final HttpLoggingInterceptor getDelegate() {
        return (HttpLoggingInterceptor) this.delegate$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final Regex getKvKeysExtractorPattern() {
        return (Regex) this.kvKeysExtractorPattern$delegate.getValue();
    }

    private final Regex getKvKeysRestorePattern() {
        return (Regex) this.kvKeysRestorePattern$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function2<MatchResult, String, CharSequence> getRestoreKVKeysTransformer() {
        return (Function2) this.restoreKVKeysTransformer$delegate.getValue();
    }

    private final Function1<MatchResult, CharSequence> getSensitiveKeyRequestTransformer() {
        return (Function1) this.sensitiveKeyRequestTransformer$delegate.getValue();
    }

    private final Regex getSensitiveKeyValuesResponseRegex() {
        return (Regex) this.sensitiveKeyValuesResponseRegex$delegate.getValue();
    }

    private final Function1<MatchResult, CharSequence> getSensitiveKeyValuesResponseTransformer() {
        return (Function1) this.sensitiveKeyValuesResponseTransformer$delegate.getValue();
    }

    private final Regex getSensitiveKeysRequestRegex() {
        return (Regex) this.sensitiveKeysRequestRegex$delegate.getValue();
    }

    private final Regex getSensitiveKeysResponseRegex() {
        return (Regex) this.sensitiveKeysResponseRegex$delegate.getValue();
    }

    private final Function1<MatchResult, CharSequence> getSensitiveKeysResponseTransformer() {
        return (Function1) this.sensitiveKeysResponseTransformer$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String removeSensitiveKeys(String str) {
        Sequence map;
        map = SequencesKt___SequencesKt.map(Regex.findAll$default(getKvKeysExtractorPattern(), str, 0, 2, null), new Function1<MatchResult, String>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$removeSensitiveKeys$hiddenKVKeys$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull MatchResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
                String str2 = it.getGroupValues().get(1);
                Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = str2.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
                return lowerCase;
            }
        });
        final Iterator it = map.iterator();
        return getSensitiveKeyValuesResponseRegex().replace(getKvKeysRestorePattern().replace(getSensitiveKeysResponseRegex().replace(getSensitiveKeysRequestRegex().replace(str, getSensitiveKeyRequestTransformer()), getSensitiveKeysResponseTransformer()), new Function1<MatchResult, CharSequence>() { // from class: com.vk.api.sdk.okhttp.LoggingInterceptor$removeSensitiveKeys$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CharSequence invoke(@NotNull MatchResult matchResult) {
                Function2 restoreKVKeysTransformer;
                Intrinsics.checkNotNullParameter(matchResult, "matchResult");
                restoreKVKeysTransformer = LoggingInterceptor.this.getRestoreKVKeysTransformer();
                return (CharSequence) restoreKVKeysTransformer.mo1invoke(matchResult, it.next());
            }
        }), getSensitiveKeyValuesResponseTransformer());
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) {
        HttpLoggingInterceptor.Level level;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        RequestBody body = request.body();
        long contentLength = body == null ? 0L : body.contentLength();
        LogLevelRequestTag logLevelRequestTag = (LogLevelRequestTag) request.tag(LogLevelRequestTag.class);
        Logger.LogLevel level2 = logLevelRequestTag == null ? null : logLevelRequestTag.getLevel();
        if (level2 == null) {
            level2 = this.logger.getLogLevel().getValue();
        }
        HttpLoggingInterceptor delegate = getDelegate();
        if (contentLength <= 4096 && contentLength > 0) {
            level = levelsMap.get(Integer.valueOf(level2.getLevel()));
        } else {
            level = levelsMap.get(Integer.valueOf(Math.min(Logger.LogLevel.WARNING.getLevel(), level2.getLevel())));
        }
        Intrinsics.checkNotNull(level);
        delegate.level(level);
        this.prefix.set(this.loggingPrefixer.getPrefix());
        return getDelegate().intercept(chain);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoggingInterceptor(boolean r4, @org.jetbrains.annotations.NotNull com.vk.api.sdk.utils.log.Logger r5) {
        /*
            r3 = this;
            java.lang.String r0 = "logger"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "access_token"
            java.lang.String r1 = "key"
            java.lang.String r2 = "client_secret"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1, r2}
            java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
            com.vk.api.sdk.okhttp.DefaultLoggingPrefixer r1 = new com.vk.api.sdk.okhttp.DefaultLoggingPrefixer
            r1.<init>()
            r3.<init>(r4, r0, r5, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.okhttp.LoggingInterceptor.<init>(boolean, com.vk.api.sdk.utils.log.Logger):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoggingInterceptor(boolean z10, @NotNull Collection<String> keysToFilter, @NotNull Logger logger) {
        this(z10, keysToFilter, logger, new DefaultLoggingPrefixer());
        Intrinsics.checkNotNullParameter(keysToFilter, "keysToFilter");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LoggingInterceptor(boolean r4, @org.jetbrains.annotations.NotNull com.vk.api.sdk.utils.log.Logger r5, @org.jetbrains.annotations.NotNull com.vk.api.sdk.okhttp.LoggingPrefixer r6) {
        /*
            r3 = this;
            java.lang.String r0 = "logger"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "loggingPrefixer"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "access_token"
            java.lang.String r1 = "key"
            java.lang.String r2 = "client_secret"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1, r2}
            java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
            r3.<init>(r4, r0, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.okhttp.LoggingInterceptor.<init>(boolean, com.vk.api.sdk.utils.log.Logger, com.vk.api.sdk.okhttp.LoggingPrefixer):void");
    }
}
