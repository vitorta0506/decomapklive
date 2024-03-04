package com.vk.api.sdk.utils.log;

import androidx.core.app.NotificationCompat;
import kotlin.Lazy;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\bf\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/vk/api/sdk/utils/log/Logger;", "", "logLevel", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "getLogLevel", "()Lkotlin/Lazy;", "tag", "", "getTag", "()Ljava/lang/String;", "log", "", "level", "msg", NotificationCompat.CATEGORY_ERROR, "", "Companion", "LogLevel", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface Logger {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int LOGGER_ENTRY_MAX_LEN = 4096;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/utils/log/Logger$Companion;", "", "()V", "LOGGER_ENTRY_MAX_LEN", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int LOGGER_ENTRY_MAX_LEN = 4096;

        private Companion() {
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void log$default(Logger logger, LogLevel logLevel, String str, Throwable th2, int i9, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
            }
            if ((i9 & 2) != 0) {
                str = null;
            }
            if ((i9 & 4) != 0) {
                th2 = null;
            }
            logger.log(logLevel, str, th2);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "", "level", "", "(Ljava/lang/String;II)V", "getLevel", "()I", "VERBOSE", "DEBUG", "WARNING", "ERROR", "NONE", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum LogLevel {
        VERBOSE(4),
        DEBUG(3),
        WARNING(2),
        ERROR(1),
        NONE(0);
        
        private final int level;

        LogLevel(int i9) {
            this.level = i9;
        }

        public final int getLevel() {
            return this.level;
        }
    }

    @NotNull
    Lazy<LogLevel> getLogLevel();

    @NotNull
    String getTag();

    void log(@NotNull LogLevel logLevel, @Nullable String str, @Nullable Throwable th2);
}
