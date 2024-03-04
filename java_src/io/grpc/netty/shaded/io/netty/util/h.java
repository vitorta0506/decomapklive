package io.grpc.netty.shaded.io.netty.util;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Map;
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f45013a;

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f45014b;

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f45015c;

    /* renamed from: d  reason: collision with root package name */
    public static final Charset f45016d;

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f45017e;

    /* renamed from: f  reason: collision with root package name */
    public static final Charset f45018f;

    /* renamed from: g  reason: collision with root package name */
    private static final Charset[] f45019g;

    static {
        Charset forName = Charset.forName("UTF-16");
        f45013a = forName;
        Charset forName2 = Charset.forName("UTF-16BE");
        f45014b = forName2;
        Charset forName3 = Charset.forName("UTF-16LE");
        f45015c = forName3;
        Charset forName4 = Charset.forName("UTF-8");
        f45016d = forName4;
        Charset forName5 = Charset.forName("ISO-8859-1");
        f45017e = forName5;
        Charset forName6 = Charset.forName("US-ASCII");
        f45018f = forName6;
        f45019g = new Charset[]{forName, forName2, forName3, forName4, forName5, forName6};
    }

    public static CharsetEncoder a(Charset charset) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(charset, "charset");
        Map<Charset, CharsetEncoder> a10 = io.grpc.netty.shaded.io.netty.util.internal.k.e().a();
        CharsetEncoder charsetEncoder = a10.get(charset);
        if (charsetEncoder != null) {
            charsetEncoder.reset().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
            return charsetEncoder;
        }
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        CharsetEncoder b10 = b(charset, codingErrorAction, codingErrorAction);
        a10.put(charset, b10);
        return b10;
    }

    public static CharsetEncoder b(Charset charset, CodingErrorAction codingErrorAction, CodingErrorAction codingErrorAction2) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(charset, "charset");
        CharsetEncoder newEncoder = charset.newEncoder();
        newEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction2);
        return newEncoder;
    }
}
