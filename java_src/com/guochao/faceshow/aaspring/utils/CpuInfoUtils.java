package com.guochao.faceshow.aaspring.utils;

import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Locale;
/* loaded from: classes3.dex */
public class CpuInfoUtils {
    private static final String CPU_ARCHITECTURE_KEY_64 = "ro.product.cpu.abilist64";
    public static final String CPU_ARCHITECTURE_TYPE_32 = "32";
    public static final String CPU_ARCHITECTURE_TYPE_64 = "64";
    private static final int EI_CLASS = 4;
    private static final int ELFCLASS32 = 1;
    private static final int ELFCLASS64 = 2;
    private static boolean LOGENABLE = true;
    private static final String PROC_CPU_INFO_PATH = "/proc/cpuinfo";
    private static final String SYSTEM_LIB_C_PATH = "/system/lib/libc.so";
    private static final String SYSTEM_LIB_C_PATH_64 = "/system/lib64/libc.so";

    public static boolean checkIfCPUx86() {
        return getSystemProperty("ro.product.cpu.abi", "arm").contains("x86");
    }

    public static String getArchType() {
        if (getSystemProperty(CPU_ARCHITECTURE_KEY_64, "").length() > 0) {
            if (LOGENABLE) {
                Log.d("etSystemProperty", "CPU arch is 64bit");
            }
            return CPU_ARCHITECTURE_TYPE_64;
        } else if (isCPUInfo64() || isLibc64()) {
            return CPU_ARCHITECTURE_TYPE_64;
        } else {
            if (LOGENABLE) {
                Log.d("getArchType()", "return cpu DEFAULT 32bit!");
                return CPU_ARCHITECTURE_TYPE_32;
            }
            return CPU_ARCHITECTURE_TYPE_32;
        }
    }

    private static String getSystemProperty(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str2 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception e10) {
            if (LOGENABLE) {
                Log.d("getSystemProperty", "key = " + str + ", error = " + e10.getMessage());
            }
        }
        if (LOGENABLE) {
            Log.d("getSystemProperty", str + " = " + str2);
        }
        return str2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x00a3 -> B:85:0x00bd). Please submit an issue!!! */
    private static boolean isCPUInfo64() {
        FileInputStream fileInputStream;
        Throwable th2;
        BufferedReader bufferedReader;
        String readLine;
        File file = new File(PROC_CPU_INFO_PATH);
        if (file.exists()) {
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 512);
                        try {
                            readLine = bufferedReader.readLine();
                        } catch (Throwable th3) {
                            th2 = th3;
                            try {
                                if (LOGENABLE) {
                                    Log.d("isCPUInfo64()", "read /proc/cpuinfo error = " + th2.toString());
                                }
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                    return false;
                                }
                                return false;
                            } catch (Throwable th4) {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                }
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                throw th4;
                            }
                        }
                    } catch (Throwable th5) {
                        th2 = th5;
                        bufferedReader = null;
                    }
                } catch (Throwable th6) {
                    fileInputStream = null;
                    th2 = th6;
                    bufferedReader = null;
                }
            } catch (Exception e13) {
                e13.printStackTrace();
            }
            if (readLine != null && readLine.length() > 0 && readLine.toLowerCase(Locale.US).contains("arch64")) {
                if (LOGENABLE) {
                    Log.d("isCPUInfo64()", "/proc/cpuinfo contains is arch64");
                }
                try {
                    bufferedReader.close();
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                try {
                    fileInputStream.close();
                } catch (Exception e15) {
                    e15.printStackTrace();
                }
                return true;
            }
            if (LOGENABLE) {
                Log.d("isCPUInfo64()", "/proc/cpuinfo is not arch64");
            }
            try {
                bufferedReader.close();
            } catch (Exception e16) {
                e16.printStackTrace();
            }
            fileInputStream.close();
            return false;
        }
        return false;
    }

    private static boolean isLibc64() {
        byte[] readELFHeadrIndentArray;
        byte[] readELFHeadrIndentArray2;
        File file = new File(SYSTEM_LIB_C_PATH);
        if (file.exists() && (readELFHeadrIndentArray2 = readELFHeadrIndentArray(file)) != null && readELFHeadrIndentArray2[4] == 2) {
            if (LOGENABLE) {
                Log.d("isLibc64()", "/system/lib/libc.so is 64bit");
            }
            return true;
        }
        File file2 = new File(SYSTEM_LIB_C_PATH_64);
        if (file2.exists() && (readELFHeadrIndentArray = readELFHeadrIndentArray(file2)) != null && readELFHeadrIndentArray[4] == 2) {
            if (LOGENABLE) {
                Log.d("isLibc64()", "/system/lib64/libc.so is 64bit");
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0041 -> B:40:0x0077). Please submit an issue!!! */
    private static byte[] readELFHeadrIndentArray(File file) {
        FileInputStream fileInputStream;
        byte[] bArr;
        int read;
        if (file != null) {
            try {
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (file.exists()) {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        bArr = new byte[16];
                        read = fileInputStream.read(bArr, 0, 16);
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            if (LOGENABLE) {
                                Log.e("readELFHeadrIndentArray", "Error:" + th.toString());
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return null;
                        } catch (Throwable th3) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            }
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream = null;
                }
                if (read == 16) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    return bArr;
                }
                if (LOGENABLE) {
                    Log.e("readELFHeadrIndentArray", "Error: e_indent lenght should be 16, but actual is " + read);
                }
                fileInputStream.close();
            }
        }
        return null;
    }
}
