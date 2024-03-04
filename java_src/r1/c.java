package r1;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final c f57373c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final String f57374a;

    /* renamed from: b  reason: collision with root package name */
    private final List<LogEventDropped> f57375b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f57376a = "";

        /* renamed from: b  reason: collision with root package name */
        private List<LogEventDropped> f57377b = new ArrayList();

        a() {
        }

        public c a() {
            return new c(this.f57376a, Collections.unmodifiableList(this.f57377b));
        }

        public a b(List<LogEventDropped> list) {
            this.f57377b = list;
            return this;
        }

        public a c(String str) {
            this.f57376a = str;
            return this;
        }
    }

    c(String str, List<LogEventDropped> list) {
        this.f57374a = str;
        this.f57375b = list;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 2)
    public List<LogEventDropped> a() {
        return this.f57375b;
    }

    @Protobuf(tag = 1)
    public String b() {
        return this.f57374a;
    }
}
