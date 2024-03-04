package io.grpc.netty.shaded.io.netty.handler.codec;
/* loaded from: classes5.dex */
public class UnsupportedMessageTypeException extends CodecException {
    private static final long serialVersionUID = 2799598826487038726L;

    public UnsupportedMessageTypeException(Object obj, Class<?>... clsArr) {
        super(message(obj == null ? "null" : obj.getClass().getName(), clsArr));
    }

    private static String message(String str, Class<?>... clsArr) {
        Class<?> cls;
        StringBuilder sb2 = new StringBuilder(str);
        if (clsArr != null && clsArr.length > 0) {
            sb2.append(" (expected: ");
            sb2.append(clsArr[0].getName());
            for (int i9 = 1; i9 < clsArr.length && (cls = clsArr[i9]) != null; i9++) {
                sb2.append(", ");
                sb2.append(cls.getName());
            }
            sb2.append(')');
        }
        return sb2.toString();
    }

    public UnsupportedMessageTypeException() {
    }

    public UnsupportedMessageTypeException(String str, Throwable th2) {
        super(str, th2);
    }

    public UnsupportedMessageTypeException(String str) {
        super(str);
    }

    public UnsupportedMessageTypeException(Throwable th2) {
        super(th2);
    }
}
