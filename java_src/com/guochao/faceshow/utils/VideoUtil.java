package com.guochao.faceshow.utils;

import android.content.Context;
import android.graphics.PointF;
import android.text.TextUtils;
import android.util.Log;
import com.guochao.faceshow.BaseApplication;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class VideoUtil {
    public static final String[] GPU_GL_ONE_THREAD = {"PowerVR SGX 544MP", "Adreno (TM) 306"};

    public static List<Integer> arrayToList(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty(iArr)) {
            return arrayList;
        }
        for (int i9 : iArr) {
            arrayList.add(Integer.valueOf(i9));
        }
        return arrayList;
    }

    public static void copyAssets(Context context, String str, String str2) {
        try {
            InputStream open = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
            copyFile(open, fileOutputStream);
            open.close();
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException unused) {
            Log.e("Utils", "Failed to copy asset file: " + str + " into " + str2);
        }
    }

    private static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    public static Context getContext() {
        return BaseApplication.getInstance();
    }

    public static float getFaceAngle(List<PointF> list) {
        if (isEmpty(list)) {
            return 0.0f;
        }
        PointF pointF = list.get(0);
        PointF pointF2 = list.get(18);
        float f10 = pointF2.x;
        float f11 = pointF.x;
        float f12 = f10 - f11;
        float f13 = f10 - f11;
        float f14 = pointF2.y - pointF.y;
        float sqrt = ((f12 * f13) + (f14 * 0.0f)) / (((float) Math.sqrt((f12 * f12) + 0.0f)) * ((float) Math.sqrt((f13 * f13) + (f14 * f14))));
        if (sqrt < -1.0f && sqrt > -2.0f) {
            sqrt = -1.0f;
        } else if (sqrt > 1.0f && sqrt < 2.0f) {
            sqrt = 1.0f;
        }
        float acos = (float) Math.acos(sqrt);
        return pointF.y < pointF2.y ? -acos : acos;
    }

    public static String getRealPath(String str) {
        return (!TextUtils.isEmpty(str) && str.startsWith(FileUtils.RES_PREFIX_ASSETS)) ? str.substring(9) : str;
    }

    public static boolean hasHoneycomb() {
        return true;
    }

    public static boolean hasJellyBeanMR1() {
        return true;
    }

    public static boolean hasJellyBeanMR2() {
        return true;
    }

    public static boolean hasKitKat() {
        return true;
    }

    public static boolean indexOutOfBounds(Collection collection, int i9) {
        return collection == null || i9 < 0 || i9 >= collection.size();
    }

    public static boolean isEmpty(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static synchronized String unZip(String str, String str2) {
        FileInputStream fileInputStream;
        String str3;
        synchronized (VideoUtil.class) {
            ZipInputStream zipInputStream = null;
            String str4 = null;
            r2 = null;
            zipInputStream = null;
            ZipInputStream zipInputStream2 = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    ZipInputStream zipInputStream3 = new ZipInputStream(new BufferedInputStream(fileInputStream));
                    FileOutputStream fileOutputStream = null;
                    BufferedOutputStream bufferedOutputStream = null;
                    while (true) {
                        try {
                            try {
                                ZipEntry nextEntry = zipInputStream3.getNextEntry();
                                if (nextEntry == null) {
                                    try {
                                        break;
                                    } catch (IOException unused) {
                                    }
                                } else {
                                    String name = nextEntry.getName();
                                    if (!name.contains("../")) {
                                        if (nextEntry.isDirectory()) {
                                            File file3 = new File(str2 + File.separator + name);
                                            if (!file3.exists()) {
                                                file3.mkdirs();
                                            }
                                            if (TextUtils.isEmpty(str4)) {
                                                str4 = file3.getPath();
                                            }
                                        } else {
                                            byte[] bArr = new byte[4096];
                                            try {
                                                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str2 + File.separator + name));
                                                try {
                                                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream2, 4096);
                                                    while (true) {
                                                        try {
                                                            int read = zipInputStream3.read(bArr);
                                                            if (read == -1) {
                                                                break;
                                                            }
                                                            bufferedOutputStream2.write(bArr, 0, read);
                                                        } catch (IOException unused2) {
                                                            bufferedOutputStream = bufferedOutputStream2;
                                                            fileOutputStream = fileOutputStream2;
                                                            if (bufferedOutputStream != null) {
                                                                try {
                                                                    bufferedOutputStream.close();
                                                                } catch (IOException unused3) {
                                                                }
                                                            }
                                                            if (fileOutputStream != null) {
                                                                fileOutputStream.close();
                                                            }
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            bufferedOutputStream = bufferedOutputStream2;
                                                            fileOutputStream = fileOutputStream2;
                                                            if (bufferedOutputStream != null) {
                                                                try {
                                                                    bufferedOutputStream.close();
                                                                } catch (IOException unused4) {
                                                                    throw th;
                                                                }
                                                            }
                                                            if (fileOutputStream != null) {
                                                                fileOutputStream.close();
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                    bufferedOutputStream2.flush();
                                                    try {
                                                        bufferedOutputStream2.close();
                                                        fileOutputStream2.close();
                                                    } catch (IOException unused5) {
                                                    }
                                                    bufferedOutputStream = bufferedOutputStream2;
                                                    fileOutputStream = fileOutputStream2;
                                                } catch (IOException unused6) {
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                }
                                            } catch (IOException unused7) {
                                            } catch (Throwable th4) {
                                                th = th4;
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                zipInputStream = zipInputStream3;
                                if (zipInputStream != null) {
                                    try {
                                        zipInputStream.close();
                                    } catch (IOException unused8) {
                                        throw th;
                                    }
                                }
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        } catch (IOException unused9) {
                            str3 = str4;
                            zipInputStream2 = zipInputStream3;
                            if (zipInputStream2 != null) {
                                try {
                                    zipInputStream2.close();
                                } catch (IOException unused10) {
                                    return str3;
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return str3;
                        }
                    }
                    zipInputStream3.close();
                    fileInputStream.close();
                    return str4;
                } catch (IOException unused11) {
                    str3 = null;
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (IOException unused12) {
                str3 = null;
                fileInputStream = null;
            } catch (Throwable th7) {
                th = th7;
                fileInputStream = null;
            }
        }
    }

    private static boolean isEmpty(int[] iArr) {
        return iArr == null || iArr.length == 0;
    }

    private static boolean isEmpty(float[] fArr) {
        return fArr == null || fArr.length == 0;
    }

    public static List<Float> arrayToList(float[] fArr) {
        ArrayList arrayList = new ArrayList();
        if (isEmpty(fArr)) {
            return arrayList;
        }
        for (float f10 : fArr) {
            arrayList.add(Float.valueOf(f10));
        }
        return arrayList;
    }
}
