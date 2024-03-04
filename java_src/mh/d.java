package mh;

import io.opencensus.trace.Status;
import mh.i;
/* loaded from: classes7.dex */
final class d extends i {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f55109b;

    /* renamed from: c  reason: collision with root package name */
    private final Status f55110c;

    /* loaded from: classes7.dex */
    static final class b extends i.a {

        /* renamed from: a  reason: collision with root package name */
        private Boolean f55111a;

        /* renamed from: b  reason: collision with root package name */
        private Status f55112b;

        @Override // mh.i.a
        public i a() {
            String str = "";
            if (this.f55111a == null) {
                str = " sampleToLocalSpanStore";
            }
            if (str.isEmpty()) {
                return new d(this.f55111a.booleanValue(), this.f55112b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // mh.i.a
        public i.a b(Status status) {
            this.f55112b = status;
            return this;
        }

        public i.a c(boolean z10) {
            this.f55111a = Boolean.valueOf(z10);
            return this;
        }
    }

    @Override // mh.i
    public boolean b() {
        return this.f55109b;
    }

    @Override // mh.i
    public Status c() {
        return this.f55110c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f55109b == iVar.b()) {
                Status status = this.f55110c;
                if (status == null) {
                    if (iVar.c() == null) {
                        return true;
                    }
                } else if (status.equals(iVar.c())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i9 = ((this.f55109b ? 1231 : 1237) ^ 1000003) * 1000003;
        Status status = this.f55110c;
        return i9 ^ (status == null ? 0 : status.hashCode());
    }

    public String toString() {
        return "EndSpanOptions{sampleToLocalSpanStore=" + this.f55109b + ", status=" + this.f55110c + "}";
    }

    private d(boolean z10, Status status) {
        this.f55109b = z10;
        this.f55110c = status;
    }
}
