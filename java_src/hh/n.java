package hh;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n extends c0 {

    /* renamed from: a  reason: collision with root package name */
    private final fh.g f40786a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(fh.g gVar) {
        Objects.requireNonNull(gVar, "Null delegate");
        this.f40786a = gVar;
    }

    @Override // hh.c0
    public fh.g b() {
        return this.f40786a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c0) {
            return this.f40786a.equals(((c0) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f40786a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "SourceIpMatcher{delegate=" + this.f40786a + "}";
    }
}
