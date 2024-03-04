package el;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import org.bouncycastle.util.i;
/* loaded from: classes7.dex */
public class d extends BufferedWriter {

    /* renamed from: a  reason: collision with root package name */
    private final int f39506a;

    /* renamed from: b  reason: collision with root package name */
    private char[] f39507b;

    public d(Writer writer) {
        super(writer);
        this.f39507b = new char[64];
        String d10 = i.d();
        this.f39506a = d10 != null ? d10.length() : 2;
    }

    private void a(byte[] bArr) throws IOException {
        char[] cArr;
        int i9;
        byte[] a10 = org.bouncycastle.util.encoders.a.a(bArr);
        int i10 = 0;
        while (i10 < a10.length) {
            int i11 = 0;
            while (true) {
                cArr = this.f39507b;
                if (i11 != cArr.length && (i9 = i10 + i11) < a10.length) {
                    cArr[i11] = (char) a10[i9];
                    i11++;
                }
            }
            write(cArr, 0, i11);
            newLine();
            i10 += this.f39507b.length;
        }
    }

    private void c(String str) throws IOException {
        write("-----END " + str + "-----");
        newLine();
    }

    private void d(String str) throws IOException {
        write("-----BEGIN " + str + "-----");
        newLine();
    }

    public void b(c cVar) throws IOException {
        b a10 = cVar.a();
        d(a10.d());
        if (!a10.c().isEmpty()) {
            for (a aVar : a10.c()) {
                write(aVar.b());
                write(": ");
                write(aVar.c());
                newLine();
            }
            newLine();
        }
        a(a10.b());
        c(a10.d());
    }
}
