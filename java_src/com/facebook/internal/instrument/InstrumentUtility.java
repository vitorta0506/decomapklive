package com.facebook.internal.instrument;

import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentUtility;
import com.huawei.hms.push.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0012\u0010\u0019\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0012\u0010\u001a\u001a\u00020\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007J\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00150\u001cH\u0007¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u001cH\u0007¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00150\u001cH\u0007¢\u0006\u0002\u0010\u001dJ\u001c\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020\u000fH\u0007J$\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u00042\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0007J\u001c\u0010*\u001a\u00020$2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\u0010+\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentUtility;", "", "()V", "ANALYSIS_REPORT_PREFIX", "", "ANR_REPORT_PREFIX", "CODELESS_PREFIX", "CRASH_REPORT_PREFIX", "CRASH_SHIELD_PREFIX", "ERROR_REPORT_PREFIX", "FBSDK_PREFIX", "INSTRUMENT_DIR", "SUGGESTED_EVENTS_PREFIX", "THREAD_CHECK_PREFIX", "deleteFile", "", "filename", "getCause", e.f27721a, "", "getInstrumentReportDir", "Ljava/io/File;", "getStackTrace", "thread", "Ljava/lang/Thread;", "isSDKRelatedException", "isSDKRelatedThread", "listAnrReportFiles", "", "()[Ljava/io/File;", "listExceptionAnalysisReportFiles", "listExceptionReportFiles", "readFile", "Lorg/json/JSONObject;", "deleteOnException", "sendReports", "", "key", "reports", "Lorg/json/JSONArray;", "callback", "Lcom/facebook/GraphRequest$Callback;", "writeFile", "content", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class InstrumentUtility {
    @NotNull
    public static final String ANALYSIS_REPORT_PREFIX = "analysis_log_";
    @NotNull
    public static final String ANR_REPORT_PREFIX = "anr_log_";
    @NotNull
    private static final String CODELESS_PREFIX = "com.facebook.appevents.codeless";
    @NotNull
    public static final String CRASH_REPORT_PREFIX = "crash_log_";
    @NotNull
    public static final String CRASH_SHIELD_PREFIX = "shield_log_";
    @NotNull
    public static final String ERROR_REPORT_PREFIX = "error_log_";
    @NotNull
    private static final String FBSDK_PREFIX = "com.facebook";
    @NotNull
    public static final InstrumentUtility INSTANCE = new InstrumentUtility();
    @NotNull
    private static final String INSTRUMENT_DIR = "instrument";
    @NotNull
    private static final String SUGGESTED_EVENTS_PREFIX = "com.facebook.appevents.suggestedevents";
    @NotNull
    public static final String THREAD_CHECK_PREFIX = "thread_check_log_";

    private InstrumentUtility() {
    }

    @JvmStatic
    public static final boolean deleteFile(@Nullable String str) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null || str == null) {
            return false;
        }
        return new File(instrumentReportDir, str).delete();
    }

    @JvmStatic
    @Nullable
    public static final String getCause(@Nullable Throwable th2) {
        if (th2 == null) {
            return null;
        }
        if (th2.getCause() == null) {
            return th2.toString();
        }
        return String.valueOf(th2.getCause());
    }

    @JvmStatic
    @Nullable
    public static final File getInstrumentReportDir() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        File file = new File(FacebookSdk.getApplicationContext().getCacheDir(), INSTRUMENT_DIR);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    @JvmStatic
    @Nullable
    public static final String getStackTrace(@Nullable Throwable th2) {
        Throwable th3 = null;
        if (th2 == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        while (th2 != null && th2 != th3) {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "t.stackTrace");
            int i9 = 0;
            int length = stackTrace.length;
            while (i9 < length) {
                StackTraceElement stackTraceElement = stackTrace[i9];
                i9++;
                jSONArray.put(stackTraceElement.toString());
            }
            th3 = th2;
            th2 = th2.getCause();
        }
        return jSONArray.toString();
    }

    @JvmStatic
    public static final boolean isSDKRelatedException(@Nullable Throwable th2) {
        boolean startsWith$default;
        if (th2 == null) {
            return false;
        }
        Throwable th3 = null;
        while (th2 != null && th2 != th3) {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "t.stackTrace");
            int length = stackTrace.length;
            int i9 = 0;
            while (i9 < length) {
                StackTraceElement stackTraceElement = stackTrace[i9];
                i9++;
                String className = stackTraceElement.getClassName();
                Intrinsics.checkNotNullExpressionValue(className, "element.className");
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(className, FBSDK_PREFIX, false, 2, null);
                if (startsWith$default) {
                    return true;
                }
            }
            th3 = th2;
            th2 = th2.getCause();
        }
        return false;
    }

    @JvmStatic
    public static final boolean isSDKRelatedThread(@Nullable Thread thread) {
        StackTraceElement[] stackTrace;
        boolean startsWith$default;
        boolean startsWith$default2;
        boolean startsWith$default3;
        boolean startsWith$default4;
        boolean startsWith$default5;
        boolean startsWith$default6;
        if (thread != null && (stackTrace = thread.getStackTrace()) != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                Intrinsics.checkNotNullExpressionValue(className, "element.className");
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(className, FBSDK_PREFIX, false, 2, null);
                if (startsWith$default) {
                    String className2 = stackTraceElement.getClassName();
                    Intrinsics.checkNotNullExpressionValue(className2, "element.className");
                    startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(className2, CODELESS_PREFIX, false, 2, null);
                    if (!startsWith$default2) {
                        String className3 = stackTraceElement.getClassName();
                        Intrinsics.checkNotNullExpressionValue(className3, "element.className");
                        startsWith$default6 = StringsKt__StringsJVMKt.startsWith$default(className3, SUGGESTED_EVENTS_PREFIX, false, 2, null);
                        if (!startsWith$default6) {
                            return true;
                        }
                    }
                    String methodName = stackTraceElement.getMethodName();
                    Intrinsics.checkNotNullExpressionValue(methodName, "element.methodName");
                    startsWith$default3 = StringsKt__StringsJVMKt.startsWith$default(methodName, "onClick", false, 2, null);
                    if (startsWith$default3) {
                        continue;
                    } else {
                        String methodName2 = stackTraceElement.getMethodName();
                        Intrinsics.checkNotNullExpressionValue(methodName2, "element.methodName");
                        startsWith$default4 = StringsKt__StringsJVMKt.startsWith$default(methodName2, "onItemClick", false, 2, null);
                        if (startsWith$default4) {
                            continue;
                        } else {
                            String methodName3 = stackTraceElement.getMethodName();
                            Intrinsics.checkNotNullExpressionValue(methodName3, "element.methodName");
                            startsWith$default5 = StringsKt__StringsJVMKt.startsWith$default(methodName3, "onTouch", false, 2, null);
                            if (!startsWith$default5) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @JvmStatic
    @NotNull
    public static final File[] listAnrReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] listFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: b1.e
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m158listAnrReportFiles$lambda1;
                m158listAnrReportFiles$lambda1 = InstrumentUtility.m158listAnrReportFiles$lambda1(file, str);
                return m158listAnrReportFiles$lambda1;
            }
        });
        return listFiles == null ? new File[0] : listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listAnrReportFiles$lambda-1  reason: not valid java name */
    public static final boolean m158listAnrReportFiles$lambda1(File file, String name) {
        Intrinsics.checkNotNullExpressionValue(name, "name");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{ANR_REPORT_PREFIX}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return new Regex(format).matches(name);
    }

    @JvmStatic
    @NotNull
    public static final File[] listExceptionAnalysisReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] listFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: b1.f
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m159listExceptionAnalysisReportFiles$lambda2;
                m159listExceptionAnalysisReportFiles$lambda2 = InstrumentUtility.m159listExceptionAnalysisReportFiles$lambda2(file, str);
                return m159listExceptionAnalysisReportFiles$lambda2;
            }
        });
        return listFiles == null ? new File[0] : listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listExceptionAnalysisReportFiles$lambda-2  reason: not valid java name */
    public static final boolean m159listExceptionAnalysisReportFiles$lambda2(File file, String name) {
        Intrinsics.checkNotNullExpressionValue(name, "name");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{ANALYSIS_REPORT_PREFIX}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return new Regex(format).matches(name);
    }

    @JvmStatic
    @NotNull
    public static final File[] listExceptionReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] listFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: b1.g
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m160listExceptionReportFiles$lambda3;
                m160listExceptionReportFiles$lambda3 = InstrumentUtility.m160listExceptionReportFiles$lambda3(file, str);
                return m160listExceptionReportFiles$lambda3;
            }
        });
        return listFiles == null ? new File[0] : listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listExceptionReportFiles$lambda-3  reason: not valid java name */
    public static final boolean m160listExceptionReportFiles$lambda3(File file, String name) {
        Intrinsics.checkNotNullExpressionValue(name, "name");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{CRASH_REPORT_PREFIX, CRASH_SHIELD_PREFIX, THREAD_CHECK_PREFIX}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return new Regex(format).matches(name);
    }

    @JvmStatic
    @Nullable
    public static final JSONObject readFile(@Nullable String str, boolean z10) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir != null && str != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(instrumentReportDir, str));
                Utility utility = Utility.INSTANCE;
                return new JSONObject(Utility.readStreamToString(fileInputStream));
            } catch (Exception unused) {
                if (z10) {
                    deleteFile(str);
                }
            }
        }
        return null;
    }

    @JvmStatic
    public static final void sendReports(@Nullable String str, @NotNull JSONArray reports, @Nullable GraphRequest.Callback callback) {
        Intrinsics.checkNotNullParameter(reports, "reports");
        if (reports.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, reports.toString());
            Utility utility = Utility.INSTANCE;
            JSONObject dataProcessingOptions = Utility.getDataProcessingOptions();
            if (dataProcessingOptions != null) {
                Iterator<String> keys = dataProcessingOptions.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, dataProcessingOptions.get(next));
                }
            }
            GraphRequest.Companion companion = GraphRequest.Companion;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{FacebookSdk.getApplicationId()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
            companion.newPostRequest(null, format, jSONObject, callback).executeAsync();
        } catch (JSONException unused) {
        }
    }

    @JvmStatic
    public static final void writeFile(@Nullable String str, @Nullable String str2) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null || str == null || str2 == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(instrumentReportDir, str));
            byte[] bytes = str2.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    @Nullable
    public static final String getStackTrace(@NotNull Thread thread) {
        Intrinsics.checkNotNullParameter(thread, "thread");
        StackTraceElement[] stackTrace = thread.getStackTrace();
        JSONArray jSONArray = new JSONArray();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "stackTrace");
        int length = stackTrace.length;
        int i9 = 0;
        while (i9 < length) {
            StackTraceElement stackTraceElement = stackTrace[i9];
            i9++;
            jSONArray.put(stackTraceElement.toString());
        }
        return jSONArray.toString();
    }
}
