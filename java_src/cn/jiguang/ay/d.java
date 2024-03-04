package cn.jiguang.ay;

import java.util.Random;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class d implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private static Random f2239d = new Random();

    /* renamed from: a  reason: collision with root package name */
    private int f2240a;

    /* renamed from: b  reason: collision with root package name */
    private int f2241b;

    /* renamed from: c  reason: collision with root package name */
    private int[] f2242c;

    public d() {
        this.f2241b = 256;
        d();
    }

    public d(int i9) {
        this.f2241b = 256;
        d();
        a(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar) {
        this(bVar.g());
        this.f2241b = bVar.g();
        int i9 = 0;
        while (true) {
            int[] iArr = this.f2242c;
            if (i9 >= iArr.length) {
                return;
            }
            iArr[i9] = bVar.g();
            i9++;
        }
    }

    private void d() {
        this.f2242c = new int[4];
        this.f2241b = 256;
        this.f2240a = -1;
    }

    public int a() {
        int i9;
        int i10 = this.f2240a;
        if (i10 >= 0) {
            return i10;
        }
        synchronized (this) {
            if (this.f2240a < 0) {
                this.f2240a = f2239d.nextInt(65535);
            }
            i9 = this.f2240a;
        }
        return i9;
    }

    public void a(int i9) {
        if (i9 >= 0 && i9 <= 65535) {
            this.f2240a = i9;
            return;
        }
        throw new IllegalArgumentException("DNS message ID " + i9 + " is out of range");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        cVar.c(a());
        cVar.c(this.f2241b);
        int i9 = 0;
        while (true) {
            int[] iArr = this.f2242c;
            if (i9 >= iArr.length) {
                return;
            }
            cVar.c(iArr[i9]);
            i9++;
        }
    }

    public int b() {
        return this.f2241b & 15;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i9) {
        int[] iArr = this.f2242c;
        if (iArr[i9] == 65535) {
            throw new IllegalStateException("DNS section count cannot be incremented");
        }
        iArr[i9] = iArr[i9] + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f2241b;
    }

    public int c(int i9) {
        return this.f2242c[i9];
    }

    public Object clone() {
        d dVar = new d();
        dVar.f2240a = this.f2240a;
        dVar.f2241b = this.f2241b;
        int[] iArr = this.f2242c;
        System.arraycopy(iArr, 0, dVar.f2242c, 0, iArr.length);
        return dVar;
    }

    String d(int i9) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(";; ->>HEADER<<- ");
        stringBuffer.append(", id: " + a());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_UNIX);
        stringBuffer.append("; ");
        for (int i10 = 0; i10 < 4; i10++) {
            stringBuffer.append(n.a(i10) + ": " + c(i10) + " ");
        }
        return stringBuffer.toString();
    }

    public String toString() {
        return d(b());
    }
}
