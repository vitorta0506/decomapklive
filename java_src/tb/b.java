package tb;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public final class b {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
                Log.e("Utils", "Exception when closing the 'Closeable'.");
            }
        }
    }

    public static void b(Reader reader, Writer writer) throws IOException {
        c(reader, writer, new char[4096]);
    }

    public static void c(Reader reader, Writer writer, char[] cArr) throws IOException {
        while (true) {
            int read = reader.read(cArr);
            if (-1 == read) {
                return;
            }
            writer.write(cArr, 0, read);
        }
    }

    public static Map<String, String> d(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            hashMap.put(e(entry.getKey()), entry.getValue());
        }
        return hashMap;
    }

    public static String e(String str) {
        int i9 = 0;
        if (str.length() > 0) {
            while (str.charAt(i9) == '/') {
                i9++;
            }
        }
        return FileUtils.RES_PREFIX_STORAGE + str.substring(i9);
    }

    public static rb.b f(String str, String str2) {
        if (str != null) {
            char c10 = 65535;
            switch (str.hashCode()) {
                case 2155:
                    if (str.equals("CN")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 2177:
                    if (str.equals("DE")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 2627:
                    if (str.equals("RU")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 2644:
                    if (str.equals("SG")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return rb.b.f57402c;
                case 1:
                    return rb.b.f57403d;
                case 2:
                    return rb.b.f57404e;
                case 3:
                    return rb.b.f57405f;
            }
        }
        if (str2 != null) {
            if (str2.contains("connect-drcn")) {
                return rb.b.f57402c;
            }
            if (str2.contains("connect-dre")) {
                return rb.b.f57403d;
            }
            if (str2.contains("connect-drru")) {
                return rb.b.f57404e;
            }
            if (str2.contains("connect-dra")) {
                return rb.b.f57405f;
            }
        }
        return rb.b.f57401b;
    }

    public static String g(InputStream inputStream, String str) throws UnsupportedEncodingException, IOException {
        StringWriter stringWriter = new StringWriter();
        b(new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }
}
