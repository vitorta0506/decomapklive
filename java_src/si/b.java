package si;

import kotlin.text.Typography;
import org.apache.http.k;
import org.apache.http.util.CharArrayBuffer;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class b {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final b f57924a = new b();

    /* renamed from: b  reason: collision with root package name */
    public static final b f57925b = new b();

    protected void a(CharArrayBuffer charArrayBuffer, String str, boolean z10) {
        if (!z10) {
            for (int i9 = 0; i9 < str.length() && !z10; i9++) {
                z10 = f(str.charAt(i9));
            }
        }
        if (z10) {
            charArrayBuffer.append(Typography.quote);
        }
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (g(charAt)) {
                charArrayBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            }
            charArrayBuffer.append(charAt);
        }
        if (z10) {
            charArrayBuffer.append(Typography.quote);
        }
    }

    protected int b(k kVar) {
        if (kVar == null) {
            return 0;
        }
        int length = kVar.getName().length();
        String value = kVar.getValue();
        return value != null ? length + value.length() + 3 : length;
    }

    protected int c(k[] kVarArr) {
        if (kVarArr == null || kVarArr.length < 1) {
            return 0;
        }
        int length = (kVarArr.length - 1) * 2;
        for (k kVar : kVarArr) {
            length += b(kVar);
        }
        return length;
    }

    public CharArrayBuffer d(CharArrayBuffer charArrayBuffer, k kVar, boolean z10) {
        vi.a.g(kVar, "Name / value pair");
        int b10 = b(kVar);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(b10);
        } else {
            charArrayBuffer.ensureCapacity(b10);
        }
        charArrayBuffer.append(kVar.getName());
        String value = kVar.getValue();
        if (value != null) {
            charArrayBuffer.append('=');
            a(charArrayBuffer, value, z10);
        }
        return charArrayBuffer;
    }

    public CharArrayBuffer e(CharArrayBuffer charArrayBuffer, k[] kVarArr, boolean z10) {
        vi.a.g(kVarArr, "Header parameter array");
        int c10 = c(kVarArr);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(c10);
        } else {
            charArrayBuffer.ensureCapacity(c10);
        }
        for (int i9 = 0; i9 < kVarArr.length; i9++) {
            if (i9 > 0) {
                charArrayBuffer.append("; ");
            }
            d(charArrayBuffer, kVarArr[i9], z10);
        }
        return charArrayBuffer;
    }

    protected boolean f(char c10) {
        return " ;,:@()<>\\\"/[]?={}\t".indexOf(c10) >= 0;
    }

    protected boolean g(char c10) {
        return "\"\\".indexOf(c10) >= 0;
    }
}
