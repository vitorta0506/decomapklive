package com.google.protobuf;

import com.google.protobuf.f1;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface Writer {

    /* loaded from: classes3.dex */
    public enum FieldOrder {
        ASCENDING,
        DESCENDING
    }

    void A(int i9, List<?> list) throws IOException;

    void B(int i9, Object obj) throws IOException;

    void C(int i9, long j10) throws IOException;

    void D(int i9, boolean z10) throws IOException;

    void E(int i9, int i10) throws IOException;

    @Deprecated
    void F(int i9) throws IOException;

    void G(int i9, List<Long> list, boolean z10) throws IOException;

    void H(int i9, List<Integer> list, boolean z10) throws IOException;

    void I(int i9, List<Boolean> list, boolean z10) throws IOException;

    @Deprecated
    void J(int i9, Object obj) throws IOException;

    <K, V> void K(int i9, f1.b<K, V> bVar, Map<K, V> map) throws IOException;

    void L(int i9, float f10) throws IOException;

    @Deprecated
    void M(int i9) throws IOException;

    void N(int i9, List<Integer> list, boolean z10) throws IOException;

    void O(int i9, int i10) throws IOException;

    void P(int i9, List<Long> list, boolean z10) throws IOException;

    void Q(int i9, List<Double> list, boolean z10) throws IOException;

    void R(int i9, int i10) throws IOException;

    void S(int i9, List<ByteString> list) throws IOException;

    void a(int i9, List<?> list, n2 n2Var) throws IOException;

    void b(int i9, List<Float> list, boolean z10) throws IOException;

    void c(int i9, Object obj) throws IOException;

    void d(int i9, int i10) throws IOException;

    @Deprecated
    void e(int i9, List<?> list) throws IOException;

    void f(int i9, List<String> list) throws IOException;

    void g(int i9, String str) throws IOException;

    void h(int i9, long j10) throws IOException;

    void i(int i9, List<Integer> list, boolean z10) throws IOException;

    @Deprecated
    void j(int i9, Object obj, n2 n2Var) throws IOException;

    void k(int i9, ByteString byteString) throws IOException;

    void l(int i9, int i10) throws IOException;

    void m(int i9, long j10) throws IOException;

    void n(int i9, List<Integer> list, boolean z10) throws IOException;

    void o(int i9, List<Integer> list, boolean z10) throws IOException;

    void p(int i9, List<Long> list, boolean z10) throws IOException;

    void q(int i9, long j10) throws IOException;

    void r(int i9, List<Integer> list, boolean z10) throws IOException;

    @Deprecated
    void s(int i9, List<?> list, n2 n2Var) throws IOException;

    void t(int i9, int i10) throws IOException;

    void u(int i9, double d10) throws IOException;

    void v(int i9, List<Long> list, boolean z10) throws IOException;

    void w(int i9, List<Long> list, boolean z10) throws IOException;

    void x(int i9, Object obj, n2 n2Var) throws IOException;

    void y(int i9, long j10) throws IOException;

    FieldOrder z();
}
