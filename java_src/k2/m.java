package k2;

import c2.a0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.b0;
import com.google.common.base.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class m {

    /* renamed from: d  reason: collision with root package name */
    private static final t f53465d = t.f(':');

    /* renamed from: e  reason: collision with root package name */
    private static final t f53466e = t.f('*');

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f53467a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f53468b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f53469c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f53470a;

        /* renamed from: b  reason: collision with root package name */
        public final long f53471b;

        /* renamed from: c  reason: collision with root package name */
        public final int f53472c;

        public a(int i9, long j10, int i10) {
            this.f53470a = i9;
            this.f53471b = j10;
            this.f53472c = i10;
        }
    }

    private void a(c2.m mVar, a0 a0Var) throws IOException {
        b0 b0Var = new b0(8);
        mVar.readFully(b0Var.d(), 0, 8);
        this.f53469c = b0Var.q() + 8;
        if (b0Var.n() != 1397048916) {
            a0Var.f1463a = 0L;
            return;
        }
        a0Var.f1463a = mVar.getPosition() - (this.f53469c - 12);
        this.f53468b = 2;
    }

    private static int b(String str) throws ParserException {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    c10 = 2;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2192;
            case 1:
                return 2819;
            case 2:
                return 2816;
            case 3:
                return 2820;
            case 4:
                return 2817;
            default:
                throw ParserException.createForMalformedContainer("Invalid SEF name", null);
        }
    }

    private void d(c2.m mVar, a0 a0Var) throws IOException {
        long a10 = mVar.a();
        int i9 = (this.f53469c - 12) - 8;
        b0 b0Var = new b0(i9);
        mVar.readFully(b0Var.d(), 0, i9);
        for (int i10 = 0; i10 < i9 / 12; i10++) {
            b0Var.Q(2);
            short s10 = b0Var.s();
            if (s10 != 2192 && s10 != 2816 && s10 != 2817 && s10 != 2819 && s10 != 2820) {
                b0Var.Q(8);
            } else {
                this.f53467a.add(new a(s10, (a10 - this.f53469c) - b0Var.q(), b0Var.q()));
            }
        }
        if (this.f53467a.isEmpty()) {
            a0Var.f1463a = 0L;
            return;
        }
        this.f53468b = 3;
        a0Var.f1463a = this.f53467a.get(0).f53471b;
    }

    private void e(c2.m mVar, List<Metadata.Entry> list) throws IOException {
        long position = mVar.getPosition();
        int a10 = (int) ((mVar.a() - mVar.getPosition()) - this.f53469c);
        b0 b0Var = new b0(a10);
        mVar.readFully(b0Var.d(), 0, a10);
        for (int i9 = 0; i9 < this.f53467a.size(); i9++) {
            a aVar = this.f53467a.get(i9);
            b0Var.P((int) (aVar.f53471b - position));
            b0Var.Q(4);
            int q10 = b0Var.q();
            int b10 = b(b0Var.A(q10));
            int i10 = aVar.f53472c - (q10 + 8);
            if (b10 == 2192) {
                list.add(f(b0Var, i10));
            } else if (b10 != 2816 && b10 != 2817 && b10 != 2819 && b10 != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private static SlowMotionData f(b0 b0Var, int i9) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> j10 = f53466e.j(b0Var.A(i9));
        for (int i10 = 0; i10 < j10.size(); i10++) {
            List<String> j11 = f53465d.j(j10.get(i10));
            if (j11.size() == 3) {
                try {
                    arrayList.add(new SlowMotionData.Segment(Long.parseLong(j11.get(0)), Long.parseLong(j11.get(1)), 1 << (Integer.parseInt(j11.get(2)) - 1)));
                } catch (NumberFormatException e10) {
                    throw ParserException.createForMalformedContainer(null, e10);
                }
            } else {
                throw ParserException.createForMalformedContainer(null, null);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public int c(c2.m mVar, a0 a0Var, List<Metadata.Entry> list) throws IOException {
        int i9 = this.f53468b;
        long j10 = 0;
        if (i9 == 0) {
            long a10 = mVar.a();
            if (a10 != -1 && a10 >= 8) {
                j10 = a10 - 8;
            }
            a0Var.f1463a = j10;
            this.f53468b = 1;
        } else if (i9 == 1) {
            a(mVar, a0Var);
        } else if (i9 == 2) {
            d(mVar, a0Var);
        } else if (i9 == 3) {
            e(mVar, list);
            a0Var.f1463a = 0L;
        } else {
            throw new IllegalStateException();
        }
        return 1;
    }

    public void g() {
        this.f53467a.clear();
        this.f53468b = 0;
    }
}
