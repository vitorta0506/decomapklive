package com.guochao.faceshow.aaspring.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0003J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0003J\u001e\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007J*\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001b\u0010\u000f\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0003¢\u0006\u0002\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0015\u001a\u00020\u000b2\b\u0010\t\u001a\u0004\u0018\u00010\u0016H\u0007J\u001e\u0010\u0017\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007J\u001e\u0010\u0018\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/LogUtils;", "", "()V", "sLogger", "Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;", "buildTag", "", "tag", "createMessage", "msg", "d", "", com.huawei.hms.push.e.f27721a, Language.TURKISH, "", "getMethodNames", "sElements", "", "Ljava/lang/StackTraceElement;", "([Ljava/lang/StackTraceElement;)Ljava/lang/String;", com.huawei.hms.opendevice.i.TAG, "json", "Lorg/json/JSONObject;", NotifyType.VIBRATE, "w", "DebugLogger", "DefaultLogger", "LogHandler", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LogUtils {
    @NotNull
    public static final LogUtils INSTANCE = new LogUtils();
    @NotNull
    private static final DebugLogger sLogger = new DebugLogger();

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;", "Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;", "()V", "json", "", "level", "", "content", "Lorg/json/JSONObject;", "log", "tag", "", "", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DebugLogger extends DefaultLogger {
        public DebugLogger() {
            ad.h a10 = ad.h.j().d(false).b(0).c(7).e("FaceCast").a();
            Intrinsics.checkNotNullExpressionValue(a10, "newBuilder()\n           …\n                .build()");
            ad.f.a(new ad.a(a10));
        }

        @Override // com.guochao.faceshow.aaspring.utils.LogUtils.DefaultLogger
        public void json(int i9, @Nullable JSONObject jSONObject) {
            ad.f.c(jSONObject != null ? jSONObject.toString() : null);
        }

        @Override // com.guochao.faceshow.aaspring.utils.LogUtils.DefaultLogger
        public void log(int i9, @Nullable String str, @NotNull Object content) {
            Intrinsics.checkNotNullParameter(content, "content");
            if (!TextUtils.isEmpty(str)) {
                str = str + ':';
            }
            ad.f.b(str + LogUtils.createMessage(content.toString()), new Object[0]);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\bJ\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0007\u001a\u0004\u0018\u00010\fH\u0016J\"\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0016¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;", "", "()V", com.huawei.hms.push.e.f27721a, "", "tag", "", "content", "", "json", "level", "", "Lorg/json/JSONObject;", "log", "Companion", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static class DefaultLogger {
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int DEBUG = 4;
        public static final int ERROR = 3;
        public static final int INFO = 0;
        public static final int VERBOSE = 1;
        public static final int WARN = 2;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger$Companion;", "", "()V", "DEBUG", "", "ERROR", "INFO", "VERBOSE", "WARN", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public final void e(@Nullable String str, @Nullable Object obj, @Nullable Throwable th2) {
        }

        public void json(int i9, @Nullable JSONObject jSONObject) {
        }

        public void log(int i9, @Nullable String str, @NotNull Object content) {
            Intrinsics.checkNotNullParameter(content, "content");
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;", "Landroid/os/Handler;", "looper", "Landroid/os/Looper;", "folder", "", "maxFileSize", "", "(Landroid/os/Looper;Ljava/lang/String;I)V", "getFolder", "()Ljava/lang/String;", "getMaxFileSize", "()I", "getLogFile", "Ljava/io/File;", "folderName", "fileName", "handleMessage", "", "msg", "Landroid/os/Message;", "writeLog", "fileWriter", "Ljava/io/FileWriter;", "content", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class LogHandler extends Handler {
        @Nullable
        private final String folder;
        private final int maxFileSize;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LogHandler(@NotNull Looper looper, @Nullable String str, int i9) {
            super(looper);
            Intrinsics.checkNotNullParameter(looper, "looper");
            this.folder = str;
            this.maxFileSize = i9;
        }

        private final File getLogFile(String str, String str2) {
            File file;
            File file2 = new File(str);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = null;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%s_%s.csv", Arrays.copyOf(new Object[]{str2, 0}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            File file4 = new File(file2, format);
            int i9 = 0;
            while (true) {
                File file5 = file4;
                file = file3;
                file3 = file5;
                if (!file3.exists()) {
                    break;
                }
                i9++;
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                String format2 = String.format("%s_%s.csv", Arrays.copyOf(new Object[]{str2, Integer.valueOf(i9)}, 2));
                Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                file4 = new File(file2, format2);
            }
            return (file == null || file.length() >= ((long) this.maxFileSize)) ? file3 : file;
        }

        private final void writeLog(FileWriter fileWriter, String str) throws IOException {
            fileWriter.append((CharSequence) str);
        }

        @Nullable
        public final String getFolder() {
            return this.folder;
        }

        public final int getMaxFileSize() {
            return this.maxFileSize;
        }

        @Override // android.os.Handler
        public void handleMessage(@NotNull Message msg) {
            FileWriter fileWriter;
            Intrinsics.checkNotNullParameter(msg, "msg");
            Object obj = msg.obj;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj;
            FileWriter fileWriter2 = null;
            try {
                fileWriter = new FileWriter(getLogFile(this.folder, "logs"), true);
            } catch (IOException unused) {
            }
            try {
                writeLog(fileWriter, str);
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException unused2) {
                fileWriter2 = fileWriter;
                if (fileWriter2 != null) {
                    try {
                        fileWriter2.flush();
                        fileWriter2.close();
                    } catch (IOException unused3) {
                    }
                }
            }
        }
    }

    private LogUtils() {
    }

    @JvmStatic
    private static final String buildTag(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return "Facecast_" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final String createMessage(String str) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "Throwable().stackTrace");
        String methodNames = getMethodNames(stackTrace);
        return methodNames + str;
    }

    @JvmStatic
    @JvmOverloads
    public static final void d(@Nullable String str) {
        d$default(null, str, 1, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void d(@Nullable String str, @Nullable String str2) {
        DebugLogger debugLogger = sLogger;
        String buildTag = buildTag(str);
        if (str2 == null) {
            str2 = "";
        }
        debugLogger.log(3, buildTag, str2);
    }

    public static /* synthetic */ void d$default(String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        d(str, str2);
    }

    @JvmStatic
    @JvmOverloads
    public static final void e(@Nullable String str) {
        e$default(null, str, null, 5, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void e(@Nullable String str, @Nullable String str2) {
        e$default(str, str2, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void e(@Nullable String str, @Nullable String str2, @Nullable Throwable th2) {
        DebugLogger debugLogger = sLogger;
        if (str2 == null) {
            str2 = "";
        }
        debugLogger.e(str, str2, th2);
    }

    public static /* synthetic */ void e$default(String str, String str2, Throwable th2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            th2 = null;
        }
        e(str, str2, th2);
    }

    @JvmStatic
    private static final String getMethodNames(StackTraceElement[] stackTraceElementArr) {
        String fileName = stackTraceElementArr[4].getFileName();
        stackTraceElementArr[4].getMethodName();
        int lineNumber = stackTraceElementArr[4].getLineNumber();
        return '(' + fileName + ':' + lineNumber + ')';
    }

    @JvmStatic
    @JvmOverloads
    public static final void i(@Nullable String str) {
        i$default(null, str, 1, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void i(@Nullable String str, @Nullable String str2) {
        DebugLogger debugLogger = sLogger;
        String buildTag = buildTag(str);
        if (str2 == null) {
            str2 = "";
        }
        debugLogger.log(4, buildTag, str2);
    }

    public static /* synthetic */ void i$default(String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        i(str, str2);
    }

    @JvmStatic
    public static final void json(@Nullable JSONObject jSONObject) {
        sLogger.json(4, jSONObject);
    }

    @JvmStatic
    @JvmOverloads
    public static final void v(@Nullable String str) {
        v$default(null, str, 1, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void v(@Nullable String str, @Nullable String str2) {
        DebugLogger debugLogger = sLogger;
        String buildTag = buildTag(str);
        if (str2 == null) {
            str2 = "";
        }
        debugLogger.log(2, buildTag, str2);
    }

    public static /* synthetic */ void v$default(String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        v(str, str2);
    }

    @JvmStatic
    @JvmOverloads
    public static final void w(@Nullable String str) {
        w$default(null, str, 1, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void w(@Nullable String str, @Nullable String str2) {
        DebugLogger debugLogger = sLogger;
        String buildTag = buildTag(str);
        if (str2 == null) {
            str2 = "";
        }
        debugLogger.log(5, buildTag, str2);
    }

    public static /* synthetic */ void w$default(String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        w(str, str2);
    }
}
