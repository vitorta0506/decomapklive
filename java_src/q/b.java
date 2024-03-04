package q;

import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.facade.template.ILogger;
/* loaded from: classes.dex */
public class b implements ILogger {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f57092b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f57093c = false;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f57094d = false;

    /* renamed from: a  reason: collision with root package name */
    private String f57095a;

    public b(String str) {
        this.f57095a = str;
    }

    public static String a(StackTraceElement stackTraceElement) {
        StringBuilder sb2 = new StringBuilder("[");
        if (f57093c) {
            String name = Thread.currentThread().getName();
            String fileName = stackTraceElement.getFileName();
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            long id2 = Thread.currentThread().getId();
            int lineNumber = stackTraceElement.getLineNumber();
            sb2.append("ThreadId=");
            sb2.append(id2);
            sb2.append(" & ");
            sb2.append("ThreadName=");
            sb2.append(name);
            sb2.append(" & ");
            sb2.append("FileName=");
            sb2.append(fileName);
            sb2.append(" & ");
            sb2.append("ClassName=");
            sb2.append(className);
            sb2.append(" & ");
            sb2.append("MethodName=");
            sb2.append(methodName);
            sb2.append(" & ");
            sb2.append("LineNumber=");
            sb2.append(lineNumber);
        }
        sb2.append(" ] ");
        return sb2.toString();
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void debug(String str, String str2) {
        if (f57092b) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            if (TextUtils.isEmpty(str)) {
                str = getDefaultTag();
            }
            Log.d(str, str2 + a(stackTraceElement));
        }
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void error(String str, String str2) {
        if (f57092b) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            if (TextUtils.isEmpty(str)) {
                str = getDefaultTag();
            }
            Log.e(str, str2 + a(stackTraceElement));
        }
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public String getDefaultTag() {
        return this.f57095a;
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void info(String str, String str2) {
        if (f57092b) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            if (TextUtils.isEmpty(str)) {
                str = getDefaultTag();
            }
            Log.i(str, str2 + a(stackTraceElement));
        }
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public boolean isMonitorMode() {
        return f57094d;
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void monitor(String str) {
        if (f57092b && isMonitorMode()) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            Log.d(this.f57095a + "::monitor", str + a(stackTraceElement));
        }
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void showLog(boolean z10) {
        f57092b = z10;
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void showStackTrace(boolean z10) {
        f57093c = z10;
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void warning(String str, String str2) {
        if (f57092b) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            if (TextUtils.isEmpty(str)) {
                str = getDefaultTag();
            }
            Log.w(str, str2 + a(stackTraceElement));
        }
    }

    @Override // com.alibaba.android.arouter.facade.template.ILogger
    public void error(String str, String str2, Throwable th2) {
        if (f57092b) {
            if (TextUtils.isEmpty(str)) {
                str = getDefaultTag();
            }
            Log.e(str, str2, th2);
        }
    }
}
