package com.tencent.thumbplayer.adapter;

import androidx.annotation.NonNull;
import com.tencent.thumbplayer.api.TPPlayerState;
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private TPPlayerState f33727a;

    public i(@NonNull TPPlayerState tPPlayerState) {
        this.f33727a = tPPlayerState;
    }

    private static boolean a(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(2) || tPPlayerState.is(8) || tPPlayerState.is(9);
    }

    private static boolean b(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1);
    }

    private static boolean c(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7) || tPPlayerState.is(8) || tPPlayerState.is(9);
    }

    private static boolean d(TPPlayerState tPPlayerState) {
        return true;
    }

    private static boolean e(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean f(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean g(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean h(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7) || tPPlayerState.is(10);
    }

    private static boolean i(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean j(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean k(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean l(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean m(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean n(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean o(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7);
    }

    private static boolean p(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(1) || tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(7) || tPPlayerState.is(10);
    }

    private static boolean q(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3);
    }

    private static boolean r(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean s(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean t(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(2) || tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean u(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean v(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6);
    }

    private static boolean w(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(3) || tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7) || tPPlayerState.is(8);
    }

    private static boolean x(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    private static boolean y(TPPlayerState tPPlayerState) {
        return tPPlayerState.is(4) || tPPlayerState.is(5) || tPPlayerState.is(8) || tPPlayerState.is(9) || tPPlayerState.is(6) || tPPlayerState.is(7);
    }

    public final boolean a(int i9) {
        if (i9 == 1) {
            return a(this.f33727a);
        }
        if (i9 == 2) {
            return b(this.f33727a);
        }
        if (i9 == 3) {
            return c(this.f33727a);
        }
        if (i9 == 4) {
            return d(this.f33727a);
        }
        if (i9 == 5) {
            return e(this.f33727a);
        }
        if (i9 == 6) {
            return f(this.f33727a);
        }
        if (i9 == 7) {
            return g(this.f33727a);
        }
        if (i9 == 8) {
            return h(this.f33727a);
        }
        if (i9 == 9) {
            return i(this.f33727a);
        }
        if (i9 == 11) {
            return j(this.f33727a);
        }
        if (i9 == 12) {
            return k(this.f33727a);
        }
        if (i9 == 13) {
            return m(this.f33727a);
        }
        if (i9 == 14) {
            return n(this.f33727a);
        }
        if (i9 == 15) {
            return o(this.f33727a);
        }
        if (i9 == 16) {
            return p(this.f33727a);
        }
        if (i9 == 17) {
            return x(this.f33727a);
        }
        if (i9 == 18) {
            return y(this.f33727a);
        }
        if (i9 == 19) {
            return l(this.f33727a);
        }
        return false;
    }

    public final boolean b(int i9) {
        if (i9 == 1) {
            return q(this.f33727a);
        }
        if (i9 == 2) {
            return r(this.f33727a);
        }
        if (i9 == 3) {
            return s(this.f33727a);
        }
        if (i9 == 4) {
            return t(this.f33727a);
        }
        if (i9 == 5) {
            return u(this.f33727a);
        }
        if (i9 == 6) {
            return v(this.f33727a);
        }
        if (i9 == 7) {
            return w(this.f33727a);
        }
        return false;
    }
}
