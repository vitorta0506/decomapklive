package org.threeten.bp.zone;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.ZoneOffset;
/* loaded from: classes7.dex */
public abstract class d {

    /* loaded from: classes7.dex */
    static final class a extends d implements Serializable {
        private static final long serialVersionUID = -8733721350312276297L;

        /* renamed from: a  reason: collision with root package name */
        private final ZoneOffset f56684a;

        a(ZoneOffset zoneOffset) {
            this.f56684a = zoneOffset;
        }

        @Override // org.threeten.bp.zone.d
        public ZoneOffset a(Instant instant) {
            return this.f56684a;
        }

        @Override // org.threeten.bp.zone.d
        public ZoneOffsetTransition b(LocalDateTime localDateTime) {
            return null;
        }

        @Override // org.threeten.bp.zone.d
        public List<ZoneOffset> c(LocalDateTime localDateTime) {
            return Collections.singletonList(this.f56684a);
        }

        @Override // org.threeten.bp.zone.d
        public boolean d(Instant instant) {
            return false;
        }

        @Override // org.threeten.bp.zone.d
        public boolean e() {
            return true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.f56684a.equals(((a) obj).f56684a);
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                return bVar.e() && this.f56684a.equals(bVar.a(Instant.EPOCH));
            }
            return false;
        }

        @Override // org.threeten.bp.zone.d
        public boolean f(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
            return this.f56684a.equals(zoneOffset);
        }

        public int hashCode() {
            return ((((this.f56684a.hashCode() + 31) ^ 1) ^ 1) ^ (this.f56684a.hashCode() + 31)) ^ 1;
        }

        public String toString() {
            return "FixedRules:" + this.f56684a;
        }
    }

    public static d g(ZoneOffset zoneOffset) {
        jl.d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        return new a(zoneOffset);
    }

    public abstract ZoneOffset a(Instant instant);

    public abstract ZoneOffsetTransition b(LocalDateTime localDateTime);

    public abstract List<ZoneOffset> c(LocalDateTime localDateTime);

    public abstract boolean d(Instant instant);

    public abstract boolean e();

    public abstract boolean f(LocalDateTime localDateTime, ZoneOffset zoneOffset);
}
