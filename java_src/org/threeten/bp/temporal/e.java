package org.threeten.bp.temporal;

import org.threeten.bp.DayOfWeek;
/* loaded from: classes7.dex */
public final class e {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class b implements d {

        /* renamed from: a  reason: collision with root package name */
        private final int f56658a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56659b;

        @Override // org.threeten.bp.temporal.d
        public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
            int i9 = bVar.get(ChronoField.DAY_OF_WEEK);
            int i10 = this.f56658a;
            if (i10 >= 2 || i9 != this.f56659b) {
                if ((i10 & 1) == 0) {
                    int i11 = i9 - this.f56659b;
                    return bVar.plus(i11 >= 0 ? 7 - i11 : -i11, ChronoUnit.DAYS);
                }
                int i12 = this.f56659b - i9;
                return bVar.minus(i12 >= 0 ? 7 - i12 : -i12, ChronoUnit.DAYS);
            }
            return bVar;
        }

        private b(int i9, DayOfWeek dayOfWeek) {
            jl.d.i(dayOfWeek, "dayOfWeek");
            this.f56658a = i9;
            this.f56659b = dayOfWeek.getValue();
        }
    }

    public static d a(DayOfWeek dayOfWeek) {
        return new b(0, dayOfWeek);
    }

    public static d b(DayOfWeek dayOfWeek) {
        return new b(1, dayOfWeek);
    }
}
