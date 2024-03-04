package c0;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f1413b;

    /* renamed from: c  reason: collision with root package name */
    private c f1414c;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1412a = new byte[256];

    /* renamed from: d  reason: collision with root package name */
    private int f1415d = 0;

    private boolean b() {
        return this.f1414c.f1400b != 0;
    }

    private int d() {
        try {
            return this.f1413b.get() & UByte.MAX_VALUE;
        } catch (Exception unused) {
            this.f1414c.f1400b = 1;
            return 0;
        }
    }

    private void e() {
        this.f1414c.f1402d.f1388a = n();
        this.f1414c.f1402d.f1389b = n();
        this.f1414c.f1402d.f1390c = n();
        this.f1414c.f1402d.f1391d = n();
        int d10 = d();
        boolean z10 = (d10 & 128) != 0;
        int pow = (int) Math.pow(2.0d, (d10 & 7) + 1);
        b bVar = this.f1414c.f1402d;
        bVar.f1392e = (d10 & 64) != 0;
        if (z10) {
            bVar.f1398k = g(pow);
        } else {
            bVar.f1398k = null;
        }
        this.f1414c.f1402d.f1397j = this.f1413b.position();
        r();
        if (b()) {
            return;
        }
        c cVar = this.f1414c;
        cVar.f1401c++;
        cVar.f1403e.add(cVar.f1402d);
    }

    private void f() {
        int d10 = d();
        this.f1415d = d10;
        if (d10 <= 0) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            try {
                i10 = this.f1415d;
                if (i9 >= i10) {
                    return;
                }
                i10 -= i9;
                this.f1413b.get(this.f1412a, i9, i10);
                i9 += i10;
            } catch (Exception e10) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    Log.d("GifHeaderParser", "Error Reading Block n: " + i9 + " count: " + i10 + " blockSize: " + this.f1415d, e10);
                }
                this.f1414c.f1400b = 1;
                return;
            }
        }
    }

    @Nullable
    private int[] g(int i9) {
        byte[] bArr = new byte[i9 * 3];
        int[] iArr = null;
        try {
            this.f1413b.get(bArr);
            iArr = new int[256];
            int i10 = 0;
            int i11 = 0;
            while (i10 < i9) {
                int i12 = i11 + 1;
                int i13 = bArr[i11] & UByte.MAX_VALUE;
                int i14 = i12 + 1;
                int i15 = bArr[i12] & UByte.MAX_VALUE;
                int i16 = i14 + 1;
                int i17 = i10 + 1;
                iArr[i10] = (i13 << 16) | ViewCompat.MEASURED_STATE_MASK | (i15 << 8) | (bArr[i14] & UByte.MAX_VALUE);
                i11 = i16;
                i10 = i17;
            }
        } catch (BufferUnderflowException e10) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e10);
            }
            this.f1414c.f1400b = 1;
        }
        return iArr;
    }

    private void h() {
        i(Integer.MAX_VALUE);
    }

    private void i(int i9) {
        boolean z10 = false;
        while (!z10 && !b() && this.f1414c.f1401c <= i9) {
            int d10 = d();
            if (d10 == 33) {
                int d11 = d();
                if (d11 == 1) {
                    q();
                } else if (d11 == 249) {
                    this.f1414c.f1402d = new b();
                    j();
                } else if (d11 == 254) {
                    q();
                } else if (d11 != 255) {
                    q();
                } else {
                    f();
                    StringBuilder sb2 = new StringBuilder();
                    for (int i10 = 0; i10 < 11; i10++) {
                        sb2.append((char) this.f1412a[i10]);
                    }
                    if (sb2.toString().equals("NETSCAPE2.0")) {
                        m();
                    } else {
                        q();
                    }
                }
            } else if (d10 == 44) {
                c cVar = this.f1414c;
                if (cVar.f1402d == null) {
                    cVar.f1402d = new b();
                }
                e();
            } else if (d10 != 59) {
                this.f1414c.f1400b = 1;
            } else {
                z10 = true;
            }
        }
    }

    private void j() {
        d();
        int d10 = d();
        b bVar = this.f1414c.f1402d;
        int i9 = (d10 & 28) >> 2;
        bVar.f1394g = i9;
        if (i9 == 0) {
            bVar.f1394g = 1;
        }
        bVar.f1393f = (d10 & 1) != 0;
        int n9 = n();
        if (n9 < 2) {
            n9 = 10;
        }
        b bVar2 = this.f1414c.f1402d;
        bVar2.f1396i = n9 * 10;
        bVar2.f1395h = d();
        d();
    }

    private void k() {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < 6; i9++) {
            sb2.append((char) d());
        }
        if (!sb2.toString().startsWith("GIF")) {
            this.f1414c.f1400b = 1;
            return;
        }
        l();
        if (!this.f1414c.f1406h || b()) {
            return;
        }
        c cVar = this.f1414c;
        cVar.f1399a = g(cVar.f1407i);
        c cVar2 = this.f1414c;
        cVar2.f1410l = cVar2.f1399a[cVar2.f1408j];
    }

    private void l() {
        this.f1414c.f1404f = n();
        this.f1414c.f1405g = n();
        int d10 = d();
        c cVar = this.f1414c;
        cVar.f1406h = (d10 & 128) != 0;
        cVar.f1407i = (int) Math.pow(2.0d, (d10 & 7) + 1);
        this.f1414c.f1408j = d();
        this.f1414c.f1409k = d();
    }

    private void m() {
        do {
            f();
            byte[] bArr = this.f1412a;
            if (bArr[0] == 1) {
                this.f1414c.f1411m = ((bArr[2] & UByte.MAX_VALUE) << 8) | (bArr[1] & UByte.MAX_VALUE);
            }
            if (this.f1415d <= 0) {
                return;
            }
        } while (!b());
    }

    private int n() {
        return this.f1413b.getShort();
    }

    private void o() {
        this.f1413b = null;
        Arrays.fill(this.f1412a, (byte) 0);
        this.f1414c = new c();
        this.f1415d = 0;
    }

    private void q() {
        int d10;
        do {
            d10 = d();
            this.f1413b.position(Math.min(this.f1413b.position() + d10, this.f1413b.limit()));
        } while (d10 > 0);
    }

    private void r() {
        d();
        q();
    }

    public void a() {
        this.f1413b = null;
        this.f1414c = null;
    }

    @NonNull
    public c c() {
        if (this.f1413b != null) {
            if (b()) {
                return this.f1414c;
            }
            k();
            if (!b()) {
                h();
                c cVar = this.f1414c;
                if (cVar.f1401c < 0) {
                    cVar.f1400b = 1;
                }
            }
            return this.f1414c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    public d p(@NonNull ByteBuffer byteBuffer) {
        o();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f1413b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f1413b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
