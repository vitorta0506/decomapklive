package com.huawei.hms.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.internal.security.OidcSecurityUtil;
import com.huawei.hms.support.log.HMSLog;
import com.tencent.xmagic.license.RSAUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;
import kotlin.UByte;
/* loaded from: classes4.dex */
public class ReadApkFileUtil {
    public static final String EMUI10_PK = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx4nUogUyMCmzHhaEb420yvpw9zBs+ETzE9Qm77bGxl1Iml9JEkBkNTsUWOstLgUBajNhV+BAMVBHKMEdzoQbL5kIHkTgUVM65yewd+5+BhrcB9OQ3LHp+0BN6aLKZh71T4WvsvHFhfhQpShuGWkRkSaVGLFTHxX70kpWLzeZ3RtqiEUNIufPR2SFCH6EmecJ+HdkmBOh603IblCpGxwSWse0fDI98wZBEmV88RFaiYEgyiezLlWvXzqIj6I/xuyd5nGAegjH2y3cmoDE6CubecoB1jf4KdgACXgdiQ4Oc63MfLGTor3l6RCqeUk4APAMtyhK83jc72W1sdXMd/sj2wIDAQAB";
    public static final String EMUI11_PK = "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAqq2eRTMYr2JHLtvuZzfgPrgU8oatD4Rar9fOD7E00es2VhtB3vTyaT2BvYPUPA/nbkHRPak3EZX77CfWj9tzLgSHJE8XLk9C+2ESkdrxCDA6z7I8X+cBDnA05OlCJeZFjnUbjYB8SP8M3BttdrvqtVPxTkEJhchC7UXnMLaJ3kQ3ZPjN7ubjYzO4rv7EtEpqr2bX+qjnSLIZZuUXraxqfdBuhGDIYq62dNsqiyrhX1mfvA3+43N4ZIs3BdfSYII8BNFmFxf+gyf1aoq386R2kAjHcrfOOhjAbZh+R1OAGLWPCqi3E9nB8EsZkeoTW/oIP6pJvgL3bnxq+1viT2dmZyipMgcx/3N6FJqkd67j/sPMtPlHJuq8/s0silzs13jAw1WBV6tWHFkLGpkWGs8jp50wQtndtY8cCPl2XPGmdPN72agH+zsHuKqr/HOB2TuzzaO8rKlGIDQlzZcCSHB28nnvOyBVN9xzLkbYiLnHfd6bTwzNPeqjWrTnPwKyH3BPAgMBAAE=";
    public static final String KEY_SIGNATURE = "Signature:";
    public static final String KEY_SIGNATURE2 = "Signature2:";
    public static final String KEY_SIGNATURE3 = "Signature3:";

    /* renamed from: a  reason: collision with root package name */
    public static final String f27886a = "ReadApkFileUtil";

    /* renamed from: b  reason: collision with root package name */
    public static String f27887b;

    /* renamed from: c  reason: collision with root package name */
    public static String f27888c;

    /* renamed from: d  reason: collision with root package name */
    public static String f27889d;

    /* renamed from: e  reason: collision with root package name */
    public static String f27890e;

    /* renamed from: f  reason: collision with root package name */
    public static String f27891f;

    public static byte[] a(ZipFile zipFile) {
        return a(zipFile, "META-INF/MANIFEST.MF");
    }

