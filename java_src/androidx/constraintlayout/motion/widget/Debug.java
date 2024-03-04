package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import io.jsonwebtoken.JwtParser;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.CharBuffer;
/* loaded from: classes.dex */
public class Debug {
    public static void dumpLayoutParams(ViewGroup viewGroup, String str) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + str + "  ";
        int childCount = viewGroup.getChildCount();
        System.out.println(str + " children " + childCount);
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = viewGroup.getChildAt(i9);
            System.out.println(str2 + "     " + getName(childAt));
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals(PushUtils.CHAT_PUSH_TYPE)) {
                        System.out.println(str2 + "       " + field.getName() + " " + obj);
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static void dumpPoc(Object obj) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str = ".(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
        Class<?> cls = obj.getClass();
        System.out.println(str + "------------- " + cls.getName() + " --------------------");
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals(PushUtils.CHAT_PUSH_TYPE)) && ((!(obj2 instanceof Integer) || !obj2.toString().equals("0")) && ((!(obj2 instanceof Float) || !obj2.toString().equals("1.0")) && (!(obj2 instanceof Float) || !obj2.toString().equals("0.5")))))) {
                    System.out.println(str + "    " + field.getName() + " " + obj2);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(str + "------------- " + cls.getSimpleName() + " --------------------");
    }

    public static String getActionType(MotionEvent motionEvent) {
        Field[] fields;
        int action = motionEvent.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                    return field.getName();
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return "---";
    }

    public static String getCallFrom(int i9) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i9 + 2];
        return ".(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        return ".(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
    }

    public static String getState(MotionLayout motionLayout, int i9) {
        return getState(motionLayout, i9, -1);
    }

    public static void logStack(String str, String str2, int i9) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i9, stackTrace.length - 1);
        String str3 = " ";
        for (int i10 = 1; i10 <= min; i10++) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            str3 = str3 + " ";
            Log.v(str, str2 + str3 + (".(" + stackTrace[i10].getFileName() + CertificateUtil.DELIMITER + stackTrace[i10].getLineNumber() + ") " + stackTrace[i10].getMethodName()) + str3);
        }
    }

    public static void printStack(String str, int i9) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i9, stackTrace.length - 1);
        String str2 = " ";
        for (int i10 = 1; i10 <= min; i10++) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            str2 = str2 + " ";
            PrintStream printStream = System.out;
            printStream.println(str + str2 + (".(" + stackTrace[i10].getFileName() + CertificateUtil.DELIMITER + stackTrace[i10].getLineNumber() + ") ") + str2);
        }
    }

    public static String getState(MotionLayout motionLayout, int i9, int i10) {
        int length;
        if (i9 == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = motionLayout.getContext().getResources().getResourceEntryName(i9);
        if (i10 != -1) {
            if (resourceEntryName.length() > i10) {
                resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
            }
            if (resourceEntryName.length() <= i10 || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) {
                return resourceEntryName;
            }
            int length2 = (resourceEntryName.length() - i10) / length;
            return resourceEntryName.replaceAll(CharBuffer.allocate(length2).toString().replace((char) 0, JwtParser.SEPARATOR_CHAR) + "_", "_");
        }
        return resourceEntryName;
    }

    public static String getName(Context context, int i9) {
        if (i9 != -1) {
            try {
                return context.getResources().getResourceEntryName(i9);
            } catch (Exception unused) {
                return "?" + i9;
            }
        }
        return GrsBaseInfo.CountryCodeSource.UNKNOWN;
    }

    public static String getName(Context context, int[] iArr) {
        String str;
        try {
            String str2 = iArr.length + "[";
            int i9 = 0;
            while (i9 < iArr.length) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(i9 == 0 ? "" : " ");
                String sb3 = sb2.toString();
                try {
                    str = context.getResources().getResourceEntryName(iArr[i9]);
                } catch (Resources.NotFoundException unused) {
                    str = "? " + iArr[i9] + " ";
                }
                str2 = sb3 + str;
                i9++;
            }
            return str2 + "]";
        } catch (Exception e10) {
            Log.v("DEBUG", e10.toString());
            return GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
    }

    public static void dumpLayoutParams(ViewGroup.LayoutParams layoutParams, String str) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + str + "  ";
        System.out.println(" >>>>>>>>>>>>>>>>>>. dump " + str2 + "  " + layoutParams.getClass().getName());
        for (Field field : layoutParams.getClass().getFields()) {
            try {
                Object obj = field.get(layoutParams);
                String name = field.getName();
                if (name.contains("To") && !obj.toString().equals(PushUtils.CHAT_PUSH_TYPE)) {
                    System.out.println(str2 + "       " + name + " " + obj);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(" <<<<<<<<<<<<<<<<< dump " + str2);
    }
}
