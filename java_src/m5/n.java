package m5;

import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static final String f54876a = l5.k.d(n.class, "version.gax_grpc");

    /* renamed from: b  reason: collision with root package name */
    private static final String f54877b = l5.k.d(io.grpc.d.class, "version.io_grpc");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f54878c = Pattern.compile("gl-java/.+ gapic/.* gax/.+ grpc/.+");

    private n() {
    }

    public static String a() {
        return "grpc";
    }

    public static String b() {
        return f54877b;
    }
}