    public static void b(byte[] bArr) {
        Throwable th2;
        ByteArrayInputStream byteArrayInputStream;
        BufferedReader bufferedReader;
        if (bArr == null) {
            HMSLog.e(f27886a, "manifest is null！");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        BufferedReader bufferedReader2 = null;
        f27887b = null;
        f27888c = null;
        f27889d = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(byteArrayInputStream, StandardCharsets.UTF_8));
                try {
                    String a10 = a(bufferedReader);
                    while (a10 != null) {
                        if (a10.length() != 0) {
                            if (a10.startsWith("ApkHash:")) {
                                f27890e = a(a10.substring(a10.indexOf(CertificateUtil.DELIMITER) + 1));
                            }
                            if (a10.startsWith(KEY_SIGNATURE)) {
                                f27887b = a(a10.substring(a10.indexOf(CertificateUtil.DELIMITER) + 1));
                                a10 = a(bufferedReader);
                            } else if (a10.startsWith(KEY_SIGNATURE2)) {
                                f27888c = a(a10.substring(a10.indexOf(CertificateUtil.DELIMITER) + 1));
                                a10 = a(bufferedReader);
                            } else if (a10.startsWith(KEY_SIGNATURE3)) {
                                f27889d = a(a10.substring(a10.indexOf(CertificateUtil.DELIMITER) + 1));
                                a10 = a(bufferedReader);
                            } else {
                                stringBuffer.append(a10);
                                stringBuffer.append(org.light.utils.IOUtils.LINE_SEPARATOR_WINDOWS);
                            }
                        }
                        a10 = a(bufferedReader);
                    }
                    f27891f = stringBuffer.toString();
                } catch (Exception unused) {
                    bufferedReader2 = bufferedReader;
                    try {
                        HMSLog.e(f27886a, "loadApkCert Exception!");
                        bufferedReader = bufferedReader2;
                        IOUtils.closeQuietly((InputStream) byteArrayInputStream);
                        IOUtils.closeQuietly((Reader) bufferedReader);
                    } catch (Throwable th3) {
                        th2 = th3;
                        IOUtils.closeQuietly((InputStream) byteArrayInputStream);
                        IOUtils.closeQuietly((Reader) bufferedReader2);
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    bufferedReader2 = bufferedReader;
                    IOUtils.closeQuietly((InputStream) byteArrayInputStream);
                    IOUtils.closeQuietly((Reader) bufferedReader2);
                    throw th2;
                }
            } catch (Exception unused2) {
            } catch (Throwable th5) {
                th2 = th5;
            }
        } catch (Exception unused3) {
            byteArrayInputStream = null;
        } catch (Throwable th6) {
            th2 = th6;
            byteArrayInputStream = null;
        }
        IOUtils.closeQuietly((InputStream) byteArrayInputStream);
        IOUtils.closeQuietly((Reader) bufferedReader);
    }

    public static String bytesToString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i9 = 0; i9 < bArr.length; i9++) {
            int i10 = bArr[i9] & UByte.MAX_VALUE;
            int i11 = i9 * 2;
            cArr2[i11] = cArr[i10 >>> 4];
            cArr2[i11 + 1] = cArr[i10 & 15];
        }
        return String.valueOf(cArr2);
    }

    public static boolean c() {
        try {
        } catch (Exception e10) {
            String str = f27886a;
            HMSLog.i(str, "verifyMDMSignatureV3 MDM verify Exception!:" + e10.getMessage());
        }
        if (a(Base64.decode(EMUI11_PK, 0), a(f27891f, "SHA-384"), b(f27889d), "SHA384withRSA")) {
            HMSLog.i(f27886a, "verifyMDMSignatureV3 verify successful!");
            return true;
        }
        HMSLog.i(f27886a, "verifyMDMSignatureV3 verify failure!");
        return false;
    }

    public static boolean checkSignature() {
        if (f27889d != null) {
            return c();
        }
        if (f27888c != null) {
            return b();
        }
        if (f27887b != null) {
            return a();
        }
        return false;
    }

    public static String getHmsPath(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo("com.huawei.hwid", 128).sourceDir;
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.e(f27886a, "HMS is not found!");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.StringBuilder] */
    public static boolean isCertFound(String str) {
        ZipFile zipFile;
        ZipFile zipFile2 = 0;
        ZipFile zipFile3 = null;
        try {
            try {
                zipFile = new ZipFile(str);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            boolean z10 = zipFile.getEntry("META-INF/HUAWEI.CER") != null;
            if (z10) {
                b(a(zipFile, "META-INF/HUAWEI.CER"));
            }
            try {
                zipFile.close();
            } catch (IOException e11) {
                String str2 = f27886a;
                HMSLog.e(str2, "zipFile.close Exception!" + e11.getMessage());
            }
            return z10;
        } catch (Exception e12) {
            e = e12;
            zipFile3 = zipFile;
            String str3 = f27886a;
            HMSLog.e(str3, "isCertFound Exception!" + e.getMessage());
            if (zipFile3 != null) {
                try {
                    zipFile3.close();
                    return false;
                } catch (IOException e13) {
                    String str4 = f27886a;
                    zipFile2 = new StringBuilder();
                    zipFile2.append("zipFile.close Exception!");
                    zipFile2.append(e13.getMessage());
                    HMSLog.e(str4, zipFile2.toString());
                    return false;
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            zipFile2 = zipFile;
            if (zipFile2 != 0) {
                try {
                    zipFile2.close();
                } catch (IOException e14) {
                    String str5 = f27886a;
                    HMSLog.e(str5, "zipFile.close Exception!" + e14.getMessage());
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.String] */
    public static boolean verifyApkHash(String str) {
        ZipFile zipFile;
        ZipFile zipFile2 = 0;
        ZipFile zipFile3 = null;
        try {
            try {
                zipFile = new ZipFile(str);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            byte[] a10 = a(zipFile);
            ArrayList<String> a11 = a(a10);
            if (a11 != null) {
                a10 = a(a11);
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(a10);
            String bytesToString = bytesToString(messageDigest.digest());
            String str2 = f27890e;
            if (str2 != null) {
                if (str2.equals(bytesToString)) {
                    try {
                        zipFile.close();
                    } catch (Exception e11) {
                        String str3 = f27886a;
                        HMSLog.i(str3, "close stream Exception!" + e11.getMessage());
                    }
                    return true;
                }
            }
            try {
                zipFile.close();
                return false;
            } catch (Exception e12) {
                String str4 = f27886a;
                HMSLog.i(str4, "close stream Exception!" + e12.getMessage());
                return false;
            }
        } catch (Exception e13) {
            e = e13;
            zipFile3 = zipFile;
            String str5 = f27886a;
            HMSLog.i(str5, "verifyApkHash Exception!" + e.getMessage());
            if (zipFile3 != null) {
                try {
                    zipFile3.close();
                    return false;
                } catch (Exception e14) {
                    zipFile2 = f27886a;
                    HMSLog.i(zipFile2, "close stream Exception!" + e14.getMessage());
                    return false;
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            zipFile2 = zipFile;
            if (zipFile2 != 0) {
                try {
                    zipFile2.close();
                } catch (Exception e15) {
                    String str6 = f27886a;
                    HMSLog.i(str6, "close stream Exception!" + e15.getMessage());
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0099: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:45:0x0098 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.OutputStream, java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.util.zip.ZipEntry] */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.BufferedInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.io.InputStream] */
    public static byte[] a(ZipFile zipFile, String str) {
        Throwable th2;
        OutputStream outputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th3;
        Exception e10;
        Object obj;
        ?? r42;
        ?? entry = zipFile.getEntry(str);
        OutputStream outputStream2 = null;
        try {
            if (entry == 0) {
                return null;
            }
            try {
                zipFile = zipFile.getInputStream(entry);
                if (zipFile == 0) {
                    IOUtils.closeQuietly((InputStream) zipFile);
                    IOUtils.closeQuietly((InputStream) null);
                    IOUtils.closeQuietly((OutputStream) null);
                    IOUtils.closeQuietly((OutputStream) null);
                    return null;
                }
                try {
                    entry = new BufferedInputStream(zipFile);
                } catch (Exception e11) {
                    e10 = e11;
                    obj = zipFile;
                    entry = 0;
                    byteArrayOutputStream = null;
                    zipFile = obj;
                    r42 = byteArrayOutputStream;
                    HMSLog.i(f27886a, "getManifestBytes Exception!" + e10.getMessage());
                    IOUtils.closeQuietly((InputStream) zipFile);
                    IOUtils.closeQuietly((InputStream) entry);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                    IOUtils.closeQuietly((OutputStream) r42);
                    return null;
                } catch (Throwable th4) {
                    th3 = th4;
                    th2 = th3;
                    entry = 0;
                    byteArrayOutputStream = null;
                    IOUtils.closeQuietly((InputStream) zipFile);
                    IOUtils.closeQuietly((InputStream) entry);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                    IOUtils.closeQuietly(outputStream2);
                    throw th2;
                }
                try {
                    byte[] bArr = new byte[4096];
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        r42 = new BufferedOutputStream(byteArrayOutputStream);
                        try {
                            for (int read = entry.read(bArr, 0, 4096); read > 0; read = entry.read(bArr, 0, 4096)) {
                                r42.write(bArr, 0, read);
                            }
                            r42.flush();
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            IOUtils.closeQuietly((InputStream) zipFile);
                            IOUtils.closeQuietly((InputStream) entry);
                            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                            IOUtils.closeQuietly((OutputStream) r42);
                            return byteArray;
                        } catch (Exception e12) {
                            e10 = e12;
                            HMSLog.i(f27886a, "getManifestBytes Exception!" + e10.getMessage());
                            IOUtils.closeQuietly((InputStream) zipFile);
                            IOUtils.closeQuietly((InputStream) entry);
                            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                            IOUtils.closeQuietly((OutputStream) r42);
                            return null;
                        }
                    } catch (Exception e13) {
                        e10 = e13;
                        r42 = 0;
                    } catch (Throwable th5) {
                        th2 = th5;
                        IOUtils.closeQuietly((InputStream) zipFile);
                        IOUtils.closeQuietly((InputStream) entry);
                        IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                        IOUtils.closeQuietly(outputStream2);
                        throw th2;
                    }
                } catch (Exception e14) {
                    e10 = e14;
                    byteArrayOutputStream = null;
                    zipFile = zipFile;
                    entry = entry;
                    r42 = byteArrayOutputStream;
                    HMSLog.i(f27886a, "getManifestBytes Exception!" + e10.getMessage());
                    IOUtils.closeQuietly((InputStream) zipFile);
                    IOUtils.closeQuietly((InputStream) entry);
                    IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
                    IOUtils.closeQuietly((OutputStream) r42);
                    return null;
                } catch (Throwable th6) {
                    th2 = th6;
                    byteArrayOutputStream = null;
                }
            } catch (Exception e15) {
                e10 = e15;
                obj = null;
            } catch (Throwable th7) {
                th3 = th7;
                zipFile = 0;
            }
        } catch (Throwable th8) {
            th2 = th8;
            outputStream2 = outputStream;
        }
    }

    public static ArrayList<String> a(byte[] bArr) {
        if (bArr == null) {
            HMSLog.e(f27886a, "manifest is null！");
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(byteArrayInputStream, StandardCharsets.UTF_8));
            if (a(bufferedReader, arrayList)) {
                bufferedReader.close();
                byteArrayInputStream.close();
                return arrayList;
            }
            bufferedReader.close();
            byteArrayInputStream.close();
            return null;
        } catch (IOException unused) {
            HMSLog.e(f27886a, "getManifestLinesArrary IOException!");
            return null;
        }
    }

    public static boolean b() {
        try {
        } catch (Exception e10) {
            String str = f27886a;
            HMSLog.i(str, "verifyMDMSignatureV2 MDM verify Exception!:" + e10.getMessage());
        }
        if (a(Base64.decode(EMUI10_PK, 0), a(f27891f, "SHA-256"), b(f27888c), OidcSecurityUtil.SIGNATURE_ALGORITHM_SHA256)) {
            HMSLog.i(f27886a, "verifyMDMSignatureV2 verify successful!");
            return true;
        }
        HMSLog.i(f27886a, "verifyMDMSignatureV2 verify failure!");
        return false;
    }

    public static byte[] b(String str) {
        int i9;
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        int length = str.length();
        if (length % 2 == 0) {
            i9 = length / 2;
        } else {
            i9 = (length / 2) + 1;
        }
        byte[] bArr = new byte[i9];
        for (int i10 = 0; i10 < length; i10 += 2) {
            int i11 = i10 + 1;
            if (i11 < length) {
                bArr[i10 / 2] = (byte) ((Character.digit(str.charAt(i10), 16) << 4) + Character.digit(str.charAt(i11), 16));
            } else {
                bArr[i10 / 2] = (byte) (Character.digit(str.charAt(i10), 16) << 4);
            }
        }
        return bArr;
    }

    public static byte[] a(ArrayList<String> arrayList) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, StandardCharsets.UTF_8));
        try {
            try {
                Collections.sort(arrayList);
                int size = arrayList.size();
                for (int i9 = 0; i9 < size; i9++) {
                    String str = arrayList.get(i9);
                    bufferedWriter.write(str, 0, str.length());
                    bufferedWriter.write(org.light.utils.IOUtils.LINE_SEPARATOR_WINDOWS, 0, 2);
                }
                bufferedWriter.flush();
            } catch (Exception e10) {
                String str2 = f27886a;
                HMSLog.i(str2, "getManifestBytesbySorted Exception!" + e10.getMessage());
            }
            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
            IOUtils.closeQuietly((Writer) bufferedWriter);
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
            IOUtils.closeQuietly((Writer) bufferedWriter);
            throw th2;
        }
    }

    public static boolean a(BufferedReader bufferedReader, ArrayList<String> arrayList) throws IOException {
        String a10 = a(bufferedReader);
        boolean z10 = false;
        while (a10 != null) {
            if (a10.equals("Name: META-INF/HUAWEI.CER")) {
                z10 = true;
                String a11 = a(bufferedReader);
                while (true) {
                    if (a11 == null) {
                        break;
                    } else if (a11.startsWith("Name:")) {
                        a10 = a11;
                        break;
                    } else {
                        a11 = a(bufferedReader);
                    }
                }
            }
            if (a10.length() != 0) {
                arrayList.add(a10);
            }
            a10 = a(bufferedReader);
        }
        return z10;
    }

    public static String a(BufferedReader bufferedReader) throws IOException {
        int read;
        if (bufferedReader == null || (read = bufferedReader.read()) == -1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder(10);
        while (read != -1) {
            char c10 = (char) read;
            if (c10 == '\n') {
                break;
            } else if (sb2.length() < 4096) {
                sb2.append(c10);
                read = bufferedReader.read();
            } else {
                throw new IOException("cert line is too long!");
            }
        }
        String sb3 = sb2.toString();
        return (sb3.isEmpty() || !sb3.endsWith("\r")) ? sb3 : sb3.substring(0, sb3.length() - 1);
    }

    public static boolean a() {
        try {
            if (a(b("30820122300d06092a864886f70d01010105000382010f003082010a0282010100a3d269348ac59923f65e8111c337605e29a1d1bc54fa96c1445050dd14d8d63b10f9f0230bb87ef348183660bedcabfdec045e235ed96935799fcdb4af5c97717ff3b0954eaf1b723225b3a00f81cbd67ce6dc5a4c07f7741ad3bf1913a480c6e267ab1740f409edd2dc33c8b718a8e30e56d9a93f321723c1d0c9ea62115f996812ceef186954595e39a19b74245542c407f7dddb1d12e6eedcfc0bd7cd945ef7255ad0fc9e796258e0fb5e52a23013d15033a32b4071b65f3f924ae5c5761e22327b4d2ae60f4158a5eb15565ba079de29b81540f5fbb3be101a95357f367fc661d797074ff3826950029c52223e4594673a24a334cae62d63b838ba3df9770203010001"), a(f27891f, "SHA-256"), b(f27887b), OidcSecurityUtil.SIGNATURE_ALGORITHM_SHA256)) {
                HMSLog.i(f27886a, "verifyMDMSignatureV1 verify successful!");
                return true;
            }
            HMSLog.i(f27886a, "verifyMDMSignatureV1 verify failure!");
            return false;
        } catch (Exception e10) {
            String str = f27886a;
            HMSLog.i(str, "verifyMDMSignatureV1 MDM verify Exception!:" + e10.getMessage());
            return false;
        }
    }

    public static boolean a(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) throws Exception {
        Signature signature = Signature.getInstance(str);
        signature.initVerify(KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(bArr)));
        signature.update(bArr2);
        return signature.verify(bArr3);
    }

    public static byte[] a(String str, String str2) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        messageDigest.update(str.getBytes(StandardCharsets.UTF_8.name()));
        return messageDigest.digest();
    }

    public static String a(String str) {
        return str != null ? Pattern.compile("\\s*|\t|\r|\n").matcher(str).replaceAll("") : "";
    }
}
