package si;

import java.util.BitSet;
import org.apache.http.util.CharArrayBuffer;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f57940a = new h();

    public static BitSet a(int... iArr) {
        BitSet bitSet = new BitSet();
        for (int i9 : iArr) {
            bitSet.set(i9);
        }
        return bitSet;
    }

    public static boolean e(char c10) {
        return c10 == ' ' || c10 == '\t' || c10 == '\r' || c10 == '\n';
    }

    public void b(CharArrayBuffer charArrayBuffer, g gVar, BitSet bitSet, StringBuilder sb2) {
        int b10 = gVar.b();
        int c10 = gVar.c();
        for (int b11 = gVar.b(); b11 < c10; b11++) {
            char charAt = charArrayBuffer.charAt(b11);
            if ((bitSet != null && bitSet.get(charAt)) || e(charAt)) {
                break;
            }
            b10++;
            sb2.append(charAt);
        }
        gVar.d(b10);
    }

    public void c(CharArrayBuffer charArrayBuffer, g gVar, StringBuilder sb2) {
        if (gVar.a()) {
            return;
        }
        int b10 = gVar.b();
        int b11 = gVar.b();
        int c10 = gVar.c();
        if (charArrayBuffer.charAt(b10) != '\"') {
            return;
        }
        int i9 = b10 + 1;
        int i10 = b11 + 1;
        boolean z10 = false;
        while (true) {
            if (i10 >= c10) {
                break;
            }
            char charAt = charArrayBuffer.charAt(i10);
            if (z10) {
                if (charAt != '\"' && charAt != '\\') {
                    sb2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                }
                sb2.append(charAt);
                z10 = false;
            } else if (charAt == '\"') {
                i9++;
                break;
            } else if (charAt == '\\') {
                z10 = true;
            } else if (charAt != '\r' && charAt != '\n') {
                sb2.append(charAt);
            }
            i10++;
            i9++;
        }
        gVar.d(i9);
    }

    public void d(CharArrayBuffer charArrayBuffer, g gVar, BitSet bitSet, StringBuilder sb2) {
        int b10 = gVar.b();
        int c10 = gVar.c();
        for (int b11 = gVar.b(); b11 < c10; b11++) {
            char charAt = charArrayBuffer.charAt(b11);
            if ((bitSet != null && bitSet.get(charAt)) || e(charAt) || charAt == '\"') {
                break;
            }
            b10++;
            sb2.append(charAt);
        }
        gVar.d(b10);
    }

    public String f(CharArrayBuffer charArrayBuffer, g gVar, BitSet bitSet) {
        StringBuilder sb2 = new StringBuilder();
        loop0: while (true) {
            boolean z10 = false;
            while (!gVar.a()) {
                char charAt = charArrayBuffer.charAt(gVar.b());
                if (bitSet != null && bitSet.get(charAt)) {
                    break loop0;
                } else if (e(charAt)) {
                    h(charArrayBuffer, gVar);
                    z10 = true;
                } else {
                    if (z10 && sb2.length() > 0) {
                        sb2.append(' ');
                    }
                    b(charArrayBuffer, gVar, bitSet, sb2);
                }
            }
            break loop0;
        }
        return sb2.toString();
    }

    public String g(CharArrayBuffer charArrayBuffer, g gVar, BitSet bitSet) {
        StringBuilder sb2 = new StringBuilder();
        loop0: while (true) {
            boolean z10 = false;
            while (!gVar.a()) {
                char charAt = charArrayBuffer.charAt(gVar.b());
                if (bitSet != null && bitSet.get(charAt)) {
                    break loop0;
                } else if (e(charAt)) {
                    h(charArrayBuffer, gVar);
                    z10 = true;
                } else if (charAt == '\"') {
                    if (z10 && sb2.length() > 0) {
                        sb2.append(' ');
                    }
                    c(charArrayBuffer, gVar, sb2);
                } else {
                    if (z10 && sb2.length() > 0) {
                        sb2.append(' ');
                    }
                    d(charArrayBuffer, gVar, bitSet, sb2);
                }
            }
            break loop0;
        }
        return sb2.toString();
    }

    public void h(CharArrayBuffer charArrayBuffer, g gVar) {
        int b10 = gVar.b();
        int c10 = gVar.c();
        for (int b11 = gVar.b(); b11 < c10 && e(charArrayBuffer.charAt(b11)); b11++) {
            b10++;
        }
        gVar.d(b10);
    }
}
