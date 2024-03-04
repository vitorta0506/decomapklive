package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f9497a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k kVar, Context context, String str) {
        super(context, "google_app_measurement.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f9497a = kVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final SQLiteDatabase getWritableDatabase() {
        p8 p8Var;
        p8 p8Var2;
        p8 p8Var3;
        k kVar = this.f9497a;
        p8Var = kVar.f9561e;
        kVar.f9432a.z();
        if (p8Var.c(3600000L)) {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException unused) {
                p8Var2 = this.f9497a.f9561e;
                p8Var2.b();
                this.f9497a.f9432a.b().r().a("Opening the database failed, dropping and recreating it");
                this.f9497a.f9432a.z();
                if (!this.f9497a.f9432a.f().getDatabasePath("google_app_measurement.db").delete()) {
                    this.f9497a.f9432a.b().r().b("Failed to delete corrupted db file", "google_app_measurement.db");
                }
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    p8Var3 = this.f9497a.f9561e;
                    p8Var3.a();
                    return writableDatabase;
                } catch (SQLiteException e10) {
                    this.f9497a.f9432a.b().r().b("Failed to open freshly created database", e10);
                    throw e10;
                }
            }
        }
        throw new SQLiteException("Database open failed");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        l.b(this.f9497a.f9432a.b(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        String[] strArr5;
        String[] strArr6;
        String[] strArr7;
        String[] strArr8;
        j3 b10 = this.f9497a.f9432a.b();
        strArr = k.f9552f;
        l.a(b10, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", strArr);
        l.a(this.f9497a.f9432a.b(), sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
        j3 b11 = this.f9497a.f9432a.b();
        strArr2 = k.f9553g;
        l.a(b11, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", strArr2);
        j3 b12 = this.f9497a.f9432a.b();
        strArr3 = k.f9554h;
        l.a(b12, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", strArr3);
        j3 b13 = this.f9497a.f9432a.b();
        strArr4 = k.f9556j;
        l.a(b13, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", strArr4);
        l.a(this.f9497a.f9432a.b(), sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
        j3 b14 = this.f9497a.f9432a.b();
        strArr5 = k.f9555i;
        l.a(b14, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", strArr5);
        j3 b15 = this.f9497a.f9432a.b();
        strArr6 = k.f9557k;
        l.a(b15, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", strArr6);
        j3 b16 = this.f9497a.f9432a.b();
        strArr7 = k.f9558l;
        l.a(b16, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", strArr7);
        l.a(this.f9497a.f9432a.b(), sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
        j3 b17 = this.f9497a.f9432a.b();
        strArr8 = k.f9559m;
        l.a(b17, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", strArr8);
        l.a(this.f9497a.f9432a.b(), sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
        l.a(this.f9497a.f9432a.b(), sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
        l.a(this.f9497a.f9432a.b(), sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i9, int i10) {
    }
}
