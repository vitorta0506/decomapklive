package cn.jiguang.at;

import android.text.TextUtils;
import androidx.webkit.internal.AssetHelper;
import cn.jiguang.as.d;
import cn.jiguang.f.g;
import cn.jiguang.f.i;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2090a = cn.jiguang.s.a.b(new byte[]{65, 87, 92, 29, 117, 43, 125, 38, 37, 123, 22, 96, 109, 94, 107, 8, 75, 85, 64, 78, 126, 120, 114, 78, 78, 37, 71, 94, 107, 44, 101, 94, 93, 106, 22, 111, 79, 87, 114, 88, 20, 99, 98, 115});

    public static boolean a(String str, File file, Map<String, String> map) {
        Closeable closeable;
        DataOutputStream dataOutputStream;
        RandomAccessFile randomAccessFile;
        byte[] bArr;
        HttpURLConnection httpURLConnection;
        int responseCode;
        byte[] bArr2;
        d.c("UploadLogUtils", "url is : " + str + "\n fileName is : " + file.getName() + "\n param is : " + map.toString());
        HttpURLConnection httpURLConnection2 = null;
        try {
            StringBuilder sb2 = new StringBuilder();
            for (String str2 : map.keySet()) {
                sb2.append(String.format("--%s\r\n%s; name=\"%s\"\r\n\r\n", "werghnvt54wef654rjuhgb56trtg34tweuyrgf", "Content-Disposition: form-data", str2));
                sb2.append(String.format("%s\r\n", map.get(str2)));
            }
            String format = String.format("--%s\r\n%s; name=\"%s\"; filename=\"%s\"\nContent-Type:%s\r\n\r\n", "werghnvt54wef654rjuhgb56trtg34tweuyrgf", "Content-Disposition: form-data", ShareInternalUtility.STAGING_PARAM, g.l(file.getName()), AssetHelper.DEFAULT_MIME_TYPE);
            String format2 = String.format("\r\n--%s--\r\n", "werghnvt54wef654rjuhgb56trtg34tweuyrgf");
            int length = (int) file.length();
            byte[] bArr3 = new byte[length];
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                randomAccessFile.read(bArr3);
                byte[] bytes = sb2.toString().getBytes();
                byte[] bytes2 = format.getBytes();
                byte[] bytes3 = format2.getBytes();
                int length2 = bytes.length + bytes2.length + length + bytes3.length;
                bArr = new byte[length2];
                System.arraycopy(bytes, 0, bArr, 0, bytes.length);
                System.arraycopy(bytes2, 0, bArr, bytes.length, bytes2.length);
                System.arraycopy(bArr3, 0, bArr, bytes.length + bytes2.length, length);
                System.arraycopy(bytes3, 0, bArr, bytes.length + bytes2.length + length, bytes3.length);
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                    httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=werghnvt54wef654rjuhgb56trtg34tweuyrgf");
                    httpURLConnection.setRequestProperty("Content-Length", String.valueOf(length2));
                    httpURLConnection.setRequestProperty("User-Agent", c.a().b(f2090a));
                    dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = null;
                    httpURLConnection2 = httpURLConnection;
                    closeable = null;
                }
            } catch (Throwable th3) {
                th = th3;
                closeable = null;
                dataOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            dataOutputStream = null;
            randomAccessFile = null;
        }
        try {
            dataOutputStream.write(bArr);
            dataOutputStream.flush();
            responseCode = httpURLConnection.getResponseCode();
            d.c("UploadLogUtils", "response code is " + responseCode + ", response message is " + httpURLConnection.getResponseMessage());
            bArr2 = new byte[2048];
        } catch (Throwable th5) {
            th = th5;
            closeable = null;
            httpURLConnection2 = httpURLConnection;
            try {
                d.c("UploadLogUtils", "error message is : " + th.getMessage());
                return false;
            } finally {
                i.a(dataOutputStream);
                i.a(closeable);
                i.a(randomAccessFile);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            }
        }
        if (responseCode != 200) {
            InputStream errorStream = httpURLConnection.getErrorStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = errorStream.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            d.c("UploadLogUtils", "error response is : " + new String(byteArrayOutputStream.toByteArray()));
            i.a(dataOutputStream);
            i.a((Closeable) errorStream);
            i.a(randomAccessFile);
            httpURLConnection.disconnect();
            return false;
        }
        InputStream inputStream = httpURLConnection.getInputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        while (true) {
            int read2 = inputStream.read(bArr2);
            if (read2 == -1) {
                break;
            }
            byteArrayOutputStream2.write(bArr2, 0, read2);
        }
        String str3 = new String(byteArrayOutputStream2.toByteArray());
        d.c("UploadLogUtils", "UploadFile response is : " + str3);
        boolean isEmpty = TextUtils.isEmpty(new JSONObject(str3).optString("key"));
        i.a(dataOutputStream);
        i.a((Closeable) inputStream);
        i.a(randomAccessFile);
        httpURLConnection.disconnect();
        return !isEmpty;
    }
}
