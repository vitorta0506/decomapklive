package eh;

import com.google.protobuf.Any;
import com.google.protobuf.InvalidProtocolBufferException;
import eh.l1;
import io.grpc.xds.internal.rbac.engine.GrpcAuthorizationEngine$Action;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Permission;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Policy;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.Principal;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3.RBAC;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBACPerRoute;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.PathMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Int32Range;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import okhttp3.internal.http2.Header;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class y1 implements l1, l1.d {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f39410a = Logger.getLogger(y1.class.getName());

    /* renamed from: b  reason: collision with root package name */
    static final y1 f39411b = new y1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39412a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f39413b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f39414c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f39415d;

        static {
            int[] iArr = new int[PathMatcher.RuleCase.values().length];
            f39415d = iArr;
            try {
                iArr[PathMatcher.RuleCase.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39415d[PathMatcher.RuleCase.RULE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Principal.IdentifierCase.values().length];
            f39414c = iArr2;
            try {
                iArr2[Principal.IdentifierCase.OR_IDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39414c[Principal.IdentifierCase.AND_IDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39414c[Principal.IdentifierCase.ANY.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39414c[Principal.IdentifierCase.AUTHENTICATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f39414c[Principal.IdentifierCase.DIRECT_REMOTE_IP.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f39414c[Principal.IdentifierCase.REMOTE_IP.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f39414c[Principal.IdentifierCase.SOURCE_IP.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f39414c[Principal.IdentifierCase.HEADER.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f39414c[Principal.IdentifierCase.NOT_ID.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f39414c[Principal.IdentifierCase.URL_PATH.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f39414c[Principal.IdentifierCase.METADATA.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f39414c[Principal.IdentifierCase.IDENTIFIER_NOT_SET.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr3 = new int[Permission.RuleCase.values().length];
            f39413b = iArr3;
            try {
                iArr3[Permission.RuleCase.AND_RULES.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f39413b[Permission.RuleCase.OR_RULES.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f39413b[Permission.RuleCase.ANY.ordinal()] = 3;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f39413b[Permission.RuleCase.HEADER.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f39413b[Permission.RuleCase.URL_PATH.ordinal()] = 5;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f39413b[Permission.RuleCase.DESTINATION_IP.ordinal()] = 6;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f39413b[Permission.RuleCase.DESTINATION_PORT.ordinal()] = 7;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f39413b[Permission.RuleCase.DESTINATION_PORT_RANGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f39413b[Permission.RuleCase.NOT_RULE.ordinal()] = 9;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f39413b[Permission.RuleCase.METADATA.ordinal()] = 10;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f39413b[Permission.RuleCase.REQUESTED_SERVER_NAME.ordinal()] = 11;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f39413b[Permission.RuleCase.RULE_NOT_SET.ordinal()] = 12;
            } catch (NoSuchFieldError unused26) {
            }
            int[] iArr4 = new int[RBAC.Action.values().length];
            f39412a = iArr4;
            try {
                iArr4[RBAC.Action.ALLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f39412a[RBAC.Action.DENY.ordinal()] = 2;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f39412a[RBAC.Action.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f39412a[RBAC.Action.UNRECOGNIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused30) {
            }
        }
    }

    y1() {
    }

    private static hh.t b(CidrRange cidrRange) {
        return hh.t.a(fh.g.b(q(cidrRange), cidrRange.getPrefixLen().getValue()));
    }

    private static hh.u e(int i9) {
        return hh.u.a(i9);
    }

    private static hh.c0 f(CidrRange cidrRange) {
        return hh.c0.a(fh.g.b(q(cidrRange), cidrRange.getPrefixLen().getValue()));
    }

    private static hh.s g(Principal.Authenticated authenticated) {
        return hh.s.a(fh.f.b(authenticated.getPrincipalName()));
    }

    private static hh.v h(Int32Range int32Range) {
        return hh.v.a(int32Range.getStart(), int32Range.getEnd());
    }

    private static hh.r i(HeaderMatcher headerMatcher) {
        if (!headerMatcher.getName().startsWith("grpc-")) {
            if (!Header.TARGET_SCHEME_UTF8.equals(headerMatcher.getName())) {
                return hh.r.a(fh.f.a(headerMatcher));
            }
            throw new IllegalArgumentException("Invalid header matcher config: header name [:scheme] is not allowed.");
        }
        throw new IllegalArgumentException("Invalid header matcher config: [grpc-] prefixed header name is not allowed.");
    }

    private static hh.z j(PathMatcher pathMatcher) {
        if (a.f39415d[pathMatcher.getRuleCase().ordinal()] == 1) {
            return hh.z.a(fh.f.b(pathMatcher.getPath()));
        }
        throw new IllegalArgumentException("Unknown path matcher rule type: " + pathMatcher.getRuleCase());
    }

    private static hh.x k(Permission permission) {
        switch (a.f39413b[permission.getRuleCase().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                for (Permission permission2 : permission.getAndRules().getRulesList()) {
                    arrayList.add(k(permission2));
                }
                return hh.p.b(arrayList);
            case 2:
                return l(permission.getOrRules().getRulesList());
            case 3:
                return hh.o.f40787a;
            case 4:
                return i(permission.getHeader());
            case 5:
                return j(permission.getUrlPath());
            case 6:
                return b(permission.getDestinationIp());
            case 7:
                return e(permission.getDestinationPort());
            case 8:
                return h(permission.getDestinationPortRange());
            case 9:
                return hh.w.a(k(permission.getNotRule()));
            case 10:
                return hh.w.a(hh.o.f40787a);
            case 11:
                return p(permission.getRequestedServerName());
            default:
                throw new IllegalArgumentException("Unknown permission rule case: " + permission.getRuleCase());
        }
    }

    private static hh.y l(List<Permission> list) {
        ArrayList arrayList = new ArrayList();
        for (Permission permission : list) {
            arrayList.add(k(permission));
        }
        return hh.y.b(arrayList);
    }

    private static hh.x m(Principal principal) {
        switch (a.f39414c[principal.getIdentifierCase().ordinal()]) {
            case 1:
                return n(principal.getOrIds().getIdsList());
            case 2:
                ArrayList arrayList = new ArrayList();
                for (Principal principal2 : principal.getAndIds().getIdsList()) {
                    arrayList.add(m(principal2));
                }
                return hh.p.b(arrayList);
            case 3:
                return hh.o.f40787a;
            case 4:
                return g(principal.getAuthenticated());
            case 5:
                return f(principal.getDirectRemoteIp());
            case 6:
                return f(principal.getRemoteIp());
            case 7:
                return f(principal.getSourceIp());
            case 8:
                return i(principal.getHeader());
            case 9:
                return hh.w.a(m(principal.getNotId()));
            case 10:
                return j(principal.getUrlPath());
            case 11:
                return hh.w.a(hh.o.f40787a);
            default:
                throw new IllegalArgumentException("Unknown principal identifier case: " + principal.getIdentifierCase());
        }
    }

    private static hh.y n(List<Principal> list) {
        ArrayList arrayList = new ArrayList();
        for (Principal principal : list) {
            arrayList.add(m(principal));
        }
        return hh.y.b(arrayList);
    }

    static w0<x1> o(io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC rbac) {
        GrpcAuthorizationEngine$Action grpcAuthorizationEngine$Action;
        if (!rbac.hasRules()) {
            return w0.a(x1.c(null));
        }
        RBAC rules = rbac.getRules();
        int i9 = a.f39412a[rules.getAction().ordinal()];
        if (i9 == 1) {
            grpcAuthorizationEngine$Action = GrpcAuthorizationEngine$Action.ALLOW;
        } else if (i9 != 2) {
            if (i9 != 3) {
                return w0.b("Unknown rbacConfig action type: " + rules.getAction());
            }
            return w0.a(x1.c(null));
        } else {
            grpcAuthorizationEngine$Action = GrpcAuthorizationEngine$Action.DENY;
        }
        Map<String, Policy> policiesMap = rules.getPoliciesMap();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Policy> entry : policiesMap.entrySet()) {
            try {
                Policy value = entry.getValue();
                if (!value.hasCondition() && !value.hasCheckedCondition()) {
                    arrayList.add(hh.a0.a(entry.getKey(), l(value.getPermissionsList()), n(value.getPrincipalsList())));
                }
                return w0.b("Policy.condition and Policy.checked_condition must not set: " + entry.getKey());
            } catch (Exception e10) {
                return w0.b("Encountered error parsing policy: " + e10);
            }
        }
        return w0.a(x1.c(hh.q.b(arrayList, grpcAuthorizationEngine$Action)));
    }

    private static hh.b0 p(StringMatcher stringMatcher) {
        return hh.b0.a(fh.f.b(stringMatcher));
    }

    private static InetAddress q(CidrRange cidrRange) {
        try {
            return InetAddress.getByName(cidrRange.getAddressPrefix());
        } catch (UnknownHostException e10) {
            throw new IllegalArgumentException("IP address can not be found: " + e10);
        }
    }

    @Override // eh.l1
    public String[] a() {
        return new String[]{"type.googleapis.com/envoy.extensions.filters.http.rbac.v3.RBAC", "type.googleapis.com/envoy.extensions.filters.http.rbac.v3.RBACPerRoute"};
    }

    @Override // eh.l1
    public w0<x1> c(com.google.protobuf.l1 l1Var) {
        if (!(l1Var instanceof Any)) {
            return w0.b("Invalid config type: " + l1Var.getClass());
        }
        try {
            RBACPerRoute rBACPerRoute = (RBACPerRoute) ((Any) l1Var).unpack(RBACPerRoute.class);
            if (rBACPerRoute.hasRbac()) {
                return o(rBACPerRoute.getRbac());
            }
            return w0.a(x1.c(null));
        } catch (InvalidProtocolBufferException e10) {
            return w0.b("Invalid proto: " + e10);
        }
    }

    @Override // eh.l1
    public w0<x1> d(com.google.protobuf.l1 l1Var) {
        if (!(l1Var instanceof Any)) {
            return w0.b("Invalid config type: " + l1Var.getClass());
        }
        try {
            return o((io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC) ((Any) l1Var).unpack(io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.rbac.v3.RBAC.class));
        } catch (InvalidProtocolBufferException e10) {
            return w0.b("Invalid proto: " + e10);
        }
    }
}
