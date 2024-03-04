package com.tencent.thumbplayer.core.downloadproxy.utils;

import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class TPDLProxyUtils {
    private static final String FILE_NAME = "TPDLProxyUtils";

    public static String byteArrayToString(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "byteArrayToString failed, error:" + th2.toString());
            return "";
        }
    }

    public static String losePackageCheck(int i9) {
        String str;
        String str2 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("ping -c " + i9 + " www.qq.com").getInputStream()));
            str = "";
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (readLine.contains(" packet loss")) {
                        str2 = readLine.substring(10 + readLine.indexOf("received, "), readLine.indexOf("%") + 1);
                    }
                    if (readLine.contains("avg")) {
                        int indexOf = readLine.indexOf(FileUtils.RES_PREFIX_STORAGE, 20);
                        str = readLine.substring(indexOf + 1, readLine.indexOf(".", indexOf));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    th.printStackTrace();
                    return str2 + ";" + str;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            str = "";
        }
        return str2 + ";" + str;
    }

    public static int objectToInt(Object obj, int i9) {
        if (obj == null) {
            return i9;
        }
        try {
            return ((Integer) obj).intValue();
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "object to int failed, error:" + th2.toString());
            return i9;
        }
    }

    public static long objectToLong(Object obj, long j10) {
        if (obj == null) {
            return j10;
        }
        try {
            return ((Long) obj).longValue();
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "object to long failed, error:" + th2.toString());
            return j10;
        }
    }

    public static String serialize(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
        try {
            objectOutputStream.writeObject(obj);
            String byteArrayOutputStream2 = byteArrayOutputStream.toString("ISO-8859-1");
            try {
                objectOutputStream.close();
            } catch (Throwable th4) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string  objectOutputStream close, error:" + th4.toString());
            }
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th5) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string byteArrayOutputStream close, error:" + th5.toString());
            }
            return byteArrayOutputStream2;
        } catch (Throwable th6) {
            th = th6;
            objectOutputStream2 = objectOutputStream;
            try {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize obj, error:" + th.toString());
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (Throwable th7) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string  objectOutputStream close, error:" + th7.toString());
                    }
                }
                try {
                    byteArrayOutputStream.close();
                    return "";
                } catch (Throwable th8) {
                    TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string byteArrayOutputStream close, error:" + th8.toString());
                    return "";
                }
            } catch (Throwable th9) {
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (Throwable th10) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string  objectOutputStream close, error:" + th10.toString());
                    }
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th11) {
                    TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string byteArrayOutputStream close, error:" + th11.toString());
                }
                throw th9;
            }
        }
    }

    public static Object serializeToObject(String str) {
        ObjectInputStream objectInputStream;
        ByteArrayInputStream byteArrayInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(str.getBytes("ISO-8859-1"));
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    Object readObject = objectInputStream.readObject();
                    try {
                        objectInputStream.close();
                    } catch (Throwable th2) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj objectInputStream close, error:" + th2.toString());
                    }
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th3) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj byteArrayInputStream close, error:" + th3.toString());
                    }
                    return readObject;
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj , error:" + th.toString());
                        return null;
                    } finally {
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (Throwable th5) {
                                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj objectInputStream close, error:" + th5.toString());
                            }
                        }
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (Throwable th6) {
                                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj byteArrayInputStream close, error:" + th6.toString());
                            }
                        }
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                objectInputStream = null;
            }
        } catch (Throwable th8) {
            th = th8;
            objectInputStream = null;
            byteArrayInputStream = null;
        }
    }
}
