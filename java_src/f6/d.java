package f6;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.EncodingException;
import d6.f;
import java.io.IOException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class d implements e6.b<d> {

    /* renamed from: e  reason: collision with root package name */
    private static final d6.c<Object> f39623e = new d6.c() { // from class: f6.a
        @Override // d6.c
        public final void a(Object obj, Object obj2) {
            d.l(obj, (d6.d) obj2);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private static final d6.e<String> f39624f = new d6.e() { // from class: f6.c
        @Override // d6.e
        public final void a(Object obj, Object obj2) {
            ((f) obj2).a((String) obj);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private static final d6.e<Boolean> f39625g = new d6.e() { // from class: f6.b
        @Override // d6.e
        public final void a(Object obj, Object obj2) {
            d.n((Boolean) obj, (f) obj2);
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private static final b f39626h = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, d6.c<?>> f39627a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, d6.e<?>> f39628b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private d6.c<Object> f39629c = f39623e;

    /* renamed from: d  reason: collision with root package name */
    private boolean f39630d = false;

    /* loaded from: classes2.dex */
    class a implements d6.a {
        a() {
        }

        @Override // d6.a
        public void a(@NonNull Object obj, @NonNull Writer writer) throws IOException {
            e eVar = new e(writer, d.this.f39627a, d.this.f39628b, d.this.f39629c, d.this.f39630d);
            eVar.h(obj, false);
            eVar.p();
        }
    }

    /* loaded from: classes2.dex */
    private static final class b implements d6.e<Date> {

        /* renamed from: a  reason: collision with root package name */
        private static final DateFormat f39632a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f39632a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // d6.e
        /* renamed from: b */
        public void a(@NonNull Date date, @NonNull f fVar) throws IOException {
            fVar.a(f39632a.format(date));
        }
    }

    public d() {
        p(String.class, f39624f);
        p(Boolean.class, f39625g);
        p(Date.class, f39626h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(Object obj, d6.d dVar) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Boolean bool, f fVar) throws IOException {
        fVar.e(bool.booleanValue());
    }

    @NonNull
    public d6.a i() {
        return new a();
    }

    @NonNull
    public d j(@NonNull e6.a aVar) {
        aVar.a(this);
        return this;
    }

    @NonNull
    public d k(boolean z10) {
        this.f39630d = z10;
        return this;
    }

    @Override // e6.b
    @NonNull
    /* renamed from: o */
    public <T> d a(@NonNull Class<T> cls, @NonNull d6.c<? super T> cVar) {
        this.f39627a.put(cls, cVar);
        this.f39628b.remove(cls);
        return this;
    }

    @NonNull
    public <T> d p(@NonNull Class<T> cls, @NonNull d6.e<? super T> eVar) {
        this.f39628b.put(cls, eVar);
        this.f39627a.remove(cls);
        return this;
    }
}
