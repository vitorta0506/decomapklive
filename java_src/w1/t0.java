package w1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t0 extends SQLiteOpenHelper {

    /* renamed from: c  reason: collision with root package name */
    private static final String f59341c = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + ")";

    /* renamed from: d  reason: collision with root package name */
    static int f59342d = 5;

    /* renamed from: e  reason: collision with root package name */
    private static final a f59343e;

    /* renamed from: f  reason: collision with root package name */
    private static final a f59344f;

    /* renamed from: g  reason: collision with root package name */
    private static final a f59345g;

    /* renamed from: h  reason: collision with root package name */
    private static final a f59346h;

    /* renamed from: i  reason: collision with root package name */
    private static final a f59347i;

    /* renamed from: j  reason: collision with root package name */
    private static final List<a> f59348j;

    /* renamed from: a  reason: collision with root package name */
    private final int f59349a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f59350b;

    /* loaded from: classes.dex */
    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        r0 r0Var = new a() { // from class: w1.r0
            @Override // w1.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.i(sQLiteDatabase);
            }
        };
        f59343e = r0Var;
        o0 o0Var = new a() { // from class: w1.o0
            @Override // w1.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.j(sQLiteDatabase);
            }
        };
        f59344f = o0Var;
        p0 p0Var = new a() { // from class: w1.p0
            @Override // w1.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
            }
        };
        f59345g = p0Var;
        q0 q0Var = new a() { // from class: w1.q0
            @Override // w1.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.o(sQLiteDatabase);
            }
        };
        f59346h = q0Var;
        s0 s0Var = new a() { // from class: w1.s0
            @Override // w1.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.p(sQLiteDatabase);
            }
        };
        f59347i = s0Var;
        f59348j = Arrays.asList(r0Var, o0Var, p0Var, q0Var, s0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(Context context, String str, int i9) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i9);
        this.f59350b = false;
        this.f59349a = i9;
    }

    private void h(SQLiteDatabase sQLiteDatabase) {
        if (this.f59350b) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void o(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void p(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        sQLiteDatabase.execSQL("CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))");
        sQLiteDatabase.execSQL("CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)");
        sQLiteDatabase.execSQL(f59341c);
    }

    private void q(SQLiteDatabase sQLiteDatabase, int i9) {
        h(sQLiteDatabase);
        r(sQLiteDatabase, 0, i9);
    }

    private void r(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        List<a> list = f59348j;
        if (i10 <= list.size()) {
            while (i9 < i10) {
                f59348j.get(i9).a(sQLiteDatabase);
                i9++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i9 + " to " + i10 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f59350b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        q(sQLiteDatabase, this.f59349a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        q(sQLiteDatabase, i10);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        h(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
        h(sQLiteDatabase);
        r(sQLiteDatabase, i9, i10);
    }
}
