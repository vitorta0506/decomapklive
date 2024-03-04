package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
final class d extends i {

    /* renamed from: a  reason: collision with root package name */
    private final List<k> f5303a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(List<k> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f5303a = list;
    }

    @Override // com.google.android.datatransport.cct.internal.i
    @NonNull
    public List<k> c() {
        return this.f5303a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return this.f5303a.equals(((i) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f5303a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f5303a + "}";
    }
}
