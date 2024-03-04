package ge;

import android.content.SharedPreferences;
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f40055a;

    /* renamed from: b  reason: collision with root package name */
    private long f40056b = 0;

    public i(SharedPreferences sharedPreferences) {
        this.f40055a = sharedPreferences;
    }

    public final void a() {
        this.f40056b = this.f40055a.getLong("sequence_id_max", 0L);
    }

    public final long b() {
        long j10 = this.f40056b + 1;
        this.f40056b = j10;
        this.f40055a.edit().putLong("sequence_id_max", this.f40056b).apply();
        return j10;
    }

    public final long c() {
        return this.f40056b;
    }
}
