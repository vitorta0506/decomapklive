package com.google.protobuf;

import com.google.protobuf.f1;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
interface k2 {
    void A(List<Long> list) throws IOException;

    void B(List<Integer> list) throws IOException;

    void C(List<Integer> list) throws IOException;

    long D() throws IOException;

    String E() throws IOException;

    int F() throws IOException;

    void G(List<String> list) throws IOException;

    <T> T H(n2<T> n2Var, f0 f0Var) throws IOException;

    void I(List<Float> list) throws IOException;

    boolean J();

    boolean K() throws IOException;

    int L() throws IOException;

    void M(List<ByteString> list) throws IOException;

    void N(List<Double> list) throws IOException;

    long O() throws IOException;

    String P() throws IOException;

    long a() throws IOException;

    void b(List<Integer> list) throws IOException;

    void c(List<Long> list) throws IOException;

    @Deprecated
    <T> void d(List<T> list, n2<T> n2Var, f0 f0Var) throws IOException;

    boolean e() throws IOException;

    <T> void f(List<T> list, n2<T> n2Var, f0 f0Var) throws IOException;

    long g() throws IOException;

    int getTag();

    void h(List<Long> list) throws IOException;

    int i() throws IOException;

    void j(List<Long> list) throws IOException;

    void k(List<Integer> list) throws IOException;

    int l() throws IOException;

    int m() throws IOException;

    void n(List<Boolean> list) throws IOException;

    @Deprecated
    <T> T o(Class<T> cls, f0 f0Var) throws IOException;

    <K, V> void p(Map<K, V> map, f1.b<K, V> bVar, f0 f0Var) throws IOException;

    void q(List<String> list) throws IOException;

    ByteString r() throws IOException;

    double readDouble() throws IOException;

    float readFloat() throws IOException;

    int s() throws IOException;

    void t(List<Long> list) throws IOException;

    void u(List<Integer> list) throws IOException;

    long v() throws IOException;

    void w(List<Integer> list) throws IOException;

    <T> T x(Class<T> cls, f0 f0Var) throws IOException;

    int y() throws IOException;

    @Deprecated
    <T> T z(n2<T> n2Var, f0 f0Var) throws IOException;
}
