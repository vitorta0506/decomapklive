package x2;

import com.google.android.exoplayer2.k1;
/* loaded from: classes.dex */
public interface j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f59594a = new a();

    /* loaded from: classes.dex */
    class a implements j {
        a() {
        }

        @Override // x2.j
        public boolean a(k1 k1Var) {
            String str = k1Var.f6111l;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str) || "text/x-exoplayer-cues".equals(str);
        }

        @Override // x2.j
        public i b(k1 k1Var) {
            String str = k1Var.f6111l;
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1351681404:
                        if (str.equals("application/dvbsubs")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1248334819:
                        if (str.equals("application/pgs")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1026075066:
                        if (str.equals("application/x-mp4-vtt")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1004728940:
                        if (str.equals("text/vtt")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 691401887:
                        if (str.equals("application/x-quicktime-tx3g")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 822864842:
                        if (str.equals("text/x-ssa")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 930165504:
                        if (str.equals("application/x-mp4-cea-608")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1201784583:
                        if (str.equals("text/x-exoplayer-cues")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1566015601:
                        if (str.equals("application/cea-608")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1566016562:
                        if (str.equals("application/cea-708")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 1668750253:
                        if (str.equals("application/x-subrip")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case 1693976202:
                        if (str.equals("application/ttml+xml")) {
                            c10 = 11;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return new z2.a(k1Var.f6113n);
                    case 1:
                        return new a3.a();
                    case 2:
                        return new g3.a();
                    case 3:
                        return new g3.h();
                    case 4:
                        return new f3.a(k1Var.f6113n);
                    case 5:
                        return new c3.a(k1Var.f6113n);
                    case 6:
                    case '\b':
                        return new y2.a(str, k1Var.D, 16000L);
                    case 7:
                        return new f();
                    case '\t':
                        return new y2.c(k1Var.D, k1Var.f6113n);
                    case '\n':
                        return new d3.a();
                    case 11:
                        return new e3.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(k1 k1Var);

    i b(k1 k1Var);
}
