package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
@Deprecated
/* loaded from: classes5.dex */
public final class HttpHeaderDateFormat extends SimpleDateFormat {
    private static final ug.n<HttpHeaderDateFormat> dateFormatThreadLocal = new a();
    private static final long serialVersionUID = -925286159755905325L;
    private final SimpleDateFormat format1;
    private final SimpleDateFormat format2;

    /* loaded from: classes5.dex */
    static class a extends ug.n<HttpHeaderDateFormat> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public HttpHeaderDateFormat e() {
            return new HttpHeaderDateFormat(null);
        }
    }

    /* loaded from: classes5.dex */
    private static final class b extends SimpleDateFormat {
        private static final long serialVersionUID = -3178072504225114298L;

        b() {
            super("E, dd-MMM-yy HH:mm:ss z", Locale.ENGLISH);
            setTimeZone(TimeZone.getTimeZone("GMT"));
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends SimpleDateFormat {
        private static final long serialVersionUID = 3010674519968303714L;

        c() {
            super("E MMM d HH:mm:ss yyyy", Locale.ENGLISH);
            setTimeZone(TimeZone.getTimeZone("GMT"));
        }
    }

    /* synthetic */ HttpHeaderDateFormat(a aVar) {
        this();
    }

    public static HttpHeaderDateFormat get() {
        return dateFormatThreadLocal.b();
    }

    @Override // java.text.SimpleDateFormat, java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        Date parse = super.parse(str, parsePosition);
        if (parse == null) {
            parse = this.format1.parse(str, parsePosition);
        }
        return parse == null ? this.format2.parse(str, parsePosition) : parse;
    }

    private HttpHeaderDateFormat() {
        super("E, dd MMM yyyy HH:mm:ss z", Locale.ENGLISH);
        this.format1 = new b();
        this.format2 = new c();
        setTimeZone(TimeZone.getTimeZone("GMT"));
    }
}
