package io.opencensus.trace.propagation;
/* loaded from: classes7.dex */
public final class SpanContextParseException extends Exception {
    private static final long serialVersionUID = 0;

    public SpanContextParseException(String str) {
        super(str);
    }

    public SpanContextParseException(String str, Throwable th2) {
        super(str, th2);
    }
}
