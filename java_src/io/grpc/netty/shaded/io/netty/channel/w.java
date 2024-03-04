package io.grpc.netty.shaded.io.netty.channel;

import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public interface w extends v, Iterable<Map.Entry<String, k>> {
    w J0(String str, String str2, k kVar);

    w O0(k kVar);

    w U(k... kVarArr);

    m W(Class<? extends k> cls);

    m W0(k kVar);

    <T extends k> T i(Class<T> cls);

    w k();

    List<String> names();

    w p(Object obj);

    w q();

    k remove(String str);

    w s(Object obj);

    k t0(String str, String str2, k kVar);

    w v(Throwable th2);

    w w();

    w x0(String str, String str2, k kVar);
}
