package pg;

import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.util.BitSet;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: m  reason: collision with root package name */
    private static final BitSet f56829m;

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f56830n;

    /* renamed from: o  reason: collision with root package name */
    private static final String[] f56831o;

    /* renamed from: p  reason: collision with root package name */
    private static final ug.n<d> f56832p;

    /* renamed from: a  reason: collision with root package name */
    private final GregorianCalendar f56833a;

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f56834b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f56835c;

    /* renamed from: d  reason: collision with root package name */
    private int f56836d;

    /* renamed from: e  reason: collision with root package name */
    private int f56837e;

    /* renamed from: f  reason: collision with root package name */
    private int f56838f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f56839g;

    /* renamed from: h  reason: collision with root package name */
    private int f56840h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f56841i;

    /* renamed from: j  reason: collision with root package name */
    private int f56842j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f56843k;

    /* renamed from: l  reason: collision with root package name */
    private int f56844l;

    /* loaded from: classes5.dex */
    static class a extends ug.n<d> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public d e() {
            return new d(null);
        }
    }

    static {
        BitSet bitSet = new BitSet();
        f56829m = bitSet;
        bitSet.set(9);
        for (char c10 = ' '; c10 <= '/'; c10 = (char) (c10 + 1)) {
            f56829m.set(c10);
        }
        for (char c11 = ';'; c11 <= '@'; c11 = (char) (c11 + 1)) {
            f56829m.set(c11);
        }
        for (char c12 = '['; c12 <= '`'; c12 = (char) (c12 + 1)) {
            f56829m.set(c12);
        }
        for (char c13 = '{'; c13 <= '~'; c13 = (char) (c13 + 1)) {
            f56829m.set(c13);
        }
        f56830n = new String[]{"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        f56831o = new String[]{"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        f56832p = new a();
    }

    /* synthetic */ d(a aVar) {
        this();
    }

    private StringBuilder a(Date date, StringBuilder sb2) {
        this.f56833a.setTime(date);
        sb2.append(f56830n[this.f56833a.get(7) - 1]);
        sb2.append(", ");
        b(this.f56833a.get(5), sb2).append(' ');
        sb2.append(f56831o[this.f56833a.get(2)]);
        sb2.append(' ');
        sb2.append(this.f56833a.get(1));
        sb2.append(' ');
        b(this.f56833a.get(11), sb2).append(':');
        b(this.f56833a.get(12), sb2).append(':');
        StringBuilder b10 = b(this.f56833a.get(13), sb2);
        b10.append(" GMT");
        return b10;
    }

    private static StringBuilder b(int i9, StringBuilder sb2) {
        if (i9 < 10) {
            sb2.append('0');
        }
        sb2.append(i9);
        return sb2;
    }

    public static String c(Date date) {
        return e().d((Date) s.h(date, "date"));
    }

    private String d(Date date) {
        a(date, this.f56834b);
        return this.f56834b.toString();
    }

    private static d e() {
        d b10 = f56832p.b();
        b10.f();
        return b10;
    }

    public void f() {
        this.f56835c = false;
        this.f56836d = -1;
        this.f56837e = -1;
        this.f56838f = -1;
        this.f56839g = false;
        this.f56840h = -1;
        this.f56841i = false;
        this.f56842j = -1;
        this.f56843k = false;
        this.f56844l = -1;
        this.f56833a.clear();
        this.f56834b.setLength(0);
    }

    private d() {
        this.f56833a = new GregorianCalendar(TimeZone.getTimeZone("UTC"));
        this.f56834b = new StringBuilder(29);
        f();
    }
}
