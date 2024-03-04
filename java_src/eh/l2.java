package eh;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.protobuf.Duration;
import com.google.re2j.Pattern;
import com.guochao.faceshow.utils.TCConstants;
import eh.l1;
import eh.u0;
import io.grpc.Status;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class l2 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: eh.l2$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static abstract class AbstractC0399a {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.l2$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public static abstract class AbstractC0400a {
                /* JADX INFO: Access modifiers changed from: package-private */
                public static AbstractC0400a a(String str, int i9, Map<String, l1.b> map) {
                    return new c0(str, i9, ImmutableMap.copyOf((Map) map));
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract ImmutableMap<String, l1.b> b();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract String c();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract int d();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.l2$a$a$b */
            /* loaded from: classes5.dex */
            public static abstract class b {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: eh.l2$a$a$b$a  reason: collision with other inner class name */
                /* loaded from: classes5.dex */
                public enum EnumC0401a {
                    HEADER,
                    CHANNEL_ID
                }

                private static b a(EnumC0401a enumC0401a, boolean z10, String str, Pattern pattern, String str2) {
                    return new d0(enumC0401a, z10, str, pattern, str2);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public static b b(boolean z10) {
                    return a(EnumC0401a.CHANNEL_ID, z10, null, null, null);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public static b c(boolean z10, String str, Pattern pattern, String str2) {
                    com.google.common.base.o.t(str, "headerName");
                    return a(EnumC0401a.HEADER, z10, str, pattern, str2);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract String d();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract boolean e();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract Pattern f();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract String g();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract EnumC0401a h();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.l2$a$a$c */
            /* loaded from: classes5.dex */
            public static abstract class c {
                /* JADX INFO: Access modifiers changed from: package-private */
                public static c a(int i9, List<Status.Code> list, Duration duration, Duration duration2, Duration duration3) {
                    return new e0(i9, ImmutableList.copyOf((Collection) list), duration, duration2, duration3);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract Duration b();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract int c();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract Duration d();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract Duration e();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract ImmutableList<Status.Code> f();
            }

            private static AbstractC0399a b(List<b> list, Long l10, String str, List<AbstractC0400a> list2, u0.a aVar, c cVar) {
                return new b0(ImmutableList.copyOf((Collection) list), l10, str, list2 == null ? null : ImmutableList.copyOf((Collection) list2), aVar, cVar);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public static AbstractC0399a c(String str, List<b> list, Long l10, c cVar) {
                com.google.common.base.o.t(str, "cluster");
                return b(list, l10, str, null, null, cVar);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public static AbstractC0399a d(u0.a aVar, List<b> list, Long l10, c cVar) {
                com.google.common.base.o.t(aVar, "namedConfig");
                return b(list, l10, null, null, aVar, cVar);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public static AbstractC0399a e(List<AbstractC0400a> list, List<b> list2, Long l10, c cVar) {
                com.google.common.base.o.t(list, "weightedClusters");
                com.google.common.base.o.e(!list.isEmpty(), "empty cluster list");
                return b(list2, l10, null, list, null, cVar);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract String a();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract ImmutableList<b> f();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract u0.a g();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract c h();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract Long i();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract ImmutableList<AbstractC0400a> j();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static abstract class b {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: eh.l2$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public static abstract class AbstractC0402a {
                private static AbstractC0402a b(String str, String str2, Pattern pattern, boolean z10) {
                    return new g0(str, str2, pattern, z10);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public static AbstractC0402a c(String str, boolean z10) {
                    com.google.common.base.o.t(str, TCConstants.VIDEO_RECORD_VIDEPATH);
                    return b(str, null, null, z10);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public static AbstractC0402a d(String str, boolean z10) {
                    com.google.common.base.o.t(str, "prefix");
                    return b(null, str, null, z10);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public static AbstractC0402a e(Pattern pattern) {
                    com.google.common.base.o.t(pattern, "regEx");
                    return b(null, null, pattern, false);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract boolean a();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract String f();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract String g();

                /* JADX INFO: Access modifiers changed from: package-private */
                public abstract Pattern h();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public static b a(AbstractC0402a abstractC0402a, List<fh.i> list, fh.h hVar) {
                return new f0(abstractC0402a, ImmutableList.copyOf((Collection) list), hVar);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract fh.h b();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract ImmutableList<fh.i> c();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract AbstractC0402a d();
        }

        private static a a(b bVar, AbstractC0399a abstractC0399a, Map<String, l1.b> map) {
            return new a0(bVar, abstractC0399a, ImmutableMap.copyOf((Map) map));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a c(b bVar, AbstractC0399a abstractC0399a, Map<String, l1.b> map) {
            return a(bVar, abstractC0399a, map);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a d(b bVar, Map<String, l1.b> map) {
            return a(bVar, null, map);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract ImmutableMap<String, l1.b> b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract AbstractC0399a e();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract b f();
    }

    public static l2 a(String str, List<String> list, List<a> list2, Map<String, l1.b> map) {
        return new z(str, ImmutableList.copyOf((Collection) list), ImmutableList.copyOf((Collection) list2), ImmutableMap.copyOf((Map) map));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableList<String> b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableMap<String, l1.b> c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableList<a> e();
}
