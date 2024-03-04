package io.grpc;

import io.grpc.ManagedChannelProvider;
import io.grpc.b1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class ManagedChannelRegistry {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f41679c = Logger.getLogger(ManagedChannelRegistry.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static ManagedChannelRegistry f41680d;

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashSet<ManagedChannelProvider> f41681a = new LinkedHashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private List<ManagedChannelProvider> f41682b = Collections.emptyList();

    /* loaded from: classes5.dex */
    public static final class ProviderNotFoundException extends RuntimeException {
        private static final long serialVersionUID = 1;

        public ProviderNotFoundException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Comparator<ManagedChannelProvider> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(ManagedChannelProvider managedChannelProvider, ManagedChannelProvider managedChannelProvider2) {
            return managedChannelProvider.d() - managedChannelProvider2.d();
        }
    }

    /* loaded from: classes5.dex */
    private static final class b implements b1.b<ManagedChannelProvider> {
        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // io.grpc.b1.b
        /* renamed from: c */
        public int b(ManagedChannelProvider managedChannelProvider) {
            return managedChannelProvider.d();
        }

        @Override // io.grpc.b1.b
        /* renamed from: d */
        public boolean a(ManagedChannelProvider managedChannelProvider) {
            return managedChannelProvider.b();
        }
    }

    private synchronized void a(ManagedChannelProvider managedChannelProvider) {
        com.google.common.base.o.e(managedChannelProvider.b(), "isAvailable() returned false");
        this.f41681a.add(managedChannelProvider);
    }

    public static synchronized ManagedChannelRegistry b() {
        ManagedChannelRegistry managedChannelRegistry;
        synchronized (ManagedChannelRegistry.class) {
            if (f41680d == null) {
                List<ManagedChannelProvider> e10 = b1.e(ManagedChannelProvider.class, c(), ManagedChannelProvider.class.getClassLoader(), new b(null));
                f41680d = new ManagedChannelRegistry();
                for (ManagedChannelProvider managedChannelProvider : e10) {
                    Logger logger = f41679c;
                    logger.fine("Service loader found " + managedChannelProvider);
                    if (managedChannelProvider.b()) {
                        f41680d.a(managedChannelProvider);
                    }
                }
                f41680d.g();
            }
            managedChannelRegistry = f41680d;
        }
        return managedChannelRegistry;
    }

    static List<Class<?>> c() {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(xg.e.class);
        } catch (ClassNotFoundException e10) {
            f41679c.log(Level.FINE, "Unable to find OkHttpChannelProvider", (Throwable) e10);
        }
        try {
            arrayList.add(Class.forName("io.grpc.netty.NettyChannelProvider"));
        } catch (ClassNotFoundException e11) {
            f41679c.log(Level.FINE, "Unable to find NettyChannelProvider", (Throwable) e11);
        }
        return Collections.unmodifiableList(arrayList);
    }

    private synchronized void g() {
        ArrayList arrayList = new ArrayList(this.f41681a);
        Collections.sort(arrayList, Collections.reverseOrder(new a()));
        this.f41682b = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r0<?> d(String str, e eVar) {
        if (!f().isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            for (ManagedChannelProvider managedChannelProvider : f()) {
                ManagedChannelProvider.a c10 = managedChannelProvider.c(str, eVar);
                if (c10.c() != null) {
                    return c10.c();
                }
                sb2.append("; ");
                sb2.append(managedChannelProvider.getClass().getName());
                sb2.append(": ");
                sb2.append(c10.d());
            }
            throw new ProviderNotFoundException(sb2.substring(2));
        }
        throw new ProviderNotFoundException("No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ManagedChannelProvider e() {
        List<ManagedChannelProvider> f10 = f();
        if (f10.isEmpty()) {
            return null;
        }
        return f10.get(0);
    }

    synchronized List<ManagedChannelProvider> f() {
        return this.f41682b;
    }
}
