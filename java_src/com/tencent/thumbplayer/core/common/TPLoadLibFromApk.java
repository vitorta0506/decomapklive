package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes4.dex */
public final class TPLoadLibFromApk {
    private static final HashMap<String, WeakReference<ClassLoader>> mLoadedLibs = new HashMap<>();
    private static Context mContext = null;

    /* loaded from: classes4.dex */
    static class LibraryBrokenHandler implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler mParent;

        LibraryBrokenHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.mParent = uncaughtExceptionHandler;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
        @Override // java.lang.Thread.UncaughtExceptionHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void uncaughtException(java.lang.Thread r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                boolean r0 = r6 instanceof java.lang.UnsatisfiedLinkError
                r1 = 1
                r2 = 0
                if (r0 != 0) goto L19
                boolean r0 = r6 instanceof java.lang.NoSuchMethodError
                if (r0 == 0) goto L17
                java.lang.String r0 = r6.getMessage()
                java.lang.String r3 = ".*sig(nature)?[=:].*"
                boolean r0 = r0.matches(r3)
                if (r0 == 0) goto L17
                goto L19
            L17:
                r0 = 0
                goto L1a
            L19:
                r0 = 1
            L1a:
                if (r0 == 0) goto L24
                android.content.Context r0 = com.tencent.thumbplayer.core.common.TPLoadLibFromApk.access$000()     // Catch: java.lang.Exception -> L24
                com.tencent.thumbplayer.core.common.TPLoadLibFromApk.access$100(r0)     // Catch: java.lang.Exception -> L24
                goto L25
            L24:
                r1 = 0
            L25:
                if (r1 == 0) goto L32
                java.lang.UnsatisfiedLinkError r0 = new java.lang.UnsatisfiedLinkError
                java.lang.String r1 = "Invalid so detected and recovered."
                r0.<init>(r1)
                java.lang.Throwable r6 = r0.initCause(r6)
            L32:
                java.lang.Thread$UncaughtExceptionHandler r0 = r4.mParent
                r0.uncaughtException(r5, r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPLoadLibFromApk.LibraryBrokenHandler.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
        }
    }

    private TPLoadLibFromApk() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void extractAllLibraries(Context context) {
        if (context == null) {
            return;
        }
        List<String> generateAbiList = generateAbiList();
        File dir = context.getDir("recover_lib", 0);
        ZipFile zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
        try {
            HashSet hashSet = new HashSet();
            Pattern compile = Pattern.compile("lib/[A-Za-z0-9-_=]+/lib([A-Za-z0-9-_=]+)\\.so");
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                String name = nextElement.getName();
                if (!TextUtils.isEmpty(name) && name.contains("../")) {
                    throw new Exception("contain ../, throw err");
                }
                Matcher matcher = compile.matcher(nextElement.getName());
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    if (!hashSet.contains(group)) {
                        extractLibrary(zipFile, group, generateAbiList, new File(dir, "lib" + group + ".so"));
                        hashSet.add(group);
                    }
                }
            }
        } finally {
            zipFile.close();
        }
    }

    private static boolean extractLibrary(ZipFile zipFile, String str, List<String> list, File file) {
        if (file.isFile()) {
            return true;
        }
        Iterator<String> it = list.iterator();
        if (!it.hasNext()) {
            return false;
        }
        ZipEntry entry = zipFile.getEntry("lib/" + it.next() + "/lib" + str + ".so");
        if (entry == null) {
            return false;
        }
        String name = entry.getName();
        if (!TextUtils.isEmpty(name) && name.contains("../")) {
            return false;
        }
        InputStream inputStream = zipFile.getInputStream(entry);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[2048];
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 2048);
                if (read == -1) {
                    try {
                        file.setReadOnly();
                        return true;
                    } catch (Throwable unused) {
                        return false;
                    }
                }
                fileOutputStream.write(bArr, 0, read);
            } finally {
                inputStream.close();
                fileOutputStream.close();
            }
        }
    }

    public static String find(String str, Context context) {
        String str2 = null;
        if (context == null) {
            return null;
        }
        try {
            ClassLoader classLoader = TPLoadLibFromApk.class.getClassLoader();
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("findLibrary", String.class);
            declaredMethod.setAccessible(true);
            str2 = (String) declaredMethod.invoke(classLoader, str);
        } catch (Exception unused) {
        }
        if (str2 == null) {
            File dir = context.getDir("recover_lib", 0);
            File file = new File(dir, "lib" + str + ".so");
            return file.canRead() ? file.getAbsolutePath() : str2;
        }
        return str2;
    }

    private static List<String> generateAbiList() {
        ArrayList arrayList = new ArrayList(3);
        Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
        String str = (String) method.invoke(null, "ro.product.cpu.abi");
        if (str != null && str.length() > 0) {
            arrayList.add(str);
        }
        String str2 = (String) method.invoke(null, "ro.product.cpu.abi2");
        if (str2 != null && str2.length() > 0) {
            arrayList.add(str2);
        }
        arrayList.add("armeabi");
        return arrayList;
    }

    public static boolean load(String str, ClassLoader classLoader, Context context) {
        if (str == null || str.length() == 0 || classLoader == null) {
            return false;
        }
        mContext = context;
        HashMap<String, WeakReference<ClassLoader>> hashMap = mLoadedLibs;
        synchronized (hashMap) {
            WeakReference<ClassLoader> weakReference = hashMap.get(str);
            ClassLoader classLoader2 = weakReference != null ? weakReference.get() : null;
            if (classLoader2 != null) {
                if (classLoader2 == classLoader) {
                    TPNativeLog.printLog(2, "callerClassLoader has already load ! name=".concat(str));
                    return true;
                }
                throw new UnsatisfiedLinkError("Library '" + str + "' was loaded by a different ClassLoader.");
            } else if (context == null) {
                try {
                    TPNativeLog.printLog(2, "context is null,load by System.loadLibrary,name= ".concat(str));
                    reflectSystemLoadLibrary(str, classLoader);
                    synchronized (hashMap) {
                        hashMap.put(str, new WeakReference<>(classLoader));
                    }
                    return true;
                } catch (InvocationTargetException e10) {
                    throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed loading library: ".concat(str)).initCause(e10.getCause()));
                } catch (Exception e11) {
                    throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed loading library: ".concat(str)).initCause(e11));
                }
            } else {
                File dir = context.getDir("recover_lib", 0);
                File file = new File(dir, "lib" + str + ".so");
                UnsatisfiedLinkError loadFromRecovery = loadFromRecovery(str, classLoader, context, file);
                if (loadFromRecovery == null) {
                    return true;
                }
                return loadFromApk(str, classLoader, context, file, loadFromRecovery);
            }
        }
    }

    private static boolean loadFromApk(String str, ClassLoader classLoader, Context context, File file, UnsatisfiedLinkError unsatisfiedLinkError) {
        String str2;
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            try {
                str2 = context.getApplicationInfo().sourceDir;
                zipFile = new ZipFile(str2);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            TPNativeLog.printLog(2, "unzip apk,name= " + str + "apkPath=" + str2);
            if (!extractLibrary(zipFile, str, generateAbiList(), file)) {
                throw new RuntimeException("Can't find recover library: ".concat(String.valueOf(str)));
            }
            try {
                zipFile.close();
                try {
                    TPNativeLog.printLog(2, "load from unzip apk,name= ".concat(String.valueOf(str)));
                    reflectSystemLoad(file.getAbsolutePath(), classLoader);
                    HashMap<String, WeakReference<ClassLoader>> hashMap = mLoadedLibs;
                    synchronized (hashMap) {
                        hashMap.put(str, new WeakReference<>(classLoader));
                    }
                    return true;
                } catch (InvocationTargetException e11) {
                    if (unsatisfiedLinkError == null) {
                        throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library: ".concat(String.valueOf(str))).initCause(e11.getCause()));
                    }
                    throw unsatisfiedLinkError;
                } catch (Exception e12) {
                    if (unsatisfiedLinkError == null) {
                        throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library.").initCause(e12));
                    }
                    throw unsatisfiedLinkError;
                }
            } catch (IOException unused) {
                return false;
            }
        } catch (Exception e13) {
            e = e13;
            throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library.").initCause(e));
        } catch (Throwable th3) {
            th = th3;
            zipFile2 = zipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException unused2) {
                    return false;
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009f A[Catch: all -> 0x00a9, TRY_ENTER, TryCatch #5 {UnsatisfiedLinkError -> 0x00f0, InvocationTargetException -> 0x00c3, all -> 0x00ac, blocks: (B:24:0x008c, B:25:0x009e, B:26:0x009f, B:27:0x00a7), top: B:50:0x008c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.UnsatisfiedLinkError loadFromRecovery(java.lang.String r4, java.lang.ClassLoader r5, android.content.Context r6, java.io.File r7) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPLoadLibFromApk.loadFromRecovery(java.lang.String, java.lang.ClassLoader, android.content.Context, java.io.File):java.lang.UnsatisfiedLinkError");
    }

    private static void reflectSystemLoad(String str, ClassLoader classLoader) {
        Runtime runtime = Runtime.getRuntime();
        Method declaredMethod = runtime.getClass().getDeclaredMethod("load", String.class, ClassLoader.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(runtime, str, classLoader);
    }

    private static void reflectSystemLoadLibrary(String str, ClassLoader classLoader) {
        Runtime runtime = Runtime.getRuntime();
        Method declaredMethod = runtime.getClass().getDeclaredMethod("loadLibrary", String.class, ClassLoader.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(runtime, str, classLoader);
    }

    public static void setupBrokenLibraryHandler() {
        Thread.setDefaultUncaughtExceptionHandler(new LibraryBrokenHandler(Thread.getDefaultUncaughtExceptionHandler()));
    }
}
