package w1;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.facebook.bolts.AppLinks;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import n1.i;
import r1.a;
import x1.a;
@WorkerThread
/* loaded from: classes.dex */
public class m0 implements w1.d, x1.a, w1.c {

    /* renamed from: f  reason: collision with root package name */
    private static final l1.b f59308f = l1.b.b("proto");

    /* renamed from: a  reason: collision with root package name */
    private final t0 f59309a;

    /* renamed from: b  reason: collision with root package name */
    private final y1.a f59310b;

    /* renamed from: c  reason: collision with root package name */
    private final y1.a f59311c;

    /* renamed from: d  reason: collision with root package name */
    private final e f59312d;

    /* renamed from: e  reason: collision with root package name */
    private final p1.a<String> f59313e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b<T, U> {
        U apply(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final String f59314a;

        /* renamed from: b  reason: collision with root package name */
        final String f59315b;

        private c(String str, String str2) {
            this.f59314a = str;
            this.f59315b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface d<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(y1.a aVar, y1.a aVar2, e eVar, t0 t0Var, p1.a<String> aVar3) {
        this.f59309a = t0Var;
        this.f59310b = aVar;
        this.f59311c = aVar2;
        this.f59312d = eVar;
        this.f59313e = aVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean A0(n1.o oVar, SQLiteDatabase sQLiteDatabase) {
        Long f02 = f0(sQLiteDatabase, oVar);
        if (f02 == null) {
            return Boolean.FALSE;
        }
        return (Boolean) l1(Y().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{f02.toString()}), new b() { // from class: w1.y
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List B0(SQLiteDatabase sQLiteDatabase) {
        return (List) l1(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: w1.t
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                List C0;
                C0 = m0.C0((Cursor) obj);
                return C0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List C0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(n1.o.a().b(cursor.getString(1)).d(z1.a.b(cursor.getInt(2))).c(W0(cursor.getString(3))).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List D0(n1.o oVar, SQLiteDatabase sQLiteDatabase) {
        List<k> U0 = U0(sQLiteDatabase, oVar);
        return i0(U0, V0(sQLiteDatabase, U0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ r1.a E0(Map map, a.C0628a c0628a, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            LogEventDropped.Reason U = U(cursor.getInt(1));
            long j10 = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(LogEventDropped.c().c(U).b(j10).a());
        }
        Z0(c0628a, map);
        c0628a.e(d0());
        c0628a.d(Z());
        c0628a.c(this.f59313e.get());
        return c0628a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ r1.a F0(String str, final Map map, final a.C0628a c0628a, SQLiteDatabase sQLiteDatabase) {
        return (r1.a) l1(sQLiteDatabase.rawQuery(str, new String[0]), new b() { // from class: w1.o
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                r1.a E0;
                E0 = m0.this.E0(map, c0628a, (Cursor) obj);
                return E0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object G0(List list, n1.o oVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            boolean z10 = cursor.getInt(7) != 0;
            i.a k10 = n1.i.a().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z10) {
                k10.h(new n1.h(f1(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                k10.h(new n1.h(f1(cursor.getString(4)), c1(j10)));
            }
            if (!cursor.isNull(6)) {
                k10.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(k.a(j10, oVar, k10.d()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object I0(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j10));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j10), set);
            }
            set.add(new c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long J0(n1.i iVar, n1.o oVar, SQLiteDatabase sQLiteDatabase) {
        if (h0()) {
            d(1L, LogEventDropped.Reason.CACHE_FULL, iVar.j());
            return -1L;
        }
        long W = W(sQLiteDatabase, oVar);
        int e10 = this.f59312d.e();
        byte[] a10 = iVar.e().a();
        boolean z10 = a10.length <= e10;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(W));
        contentValues.put("transport_name", iVar.j());
        contentValues.put("timestamp_ms", Long.valueOf(iVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(iVar.k()));
        contentValues.put("payload_encoding", iVar.e().b().a());
        contentValues.put("code", iVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z10));
        contentValues.put("payload", z10 ? a10 : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z10) {
            int ceil = (int) Math.ceil(a10.length / e10);
            for (int i9 = 1; i9 <= ceil; i9++) {
                byte[] copyOfRange = Arrays.copyOfRange(a10, (i9 - 1) * e10, Math.min(i9 * e10, a10.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i9));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : iVar.i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] K0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i9 += blob.length;
        }
        byte[] bArr = new byte[i9];
        int i10 = 0;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            byte[] bArr2 = (byte[]) arrayList.get(i11);
            System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
            i10 += bArr2.length;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object L0(Cursor cursor) {
        while (cursor.moveToNext()) {
            int i9 = cursor.getInt(0);
            d(i9, LogEventDropped.Reason.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object M0(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        l1(sQLiteDatabase.rawQuery(str2, null), new b() { // from class: w1.i0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object L0;
                L0 = m0.this.L0((Cursor) obj);
                return L0;
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean N0(Cursor cursor) {
        return Boolean.valueOf(cursor.getCount() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object O0(String str, LogEventDropped.Reason reason, long j10, SQLiteDatabase sQLiteDatabase) {
        if (!((Boolean) l1(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())}), new b() { // from class: w1.x
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Boolean N0;
                N0 = m0.N0((Cursor) obj);
                return N0;
            }
        })).booleanValue()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(reason.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j10));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        } else {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j10 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())});
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object P0(long j10, n1.o oVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j10));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{oVar.b(), String.valueOf(z1.a.a(oVar.d()))}) < 1) {
            contentValues.put("backend_name", oVar.b());
            contentValues.put(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(z1.a.a(oVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object R0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f59310b.a()).execute();
        return null;
    }

    private LogEventDropped.Reason U(int i9) {
        LogEventDropped.Reason reason = LogEventDropped.Reason.REASON_UNKNOWN;
        if (i9 == reason.getNumber()) {
            return reason;
        }
        LogEventDropped.Reason reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
        if (i9 == reason2.getNumber()) {
            return reason2;
        }
        LogEventDropped.Reason reason3 = LogEventDropped.Reason.CACHE_FULL;
        if (i9 == reason3.getNumber()) {
            return reason3;
        }
        LogEventDropped.Reason reason4 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
        if (i9 == reason4.getNumber()) {
            return reason4;
        }
        LogEventDropped.Reason reason5 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
        if (i9 == reason5.getNumber()) {
            return reason5;
        }
        LogEventDropped.Reason reason6 = LogEventDropped.Reason.INVALID_PAYLOD;
        if (i9 == reason6.getNumber()) {
            return reason6;
        }
        LogEventDropped.Reason reason7 = LogEventDropped.Reason.SERVER_ERROR;
        if (i9 == reason7.getNumber()) {
            return reason7;
        }
        s1.a.b("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i9));
        return reason;
    }

    private List<k> U0(SQLiteDatabase sQLiteDatabase, final n1.o oVar) {
        final ArrayList arrayList = new ArrayList();
        Long f02 = f0(sQLiteDatabase, oVar);
        if (f02 == null) {
            return arrayList;
        }
        l1(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{f02.toString()}, null, null, null, String.valueOf(this.f59312d.d())), new b() { // from class: w1.n
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object G0;
                G0 = m0.this.G0(arrayList, oVar, (Cursor) obj);
                return G0;
            }
        });
        return arrayList;
    }

    private void V(final SQLiteDatabase sQLiteDatabase) {
        e1(new d() { // from class: w1.c0
            @Override // w1.m0.d
            public final Object a() {
                Object p02;
                p02 = m0.p0(sQLiteDatabase);
                return p02;
            }
        }, new b() { // from class: w1.b0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object r02;
                r02 = m0.r0((Throwable) obj);
                return r02;
            }
        });
    }

    private Map<Long, Set<c>> V0(SQLiteDatabase sQLiteDatabase, List<k> list) {
        final HashMap hashMap = new HashMap();
        StringBuilder sb2 = new StringBuilder("event_id IN (");
        for (int i9 = 0; i9 < list.size(); i9++) {
            sb2.append(list.get(i9).c());
            if (i9 < list.size() - 1) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        l1(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb2.toString(), null, null, null, null), new b() { // from class: w1.g0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object I0;
                I0 = m0.I0(hashMap, (Cursor) obj);
                return I0;
            }
        });
        return hashMap;
    }

    private long W(SQLiteDatabase sQLiteDatabase, n1.o oVar) {
        Long f02 = f0(sQLiteDatabase, oVar);
        if (f02 != null) {
            return f02.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", oVar.b());
        contentValues.put(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(z1.a.a(oVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (oVar.c() != null) {
            contentValues.put(AppLinks.KEY_NAME_EXTRAS, Base64.encodeToString(oVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    private static byte[] W0(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private r1.b Z() {
        return r1.b.b().b(r1.d.c().b(X()).c(e.f59284a.f()).a()).a();
    }

    private void Z0(a.C0628a c0628a, Map<String, List<LogEventDropped>> map) {
        for (Map.Entry<String, List<LogEventDropped>> entry : map.entrySet()) {
            c0628a.a(r1.c.c().c(entry.getKey()).b(entry.getValue()).a());
        }
    }

    private long c0() {
        return Y().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private byte[] c1(long j10) {
        return (byte[]) l1(Y().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num"), new b() { // from class: w1.s
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                byte[] K0;
                K0 = m0.K0((Cursor) obj);
                return K0;
            }
        });
    }

    private r1.e d0() {
        final long a10 = this.f59310b.a();
        return (r1.e) g0(new b() { // from class: w1.w
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                r1.e y02;
                y02 = m0.y0(a10, (SQLiteDatabase) obj);
                return y02;
            }
        });
    }

    private <T> T e1(d<T> dVar, b<Throwable, T> bVar) {
        long a10 = this.f59311c.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e10) {
                if (this.f59311c.a() >= this.f59312d.b() + a10) {
                    return bVar.apply(e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Nullable
    private Long f0(SQLiteDatabase sQLiteDatabase, n1.o oVar) {
        StringBuilder sb2 = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(oVar.b(), String.valueOf(z1.a.a(oVar.d()))));
        if (oVar.c() != null) {
            sb2.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(oVar.c(), 0));
        } else {
            sb2.append(" and extras is null");
        }
        return (Long) l1(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb2.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() { // from class: w1.v
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Long z02;
                z02 = m0.z0((Cursor) obj);
                return z02;
            }
        });
    }

    private static l1.b f1(@Nullable String str) {
        if (str == null) {
            return f59308f;
        }
        return l1.b.b(str);
    }

    private long getPageSize() {
        return Y().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private boolean h0() {
        return c0() * getPageSize() >= this.f59312d.f();
    }

    private List<k> i0(List<k> list, Map<Long, Set<c>> map) {
        ListIterator<k> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            k next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.c()))) {
                i.a l10 = next.b().l();
                for (c cVar : map.get(Long.valueOf(next.c()))) {
                    l10.c(cVar.f59314a, cVar.f59315b);
                }
                listIterator.set(k.a(next.c(), next.d(), l10.d()));
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object j0(Cursor cursor) {
        while (cursor.moveToNext()) {
            int i9 = cursor.getInt(0);
            d(i9, LogEventDropped.Reason.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    private static String j1(Iterable<k> iterable) {
        StringBuilder sb2 = new StringBuilder("(");
        Iterator<k> it = iterable.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().c());
            if (it.hasNext()) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer l0(long j10, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j10)};
        l1(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() { // from class: w1.h0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object j02;
                j02 = m0.this.j0((Cursor) obj);
                return j02;
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    @VisibleForTesting
    static <T> T l1(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object p0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r0(Throwable th2) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SQLiteDatabase t0(Throwable th2) {
        throw new SynchronizationException("Timed out while trying to open db.", th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long w0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r1.e x0(long j10, Cursor cursor) {
        cursor.moveToNext();
        return r1.e.c().c(cursor.getLong(0)).b(j10).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r1.e y0(final long j10, SQLiteDatabase sQLiteDatabase) {
        return (r1.e) l1(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() { // from class: w1.l
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                r1.e x02;
                x02 = m0.x0(j10, (Cursor) obj);
                return x02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long z0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    @Override // w1.d
    public Iterable<n1.o> H() {
        return (Iterable) g0(new b() { // from class: w1.z
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                List B0;
                B0 = m0.B0((SQLiteDatabase) obj);
                return B0;
            }
        });
    }

    @Override // w1.d
    public boolean H0(final n1.o oVar) {
        return ((Boolean) g0(new b() { // from class: w1.r
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Boolean A0;
                A0 = m0.this.A0(oVar, (SQLiteDatabase) obj);
                return A0;
            }
        })).booleanValue();
    }

    @Override // w1.d
    public void J(final n1.o oVar, final long j10) {
        g0(new b() { // from class: w1.e0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object P0;
                P0 = m0.P0(j10, oVar, (SQLiteDatabase) obj);
                return P0;
            }
        });
    }

    @Override // w1.d
    public Iterable<k> L1(final n1.o oVar) {
        return (Iterable) g0(new b() { // from class: w1.q
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                List D0;
                D0 = m0.this.D0(oVar, (SQLiteDatabase) obj);
                return D0;
            }
        });
    }

    @Override // w1.d
    @Nullable
    public k Q0(final n1.o oVar, final n1.i iVar) {
        s1.a.c("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", oVar.d(), iVar.j(), oVar.b());
        long longValue = ((Long) g0(new b() { // from class: w1.p
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Long J0;
                J0 = m0.this.J0(iVar, oVar, (SQLiteDatabase) obj);
                return J0;
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return k.a(longValue, oVar, iVar);
    }

    @VisibleForTesting
    long X() {
        return c0() * getPageSize();
    }

    @VisibleForTesting
    SQLiteDatabase Y() {
        final t0 t0Var = this.f59309a;
        Objects.requireNonNull(t0Var);
        return (SQLiteDatabase) e1(new d() { // from class: w1.d0
            @Override // w1.m0.d
            public final Object a() {
                return t0.this.getWritableDatabase();
            }
        }, new b() { // from class: w1.a0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                SQLiteDatabase t02;
                t02 = m0.t0((Throwable) obj);
                return t02;
            }
        });
    }

    @Override // w1.c
    public void a() {
        g0(new b() { // from class: w1.j0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object R0;
                R0 = m0.this.R0((SQLiteDatabase) obj);
                return R0;
            }
        });
    }

    @Override // x1.a
    public <T> T b(a.InterfaceC0685a<T> interfaceC0685a) {
        SQLiteDatabase Y = Y();
        V(Y);
        try {
            T execute = interfaceC0685a.execute();
            Y.setTransactionSuccessful();
            return execute;
        } finally {
            Y.endTransaction();
        }
    }

    @Override // w1.c
    public r1.a c() {
        final a.C0628a e10 = r1.a.e();
        final HashMap hashMap = new HashMap();
        return (r1.a) g0(new b() { // from class: w1.m
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                r1.a F0;
                F0 = m0.this.F0(r2, hashMap, e10, (SQLiteDatabase) obj);
                return F0;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f59309a.close();
    }

    @Override // w1.c
    public void d(final long j10, final LogEventDropped.Reason reason, final String str) {
        g0(new b() { // from class: w1.f0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Object O0;
                O0 = m0.O0(str, reason, j10, (SQLiteDatabase) obj);
                return O0;
            }
        });
    }

    @Override // w1.d
    public long d1(n1.o oVar) {
        return ((Long) l1(Y().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{oVar.b(), String.valueOf(z1.a.a(oVar.d()))}), new b() { // from class: w1.u
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Long w02;
                w02 = m0.w0((Cursor) obj);
                return w02;
            }
        })).longValue();
    }

    @VisibleForTesting
    <T> T g0(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase Y = Y();
        Y.beginTransaction();
        try {
            T apply = bVar.apply(Y);
            Y.setTransactionSuccessful();
            return apply;
        } finally {
            Y.endTransaction();
        }
    }

    @Override // w1.d
    public void u0(Iterable<k> iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j1(iterable);
            g0(new b() { // from class: w1.l0
                @Override // w1.m0.b
                public final Object apply(Object obj) {
                    Object M0;
                    M0 = m0.this.M0(str, r3, (SQLiteDatabase) obj);
                    return M0;
                }
            });
        }
    }

    @Override // w1.d
    public int x() {
        final long a10 = this.f59310b.a() - this.f59312d.c();
        return ((Integer) g0(new b() { // from class: w1.k0
            @Override // w1.m0.b
            public final Object apply(Object obj) {
                Integer l02;
                l02 = m0.this.l0(a10, (SQLiteDatabase) obj);
                return l02;
            }
        })).intValue();
    }

    @Override // w1.d
    public void z(Iterable<k> iterable) {
        if (iterable.iterator().hasNext()) {
            Y().compileStatement("DELETE FROM events WHERE _id in " + j1(iterable)).execute();
        }
    }
}
