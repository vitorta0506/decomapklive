package com.vk.api.sdk.okhttp;

import com.vk.api.sdk.utils.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/vk/api/sdk/okhttp/LogLevelRequestTag;", "", "level", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "(Lcom/vk/api/sdk/utils/log/Logger$LogLevel;)V", "getLevel", "()Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LogLevelRequestTag {
    @NotNull
    private final Logger.LogLevel level;

    public LogLevelRequestTag(@NotNull Logger.LogLevel level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.level = level;
    }

    public static /* synthetic */ LogLevelRequestTag copy$default(LogLevelRequestTag logLevelRequestTag, Logger.LogLevel logLevel, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            logLevel = logLevelRequestTag.level;
        }
        return logLevelRequestTag.copy(logLevel);
    }

    @NotNull
    public final Logger.LogLevel component1() {
        return this.level;
    }

    @NotNull
    public final LogLevelRequestTag copy(@NotNull Logger.LogLevel level) {
        Intrinsics.checkNotNullParameter(level, "level");
        return new LogLevelRequestTag(level);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LogLevelRequestTag) && this.level == ((LogLevelRequestTag) obj).level;
    }

    @NotNull
    public final Logger.LogLevel getLevel() {
        return this.level;
    }

    public int hashCode() {
        return this.level.hashCode();
    }

    @NotNull
    public String toString() {
        return "LogLevelRequestTag(level=" + this.level + ')';
    }
}
