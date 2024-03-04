package io.grpc.netty.shaded.io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public enum HttpStatusClass {
    INFORMATIONAL(100, 200, "Informational"),
    SUCCESS(200, 300, "Success"),
    REDIRECTION(300, 400, "Redirection"),
    CLIENT_ERROR(400, 500, "Client Error"),
    SERVER_ERROR(500, 600, "Server Error"),
    UNKNOWN(0, 0, "Unknown Status") { // from class: io.grpc.netty.shaded.io.netty.handler.codec.http.HttpStatusClass.a
        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.HttpStatusClass
        public boolean contains(int i9) {
            return i9 < 100 || i9 >= 600;
        }
    };
    
    private final io.grpc.netty.shaded.io.netty.util.c defaultReasonPhrase;
    private final int max;
    private final int min;

    private static int digit(char c10) {
        return c10 - '0';
    }

    private static boolean isDigit(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    public boolean contains(int i9) {
        return i9 >= this.min && i9 < this.max;
    }

    io.grpc.netty.shaded.io.netty.util.c defaultReasonPhrase() {
        return this.defaultReasonPhrase;
    }

    HttpStatusClass(int i9, int i10, String str) {
        this.min = i9;
        this.max = i10;
        this.defaultReasonPhrase = io.grpc.netty.shaded.io.netty.util.c.g(str);
    }

    public static HttpStatusClass valueOf(int i9) {
        HttpStatusClass httpStatusClass = INFORMATIONAL;
        if (httpStatusClass.contains(i9)) {
            return httpStatusClass;
        }
        HttpStatusClass httpStatusClass2 = SUCCESS;
        if (httpStatusClass2.contains(i9)) {
            return httpStatusClass2;
        }
        HttpStatusClass httpStatusClass3 = REDIRECTION;
        if (httpStatusClass3.contains(i9)) {
            return httpStatusClass3;
        }
        HttpStatusClass httpStatusClass4 = CLIENT_ERROR;
        if (httpStatusClass4.contains(i9)) {
            return httpStatusClass4;
        }
        HttpStatusClass httpStatusClass5 = SERVER_ERROR;
        return httpStatusClass5.contains(i9) ? httpStatusClass5 : UNKNOWN;
    }

    public static HttpStatusClass valueOf(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() == 3) {
            char charAt = charSequence.charAt(0);
            return (isDigit(charAt) && isDigit(charSequence.charAt(1)) && isDigit(charSequence.charAt(2))) ? valueOf(digit(charAt) * 100) : UNKNOWN;
        }
        return UNKNOWN;
    }
}
