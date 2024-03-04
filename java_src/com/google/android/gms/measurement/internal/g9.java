package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.nd;
import com.google.android.gms.internal.measurement.y9;
import com.google.android.gms.internal.measurement.zzko;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public final class g9 extends t8 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g9(d9 d9Var) {
        super(d9Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y9 C(y9 y9Var, byte[] bArr) throws zzko {
        com.google.android.gms.internal.measurement.k8 a10 = com.google.android.gms.internal.measurement.k8.a();
        if (a10 != null) {
            return y9Var.R0(bArr, a10);
        }
        return y9Var.G0(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List H(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i9 = 0; i9 < length; i9++) {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10++) {
                int i11 = (i9 * 64) + i10;
                if (i11 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i11)) {
                    j10 |= 1 << i10;
                }
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean L(List list, int i9) {
        if (i9 < list.size() * 64) {
            return ((1 << (i9 % 64)) & ((Long) list.get(i9 / 64)).longValue()) != 0;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean N(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void P(com.google.android.gms.internal.measurement.k4 k4Var, String str, Object obj) {
        List H = k4Var.H();
        int i9 = 0;
        while (true) {
            if (i9 >= H.size()) {
                i9 = -1;
                break;
            } else if (str.equals(((com.google.android.gms.internal.measurement.p4) H.get(i9)).C())) {
                break;
            } else {
                i9++;
            }
        }
        com.google.android.gms.internal.measurement.o4 A = com.google.android.gms.internal.measurement.p4.A();
        A.A(str);
        if (obj instanceof Long) {
            A.z(((Long) obj).longValue());
        }
        if (i9 >= 0) {
            k4Var.A(i9, A);
        } else {
            k4Var.v(A);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static final boolean m(zzaw zzawVar, zzq zzqVar) {
        com.google.android.gms.common.internal.p.j(zzawVar);
        com.google.android.gms.common.internal.p.j(zzqVar);
        return (TextUtils.isEmpty(zzqVar.zzb) && TextUtils.isEmpty(zzqVar.zzq)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final com.google.android.gms.internal.measurement.p4 n(com.google.android.gms.internal.measurement.l4 l4Var, String str) {
        for (com.google.android.gms.internal.measurement.p4 p4Var : l4Var.E()) {
            if (p4Var.C().equals(str)) {
                return p4Var;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Object o(com.google.android.gms.internal.measurement.l4 l4Var, String str) {
        com.google.android.gms.internal.measurement.p4 n9 = n(l4Var, str);
        if (n9 != null) {
            if (n9.T()) {
                return n9.D();
            }
            if (n9.R()) {
                return Long.valueOf(n9.z());
            }
            if (n9.P()) {
                return Double.valueOf(n9.w());
            }
            if (n9.y() > 0) {
                List<com.google.android.gms.internal.measurement.p4> E = n9.E();
                ArrayList arrayList = new ArrayList();
                for (com.google.android.gms.internal.measurement.p4 p4Var : E) {
                    if (p4Var != null) {
                        Bundle bundle = new Bundle();
                        for (com.google.android.gms.internal.measurement.p4 p4Var2 : p4Var.E()) {
                            if (p4Var2.T()) {
                                bundle.putString(p4Var2.C(), p4Var2.D());
                            } else if (p4Var2.R()) {
                                bundle.putLong(p4Var2.C(), p4Var2.z());
                            } else if (p4Var2.P()) {
                                bundle.putDouble(p4Var2.C(), p4Var2.w());
                            }
                        }
                        if (!bundle.isEmpty()) {
                            arrayList.add(bundle);
                        }
                    }
                }
                return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
            }
            return null;
        }
        return null;
    }

    private final void p(StringBuilder sb2, int i9, List list) {
        if (list == null) {
            return;
        }
        int i10 = i9 + 1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.p4 p4Var = (com.google.android.gms.internal.measurement.p4) it.next();
            if (p4Var != null) {
                r(sb2, i10);
                sb2.append("param {\n");
                u(sb2, i10, "name", p4Var.S() ? this.f9432a.D().e(p4Var.C()) : null);
                u(sb2, i10, "string_value", p4Var.T() ? p4Var.D() : null);
                u(sb2, i10, "int_value", p4Var.R() ? Long.valueOf(p4Var.z()) : null);
                u(sb2, i10, "double_value", p4Var.P() ? Double.valueOf(p4Var.w()) : null);
                if (p4Var.y() > 0) {
                    p(sb2, i10, p4Var.E());
                }
                r(sb2, i10);
                sb2.append("}\n");
            }
        }
    }

    private final void q(StringBuilder sb2, int i9, com.google.android.gms.internal.measurement.d3 d3Var) {
        String str;
        if (d3Var == null) {
            return;
        }
        r(sb2, i9);
        sb2.append("filter {\n");
        if (d3Var.D()) {
            u(sb2, i9, "complement", Boolean.valueOf(d3Var.C()));
        }
        if (d3Var.F()) {
            u(sb2, i9, "param_name", this.f9432a.D().e(d3Var.A()));
        }
        if (d3Var.G()) {
            int i10 = i9 + 1;
            com.google.android.gms.internal.measurement.p3 z10 = d3Var.z();
            if (z10 != null) {
                r(sb2, i10);
                sb2.append("string_filter {\n");
                if (z10.E()) {
                    switch (z10.F()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    u(sb2, i10, "match_type", str);
                }
                if (z10.D()) {
                    u(sb2, i10, "expression", z10.z());
                }
                if (z10.C()) {
                    u(sb2, i10, "case_sensitive", Boolean.valueOf(z10.B()));
                }
                if (z10.w() > 0) {
                    r(sb2, i10 + 1);
                    sb2.append("expression_list {\n");
                    for (String str2 : z10.A()) {
                        r(sb2, i10 + 2);
                        sb2.append(str2);
                        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                    }
                    sb2.append("}\n");
                }
                r(sb2, i10);
                sb2.append("}\n");
            }
        }
        if (d3Var.E()) {
            v(sb2, i9 + 1, "number_filter", d3Var.y());
        }
        r(sb2, i9);
        sb2.append("}\n");
    }

    private static final void r(StringBuilder sb2, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            sb2.append("  ");
        }
    }

    private static final String s(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("Dynamic ");
        }
        if (z11) {
            sb2.append("Sequence ");
        }
        if (z12) {
            sb2.append("Session-Scoped ");
        }
        return sb2.toString();
    }

    private static final void t(StringBuilder sb2, int i9, String str, com.google.android.gms.internal.measurement.b5 b5Var) {
        if (b5Var == null) {
            return;
        }
        r(sb2, 3);
        sb2.append(str);
        sb2.append(" {\n");
        if (b5Var.x() != 0) {
            r(sb2, 4);
            sb2.append("results: ");
            int i10 = 0;
            for (Long l10 : b5Var.G()) {
                int i11 = i10 + 1;
                if (i10 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l10);
                i10 = i11;
            }
            sb2.append('\n');
        }
        if (b5Var.z() != 0) {
            r(sb2, 4);
            sb2.append("status: ");
            int i12 = 0;
            for (Long l11 : b5Var.I()) {
                int i13 = i12 + 1;
                if (i12 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l11);
                i12 = i13;
            }
            sb2.append('\n');
        }
        if (b5Var.w() != 0) {
            r(sb2, 4);
            sb2.append("dynamic_filter_timestamps: {");
            int i14 = 0;
            for (com.google.android.gms.internal.measurement.j4 j4Var : b5Var.F()) {
                int i15 = i14 + 1;
                if (i14 != 0) {
                    sb2.append(", ");
                }
                sb2.append(j4Var.D() ? Integer.valueOf(j4Var.w()) : null);
                sb2.append(CertificateUtil.DELIMITER);
                sb2.append(j4Var.C() ? Long.valueOf(j4Var.x()) : null);
                i14 = i15;
            }
            sb2.append("}\n");
        }
        if (b5Var.y() != 0) {
            r(sb2, 4);
            sb2.append("sequence_filter_timestamps: {");
            int i16 = 0;
            for (com.google.android.gms.internal.measurement.d5 d5Var : b5Var.H()) {
                int i17 = i16 + 1;
                if (i16 != 0) {
                    sb2.append(", ");
                }
                sb2.append(d5Var.E() ? Integer.valueOf(d5Var.x()) : null);
                sb2.append(": [");
                int i18 = 0;
                for (Long l12 : d5Var.B()) {
                    long longValue = l12.longValue();
                    int i19 = i18 + 1;
                    if (i18 != 0) {
                        sb2.append(", ");
                    }
                    sb2.append(longValue);
                    i18 = i19;
                }
                sb2.append("]");
                i16 = i17;
            }
            sb2.append("}\n");
        }
        r(sb2, 3);
        sb2.append("}\n");
    }

    private static final void u(StringBuilder sb2, int i9, String str, Object obj) {
        if (obj == null) {
            return;
        }
        r(sb2, i9 + 1);
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj);
        sb2.append('\n');
    }

    private static final void v(StringBuilder sb2, int i9, String str, com.google.android.gms.internal.measurement.i3 i3Var) {
        if (i3Var == null) {
            return;
        }
        r(sb2, i9);
        sb2.append(str);
        sb2.append(" {\n");
        if (i3Var.C()) {
            int H = i3Var.H();
            u(sb2, i9, "comparison_type", H != 1 ? H != 2 ? H != 3 ? H != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (i3Var.E()) {
            u(sb2, i9, "match_as_float", Boolean.valueOf(i3Var.B()));
        }
        if (i3Var.D()) {
            u(sb2, i9, "comparison_value", i3Var.y());
        }
        if (i3Var.G()) {
            u(sb2, i9, "min_comparison_value", i3Var.A());
        }
        if (i3Var.F()) {
            u(sb2, i9, "max_comparison_value", i3Var.z());
        }
        r(sb2, i9);
        sb2.append("}\n");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(com.google.android.gms.internal.measurement.v4 v4Var, String str) {
        if (v4Var != null) {
            for (int i9 = 0; i9 < v4Var.s0(); i9++) {
                if (str.equals(v4Var.l0(i9).B())) {
                    return i9;
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzaw A(com.google.android.gms.internal.measurement.b bVar) {
        Object obj;
        Bundle y10 = y(bVar.e(), true);
        String obj2 = (!y10.containsKey("_o") || (obj = y10.get("_o")) == null) ? PushConstants.EXTRA_APPLICATION_PENDING_INTENT : obj.toString();
        String b10 = p4.p.b(bVar.d());
        if (b10 == null) {
            b10 = bVar.d();
        }
        return new zzaw(b10, new zzau(y10), obj2, bVar.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.internal.measurement.l4 B(p pVar) {
        com.google.android.gms.internal.measurement.k4 A = com.google.android.gms.internal.measurement.l4.A();
        A.C(pVar.f9743e);
        r rVar = new r(pVar.f9744f);
        while (rVar.hasNext()) {
            String next = rVar.next();
            com.google.android.gms.internal.measurement.o4 A2 = com.google.android.gms.internal.measurement.p4.A();
            A2.A(next);
            Object R = pVar.f9744f.R(next);
            com.google.android.gms.common.internal.p.j(R);
            J(A2, R);
            A.v(A2);
        }
        return (com.google.android.gms.internal.measurement.l4) A.o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String D(com.google.android.gms.internal.measurement.u4 u4Var) {
        if (u4Var == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nbatch {\n");
        for (com.google.android.gms.internal.measurement.w4 w4Var : u4Var.z()) {
            if (w4Var != null) {
                r(sb2, 1);
                sb2.append("bundle {\n");
                if (w4Var.n1()) {
                    u(sb2, 1, "protocol_version", Integer.valueOf(w4Var.w1()));
                }
                nd.b();
                if (this.f9432a.z().B(null, z2.f10065t0) && w4Var.q1()) {
                    u(sb2, 1, "session_stitching_token", w4Var.G());
                }
                u(sb2, 1, "platform", w4Var.E());
                if (w4Var.i1()) {
                    u(sb2, 1, "gmp_version", Long.valueOf(w4Var.E1()));
                }
                if (w4Var.u1()) {
                    u(sb2, 1, "uploading_gmp_version", Long.valueOf(w4Var.J1()));
                }
                if (w4Var.g1()) {
                    u(sb2, 1, "dynamite_version", Long.valueOf(w4Var.C1()));
                }
                if (w4Var.d1()) {
                    u(sb2, 1, "config_version", Long.valueOf(w4Var.A1()));
                }
                u(sb2, 1, "gmp_app_id", w4Var.B());
                u(sb2, 1, "admob_app_id", w4Var.O1());
                u(sb2, 1, "app_id", w4Var.P1());
                u(sb2, 1, "app_version", w4Var.w());
                if (w4Var.w0()) {
                    u(sb2, 1, "app_version_major", Integer.valueOf(w4Var.W()));
                }
                u(sb2, 1, "firebase_instance_id", w4Var.A());
                if (w4Var.f1()) {
                    u(sb2, 1, "dev_cert_hash", Long.valueOf(w4Var.B1()));
                }
                u(sb2, 1, "app_store", w4Var.R1());
                if (w4Var.t1()) {
                    u(sb2, 1, "upload_timestamp_millis", Long.valueOf(w4Var.I1()));
                }
                if (w4Var.r1()) {
                    u(sb2, 1, "start_timestamp_millis", Long.valueOf(w4Var.H1()));
                }
                if (w4Var.h1()) {
                    u(sb2, 1, "end_timestamp_millis", Long.valueOf(w4Var.D1()));
                }
                if (w4Var.m1()) {
                    u(sb2, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(w4Var.G1()));
                }
                if (w4Var.l1()) {
                    u(sb2, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(w4Var.F1()));
                }
                u(sb2, 1, "app_instance_id", w4Var.Q1());
                u(sb2, 1, "resettable_device_id", w4Var.F());
                u(sb2, 1, "ds_id", w4Var.z());
                if (w4Var.k1()) {
                    u(sb2, 1, "limited_ad_tracking", Boolean.valueOf(w4Var.u0()));
                }
                u(sb2, 1, TPDownloadProxyEnum.USER_OS_VERSION, w4Var.D());
                u(sb2, 1, TPDownloadProxyEnum.USER_DEVICE_MODEL, w4Var.y());
                u(sb2, 1, "user_default_language", w4Var.H());
                if (w4Var.s1()) {
                    u(sb2, 1, "time_zone_offset_minutes", Integer.valueOf(w4Var.y1()));
                }
                if (w4Var.x0()) {
                    u(sb2, 1, "bundle_sequential_index", Integer.valueOf(w4Var.a1()));
                }
                if (w4Var.p1()) {
                    u(sb2, 1, "service_upload", Boolean.valueOf(w4Var.v0()));
                }
                u(sb2, 1, "health_monitor", w4Var.C());
                if (w4Var.o1()) {
                    u(sb2, 1, "retry_counter", Integer.valueOf(w4Var.x1()));
                }
                if (w4Var.e1()) {
                    u(sb2, 1, "consent_signals", w4Var.x());
                }
                List<com.google.android.gms.internal.measurement.f5> K = w4Var.K();
                if (K != null) {
                    for (com.google.android.gms.internal.measurement.f5 f5Var : K) {
                        if (f5Var != null) {
                            r(sb2, 2);
                            sb2.append("user_property {\n");
                            u(sb2, 2, "set_timestamp_millis", f5Var.N() ? Long.valueOf(f5Var.y()) : null);
                            u(sb2, 2, "name", this.f9432a.D().f(f5Var.B()));
                            u(sb2, 2, "string_value", f5Var.C());
                            u(sb2, 2, "int_value", f5Var.M() ? Long.valueOf(f5Var.x()) : null);
                            u(sb2, 2, "double_value", f5Var.L() ? Double.valueOf(f5Var.w()) : null);
                            r(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.h4> I = w4Var.I();
                if (I != null) {
                    for (com.google.android.gms.internal.measurement.h4 h4Var : I) {
                        if (h4Var != null) {
                            r(sb2, 2);
                            sb2.append("audience_membership {\n");
                            if (h4Var.G()) {
                                u(sb2, 2, "audience_id", Integer.valueOf(h4Var.w()));
                            }
                            if (h4Var.H()) {
                                u(sb2, 2, "new_audience", Boolean.valueOf(h4Var.F()));
                            }
                            t(sb2, 2, "current_data", h4Var.z());
                            if (h4Var.I()) {
                                t(sb2, 2, "previous_data", h4Var.A());
                            }
                            r(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.l4> J = w4Var.J();
                if (J != null) {
                    for (com.google.android.gms.internal.measurement.l4 l4Var : J) {
                        if (l4Var != null) {
                            r(sb2, 2);
                            sb2.append("event {\n");
                            u(sb2, 2, "name", this.f9432a.D().d(l4Var.D()));
                            if (l4Var.P()) {
                                u(sb2, 2, "timestamp_millis", Long.valueOf(l4Var.z()));
                            }
                            if (l4Var.O()) {
                                u(sb2, 2, "previous_timestamp_millis", Long.valueOf(l4Var.y()));
                            }
                            if (l4Var.N()) {
                                u(sb2, 2, AnimatedPasterJsonConfig.CONFIG_COUNT, Integer.valueOf(l4Var.w()));
                            }
                            if (l4Var.x() != 0) {
                                p(sb2, 2, l4Var.E());
                            }
                            r(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                r(sb2, 1);
                sb2.append("}\n");
            }
        }
        sb2.append("}\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String E(com.google.android.gms.internal.measurement.b3 b3Var) {
        if (b3Var == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nevent_filter {\n");
        if (b3Var.K()) {
            u(sb2, 0, "filter_id", Integer.valueOf(b3Var.x()));
        }
        u(sb2, 0, "event_name", this.f9432a.D().d(b3Var.C()));
        String s10 = s(b3Var.G(), b3Var.H(), b3Var.I());
        if (!s10.isEmpty()) {
            u(sb2, 0, "filter_type", s10);
        }
        if (b3Var.J()) {
            v(sb2, 1, "event_count_filter", b3Var.B());
        }
        if (b3Var.w() > 0) {
            sb2.append("  filters {\n");
            for (com.google.android.gms.internal.measurement.d3 d3Var : b3Var.D()) {
                q(sb2, 2, d3Var);
            }
        }
        r(sb2, 1);
        sb2.append("}\n}\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String F(com.google.android.gms.internal.measurement.k3 k3Var) {
        if (k3Var == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nproperty_filter {\n");
        if (k3Var.F()) {
            u(sb2, 0, "filter_id", Integer.valueOf(k3Var.w()));
        }
        u(sb2, 0, "property_name", this.f9432a.D().f(k3Var.A()));
        String s10 = s(k3Var.C(), k3Var.D(), k3Var.E());
        if (!s10.isEmpty()) {
            u(sb2, 0, "filter_type", s10);
        }
        q(sb2, 1, k3Var.x());
        sb2.append("}\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List G(List list, List list2) {
        int i9;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                this.f9432a.b().w().b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.f9432a.b().w().c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i10 = size2;
            i9 = size;
            size = i10;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        if (r4 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
        if (r7 >= r4) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
        r5.add(I((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        if ((r3 instanceof java.util.ArrayList) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005d, code lost:
        if (r7 >= r4) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005f, code lost:
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
        r5.add(I((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
        if ((r3 instanceof android.os.Bundle) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        r5.add(I((android.os.Bundle) r3, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0080, code lost:
        r0.put(r2, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map I(android.os.Bundle r11, boolean r12) {
        /*
            r10 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L84
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r11.get(r2)
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L30
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 != 0) goto L30
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto L2a
            goto L30
        L2a:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L30:
            if (r12 == 0) goto Ld
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r6 = 0
            if (r4 == 0) goto L52
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r4 = r3.length
            r7 = 0
        L3e:
            if (r7 >= r4) goto L80
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L4f
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.I(r8, r6)
            r5.add(r8)
        L4f:
            int r7 = r7 + 1
            goto L3e
        L52:
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 == 0) goto L73
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r4 = r3.size()
            r7 = 0
        L5d:
            if (r7 >= r4) goto L80
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L70
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.I(r8, r6)
            r5.add(r8)
        L70:
            int r7 = r7 + 1
            goto L5d
        L73:
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L80
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.Map r3 = r10.I(r3, r6)
            r5.add(r3)
        L80:
            r0.put(r2, r5)
            goto Ld
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g9.I(android.os.Bundle, boolean):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void J(com.google.android.gms.internal.measurement.o4 o4Var, Object obj) {
        Bundle[] bundleArr;
        com.google.android.gms.common.internal.p.j(obj);
        o4Var.x();
        o4Var.v();
        o4Var.u();
        o4Var.w();
        if (obj instanceof String) {
            o4Var.B((String) obj);
        } else if (obj instanceof Long) {
            o4Var.z(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            o4Var.y(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            ArrayList arrayList = new ArrayList();
            for (Bundle bundle : (Bundle[]) obj) {
                if (bundle != null) {
                    com.google.android.gms.internal.measurement.o4 A = com.google.android.gms.internal.measurement.p4.A();
                    for (String str : bundle.keySet()) {
                        com.google.android.gms.internal.measurement.o4 A2 = com.google.android.gms.internal.measurement.p4.A();
                        A2.A(str);
                        Object obj2 = bundle.get(str);
                        if (obj2 instanceof Long) {
                            A2.z(((Long) obj2).longValue());
                        } else if (obj2 instanceof String) {
                            A2.B((String) obj2);
                        } else if (obj2 instanceof Double) {
                            A2.y(((Double) obj2).doubleValue());
                        }
                        A.t(A2);
                    }
                    if (A.r() > 0) {
                        arrayList.add((com.google.android.gms.internal.measurement.p4) A.o());
                    }
                }
            }
            o4Var.s(arrayList);
        } else {
            this.f9432a.b().r().b("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void K(com.google.android.gms.internal.measurement.e5 e5Var, Object obj) {
        com.google.android.gms.common.internal.p.j(obj);
        e5Var.t();
        e5Var.s();
        e5Var.r();
        if (obj instanceof String) {
            e5Var.y((String) obj);
        } else if (obj instanceof Long) {
            e5Var.v(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            e5Var.u(((Double) obj).doubleValue());
        } else {
            this.f9432a.b().r().b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean M(long j10, long j11) {
        return j10 == 0 || j11 <= 0 || Math.abs(this.f9432a.c().a() - j10) > j11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] O(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            this.f9432a.b().r().b("Failed to gzip content", e10);
            throw e10;
        }
    }

    @Override // com.google.android.gms.measurement.internal.t8
    protected final boolean l() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final long x(byte[] bArr) {
        com.google.android.gms.common.internal.p.j(bArr);
        this.f9432a.N().h();
        MessageDigest t10 = k9.t();
        if (t10 == null) {
            this.f9432a.b().r().a("Failed to get MD5");
            return 0L;
        }
        return k9.q0(t10.digest(bArr));
    }

    final Bundle y(Map map, boolean z10) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z10) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i9 = 0; i9 < size; i9++) {
                    arrayList2.add(y((Map) arrayList.get(i9), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Parcelable z(byte[] bArr, Parcelable.Creator creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return (Parcelable) creator.createFromParcel(obtain);
        } catch (SafeParcelReader.ParseException unused) {
            this.f9432a.b().r().a("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }
}
