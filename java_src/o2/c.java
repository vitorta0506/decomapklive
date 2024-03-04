package o2;

import com.google.android.exoplayer2.k1;
/* loaded from: classes.dex */
public interface c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f55489a = new a();

    /* loaded from: classes.dex */
    class a implements c {
        a() {
        }

        @Override // o2.c
        public boolean a(k1 k1Var) {
            String str = k1Var.f6111l;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // o2.c
        public b b(k1 k1Var) {
            String str = k1Var.f6111l;
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals("application/vnd.dvb.ait")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals("application/id3")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals("application/x-emsg")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals("application/x-scte35")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return new p2.a();
                    case 1:
                        return new r2.a();
                    case 2:
                        return new s2.b();
                    case 3:
                        return new q2.a();
                    case 4:
                        return new com.google.android.exoplayer2.metadata.scte35.a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(k1 k1Var);

    b b(k1 k1Var);
}
