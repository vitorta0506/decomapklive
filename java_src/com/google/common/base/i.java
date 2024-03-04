package com.google.common.base;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f12361a;

    /* loaded from: classes2.dex */
    class a extends i {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f12362b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(i iVar, String str) {
            super(iVar, null);
            this.f12362b = str;
        }

        @Override // com.google.common.base.i
        CharSequence i(Object obj) {
            return obj == null ? this.f12362b : i.this.i(obj);
        }

        @Override // com.google.common.base.i
        public i j(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    /* synthetic */ i(i iVar, a aVar) {
        this(iVar);
    }

    public static i g(char c10) {
        return new i(String.valueOf(c10));
    }

    public static i h(String str) {
        return new i(str);
    }

    public <A extends Appendable> A a(A a10, Iterator<? extends Object> it) throws IOException {
        o.s(a10);
        if (it.hasNext()) {
            a10.append(i(it.next()));
            while (it.hasNext()) {
                a10.append(this.f12361a);
                a10.append(i(it.next()));
            }
        }
        return a10;
    }

    public final StringBuilder b(StringBuilder sb2, Iterable<? extends Object> iterable) {
        return c(sb2, iterable.iterator());
    }

    public final StringBuilder c(StringBuilder sb2, Iterator<? extends Object> it) {
        try {
            a(sb2, it);
            return sb2;
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public final String d(Iterable<? extends Object> iterable) {
        return e(iterable.iterator());
    }

    public final String e(Iterator<? extends Object> it) {
        return c(new StringBuilder(), it).toString();
    }

    public final String f(Object[] objArr) {
        return d(Arrays.asList(objArr));
    }

    CharSequence i(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public i j(String str) {
        o.s(str);
        return new a(this, str);
    }

    private i(String str) {
        this.f12361a = (String) o.s(str);
    }

    private i(i iVar) {
        this.f12361a = iVar.f12361a;
    }
}
