package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class d3 {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f14927b = Logger.getLogger(d3.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Descriptors.b> f14928a;

    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Set<String> f14929a;

        /* renamed from: b  reason: collision with root package name */
        private Map<String, Descriptors.b> f14930b;

        private void b(Descriptors.FileDescriptor fileDescriptor) {
            if (this.f14929a.add(fileDescriptor.c())) {
                for (Descriptors.FileDescriptor fileDescriptor2 : fileDescriptor.j()) {
                    b(fileDescriptor2);
                }
                for (Descriptors.b bVar : fileDescriptor.m()) {
                    c(bVar);
                }
            }
        }

        private void c(Descriptors.b bVar) {
            for (Descriptors.b bVar2 : bVar.o()) {
                c(bVar2);
            }
            if (this.f14930b.containsKey(bVar.c())) {
                Logger logger = d3.f14927b;
                logger.warning("Type " + bVar.c() + " is added multiple times.");
                return;
            }
            this.f14930b.put(bVar.c(), bVar);
        }

        public b a(Descriptors.b bVar) {
            if (this.f14930b != null) {
                b(bVar.b());
                return this;
            }
            throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
        }

        public d3 d() {
            d3 d3Var = new d3(this.f14930b);
            this.f14930b = null;
            return d3Var;
        }

        private b() {
            this.f14929a = new HashSet();
            this.f14930b = new HashMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private static final d3 f14931a = new d3(Collections.emptyMap());
    }

    d3(Map<String, Descriptors.b> map) {
        this.f14928a = map;
    }

    public static d3 d() {
        return c.f14931a;
    }

    private static String e(String str) throws InvalidProtocolBufferException {
        String[] split = str.split(FileUtils.RES_PREFIX_STORAGE);
        if (split.length != 1) {
            return split[split.length - 1];
        }
        throw new InvalidProtocolBufferException("Invalid type url found: " + str);
    }

    public static b f() {
        return new b();
    }

    public Descriptors.b b(String str) {
        return this.f14928a.get(str);
    }

    public final Descriptors.b c(String str) throws InvalidProtocolBufferException {
        return b(e(str));
    }
}
