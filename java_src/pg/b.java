package pg;

import com.facebook.internal.ServerProtocol;
/* loaded from: classes5.dex */
public class b implements o<CharSequence> {

    /* renamed from: a  reason: collision with root package name */
    public static final b f56817a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.c f56818b = new io.grpc.netty.shaded.io.netty.util.c(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);

    public CharSequence b(long j10) {
        return String.valueOf(j10);
    }

    @Override // pg.o
    /* renamed from: c */
    public CharSequence a(Object obj) {
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }
}
