.class public Lw1/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/d;
.implements Lx1/a;
.implements Lw1/c;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/m0$c;,
        Lw1/m0$b;,
        Lw1/m0$d;
    }
.end annotation


# static fields
.field private static final f:Ll1/b;


# instance fields
.field private final a:Lw1/t0;

.field private final b:Ly1/a;

.field private final c:Ly1/a;

.field private final d:Lw1/e;

.field private final e:Lp1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "proto"

    invoke-static {v0}, Ll1/b;->b(Ljava/lang/String;)Ll1/b;

    move-result-object v0

    sput-object v0, Lw1/m0;->f:Ll1/b;

    return-void
.end method

.method constructor <init>(Ly1/a;Ly1/a;Lw1/e;Lw1/t0;Lp1/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/a;",
            "Ly1/a;",
            "Lw1/e;",
            "Lw1/t0;",
            "Lp1/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lw1/m0;->a:Lw1/t0;

    .line 3
    iput-object p1, p0, Lw1/m0;->b:Ly1/a;

    .line 4
    iput-object p2, p0, Lw1/m0;->c:Ly1/a;

    .line 5
    iput-object p3, p0, Lw1/m0;->d:Lw1/e;

    .line 6
    iput-object p5, p0, Lw1/m0;->e:Lp1/a;

    return-void
.end method

.method public static synthetic A(Lw1/m0;Ljava/util/List;Ln1/o;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw1/m0;->G0(Ljava/util/List;Ln1/o;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic A0(Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-direct {p0, p2, p1}, Lw1/m0;->f0(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lw1/y;->a:Lw1/y;

    .line 6
    invoke-static {p1, p2}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method private static synthetic B0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    sget-object v0, Lw1/t;->a:Lw1/t;

    .line 2
    invoke-static {p0, v0}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic C(Lw1/m0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lw1/m0;->R0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic C0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ln1/o;->a()Ln1/o$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/o$a;->b(Ljava/lang/String;)Ln1/o$a;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lz1/a;->b(I)Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/o$a;->d(Lcom/google/android/datatransport/Priority;)Ln1/o$a;

    move-result-object v1

    const/4 v2, 0x3

    .line 6
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw1/m0;->W0(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/o$a;->c([B)Ln1/o$a;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ln1/o$a;->a()Ln1/o;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic D0(Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lw1/m0;->U0(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2, p1}, Lw1/m0;->V0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lw1/m0;->i0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic E0(Ljava/util/Map;Lr1/a$a;Landroid/database/Cursor;)Lr1/a;
    .locals 5

    .line 1
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lw1/m0;->U(I)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->c()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;->c(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;->b(J)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$a;->a()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, p2, p1}, Lw1/m0;->Z0(Lr1/a$a;Ljava/util/Map;)V

    .line 14
    invoke-direct {p0}, Lw1/m0;->d0()Lr1/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr1/a$a;->e(Lr1/e;)Lr1/a$a;

    .line 15
    invoke-direct {p0}, Lw1/m0;->Z()Lr1/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr1/a$a;->d(Lr1/b;)Lr1/a$a;

    .line 16
    iget-object p1, p0, Lw1/m0;->e:Lp1/a;

    invoke-interface {p1}, Lp1/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lr1/a$a;->c(Ljava/lang/String;)Lr1/a$a;

    .line 17
    invoke-virtual {p2}, Lr1/a$a;->b()Lr1/a;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic F(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lw1/m0;->z0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic F0(Ljava/lang/String;Ljava/util/Map;Lr1/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lr1/a;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-virtual {p4, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p4, Lw1/o;

    invoke-direct {p4, p0, p2, p3}, Lw1/o;-><init>(Lw1/m0;Ljava/util/Map;Lr1/a$a;)V

    .line 2
    invoke-static {p1, p4}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr1/a;

    return-object p1
.end method

.method private synthetic G0(Ljava/util/List;Ln1/o;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    .line 1
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x7

    .line 3
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    invoke-static {}, Ln1/i;->a()Ln1/i$a;

    move-result-object v3

    .line 5
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln1/i$a;->j(Ljava/lang/String;)Ln1/i$a;

    move-result-object v3

    const/4 v4, 0x2

    .line 6
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ln1/i$a;->i(J)Ln1/i$a;

    move-result-object v3

    const/4 v4, 0x3

    .line 7
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ln1/i$a;->k(J)Ln1/i$a;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ln1/h;

    .line 9
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw1/m0;->f1(Ljava/lang/String;)Ll1/b;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ln1/h;-><init>(Ll1/b;[B)V

    .line 10
    invoke-virtual {v3, v0}, Ln1/i$a;->h(Ln1/h;)Ln1/i$a;

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Ln1/h;

    .line 12
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw1/m0;->f1(Ljava/lang/String;)Ll1/b;

    move-result-object v4

    invoke-direct {p0, v1, v2}, Lw1/m0;->c1(J)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ln1/h;-><init>(Ll1/b;[B)V

    .line 13
    invoke-virtual {v3, v0}, Ln1/i$a;->h(Ln1/h;)Ln1/i$a;

    :goto_1
    const/4 v0, 0x6

    .line 14
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 15
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ln1/i$a;->g(Ljava/lang/Integer;)Ln1/i$a;

    .line 16
    :cond_2
    invoke-virtual {v3}, Ln1/i$a;->d()Ln1/i;

    move-result-object v0

    invoke-static {v1, v2, p2, v0}, Lw1/k;->a(JLn1/o;Ln1/i;)Lw1/k;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic I(Lw1/m0;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw1/m0;->M0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic I0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    new-instance v2, Lw1/m0$c;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lw1/m0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lw1/m0$a;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private synthetic J0(Ln1/i;Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 11

    .line 1
    invoke-direct {p0}, Lw1/m0;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p2, 0x1

    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 3
    invoke-virtual {p1}, Ln1/i;->j()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2, p3, v0, p1}, Lw1/m0;->d(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0, p3, p2}, Lw1/m0;->W(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)J

    move-result-wide v0

    .line 7
    iget-object p2, p0, Lw1/m0;->d:Lw1/e;

    invoke-virtual {p2}, Lw1/e;->e()I

    move-result p2

    .line 8
    invoke-virtual {p1}, Ln1/i;->e()Ln1/h;

    move-result-object v2

    invoke-virtual {v2}, Ln1/h;->a()[B

    move-result-object v2

    .line 9
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 10
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "context_id"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    invoke-virtual {p1}, Ln1/i;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transport_name"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ln1/i;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    invoke-virtual {p1}, Ln1/i;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uptime_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-virtual {p1}, Ln1/i;->e()Ln1/h;

    move-result-object v0

    invoke-virtual {v0}, Ln1/h;->b()Ll1/b;

    move-result-object v0

    invoke-virtual {v0}, Ll1/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload_encoding"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ln1/i;->d()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "num_attempts"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-array v0, v4, [B

    :goto_1
    const-string v1, "payload"

    .line 19
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "events"

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-string v0, "event_id"

    if-nez v3, :cond_3

    .line 21
    array-length v3, v2

    int-to-double v3, v3

    int-to-double v8, p2

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_2
    if-gt v5, v3, :cond_3

    add-int/lit8 v4, v5, -0x1

    mul-int v4, v4, p2

    mul-int v8, v5, p2

    .line 22
    array-length v9, v2

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 24
    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 25
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "sequence_num"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "bytes"

    .line 28
    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "event_payloads"

    .line 29
    invoke-virtual {p3, v4, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {p1}, Ln1/i;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 31
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event_metadata"

    .line 35
    invoke-virtual {p3, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 36
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic K(Lw1/m0;Ln1/i;Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw1/m0;->J0(Ln1/i;Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic K0(Landroid/database/Cursor;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 6
    :cond_0
    new-array p0, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 9
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static synthetic L(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lw1/m0;->I0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic L0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    .line 4
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {p0, v2, v3, v0, v1}, Lw1/m0;->d(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic M(Lw1/m0;Ljava/util/Map;Lr1/a$a;Landroid/database/Cursor;)Lr1/a;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw1/m0;->E0(Ljava/util/Map;Lr1/a$a;Landroid/database/Cursor;)Lr1/a;

    move-result-object p0

    return-object p0
.end method

.method private synthetic M0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lw1/i0;

    invoke-direct {v0, p0}, Lw1/i0;-><init>(Lw1/m0;)V

    .line 3
    invoke-static {p2, v0}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    const-string p2, "DELETE FROM events WHERE num_attempts >= 16"

    .line 4
    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-object p1
.end method

.method public static synthetic N(Lw1/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lw1/m0;->L0(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic N0(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic O0(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    .line 2
    invoke-virtual {p4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-object v3, Lw1/x;->a:Lw1/x;

    invoke-static {v1, v3}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "log_source"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "events_dropped_count"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "log_event_dropped"

    .line 7
    invoke-virtual {p4, p0, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " WHERE log_source = ? AND reason = ?"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/String;

    aput-object p0, p3, v2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v4

    invoke-virtual {p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v3
.end method

.method public static synthetic P(Lw1/m0;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw1/m0;->l0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic P0(JLn1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "next_request_ms"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ln1/o;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 4
    invoke-virtual {p2}, Ln1/o;->d()Lcom/google/android/datatransport/Priority;

    move-result-object p1

    invoke-static {p1}, Lz1/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    const-string p1, "transport_contexts"

    const-string v2, "backend_name = ? and priority = ?"

    .line 5
    invoke-virtual {p3, p1, v0, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    .line 6
    invoke-virtual {p2}, Ln1/o;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "backend_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ln1/o;->d()Lcom/google/android/datatransport/Priority;

    move-result-object p0

    invoke-static {p0}, Lz1/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "priority"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v2
.end method

.method public static synthetic R(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lw1/m0;->B0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic R0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    const-string v0, "DELETE FROM log_event_dropped"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw1/m0;->b:Ly1/a;

    .line 3
    invoke-interface {v1}, Ly1/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic T(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lw1/m0;->N0(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private U(I)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_2

    return-object v1

    .line 4
    :cond_2
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_3

    return-object v1

    .line 5
    :cond_3
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_4

    return-object v1

    .line 6
    :cond_4
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_5

    return-object v1

    .line 7
    :cond_5
    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->SERVER_ERROR:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v2

    if-ne p1, v2, :cond_6

    return-object v1

    .line 8
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "SQLiteEventStore"

    const-string v2, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 9
    invoke-static {v1, v2, p1}, Ls1/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private U0(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ln1/o;",
            ")",
            "Ljava/util/List<",
            "Lw1/k;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct/range {p0 .. p2}, Lw1/m0;->f0(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v3, "_id"

    const-string v4, "transport_name"

    const-string v5, "timestamp_ms"

    const-string v6, "uptime_ms"

    const-string v7, "payload_encoding"

    const-string v8, "payload"

    const-string v9, "code"

    const-string v10, "inline"

    .line 3
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v2, v0, Lw1/m0;->d:Lw1/e;

    .line 5
    invoke-virtual {v2}, Lw1/e;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const-string v12, "events"

    const-string v14, "context_id = ?"

    move-object/from16 v11, p1

    .line 6
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lw1/n;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lw1/n;-><init>(Lw1/m0;Ljava/util/List;Ln1/o;)V

    .line 7
    invoke-static {v2, v3}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    return-object v1
.end method

.method private V(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lw1/c0;

    invoke-direct {v0, p1}, Lw1/c0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object p1, Lw1/b0;->a:Lw1/b0;

    invoke-direct {p0, v0, p1}, Lw1/m0;->e1(Lw1/m0$d;Lw1/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method private V0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lw1/k;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lw1/m0$c;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/k;

    invoke-virtual {v3}, Lw1/k;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "event_id"

    const-string v2, "name"

    const-string/jumbo v3, "value"

    .line 8
    filled-new-array {p2, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "event_metadata"

    move-object v4, p1

    .line 10
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lw1/g0;

    invoke-direct {p2, v0}, Lw1/g0;-><init>(Ljava/util/Map;)V

    .line 11
    invoke-static {p1, p2}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    return-object v0
.end method

.method private W(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)J
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lw1/m0;->f0(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {p2}, Ln1/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backend_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ln1/o;->d()Lcom/google/android/datatransport/Priority;

    move-result-object v1

    invoke-static {v1}, Lz1/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "next_request_ms"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p2}, Ln1/o;->c()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p2}, Ln1/o;->c()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extras"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    const-string v1, "transport_contexts"

    .line 9
    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private static W0(Ljava/lang/String;)[B
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private Z()Lr1/b;
    .locals 4

    .line 1
    invoke-static {}, Lr1/b;->b()Lr1/b$a;

    move-result-object v0

    .line 2
    invoke-static {}, Lr1/d;->c()Lr1/d$a;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lw1/m0;->X()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr1/d$a;->b(J)Lr1/d$a;

    move-result-object v1

    sget-object v2, Lw1/e;->a:Lw1/e;

    .line 4
    invoke-virtual {v2}, Lw1/e;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr1/d$a;->c(J)Lr1/d$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lr1/d$a;->a()Lr1/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lr1/b$a;->b(Lr1/d;)Lr1/b$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lr1/b$a;->a()Lr1/b;

    move-result-object v0

    return-object v0
.end method

.method private Z0(Lr1/a$a;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-static {}, Lr1/c;->c()Lr1/c$a;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr1/c$a;->c(Ljava/lang/String;)Lr1/c$a;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lr1/c$a;->b(Ljava/util/List;)Lr1/c$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lr1/c$a;->a()Lr1/c;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lr1/a$a;->a(Lr1/c;)Lr1/a$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c0()J
    .locals 2

    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private c1(J)[B
    .locals 8

    .line 1
    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "bytes"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v1, "event_payloads"

    const-string v3, "event_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sequence_num"

    .line 3
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lw1/s;->a:Lw1/s;

    .line 4
    invoke-static {p1, p2}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method private d0()Lr1/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lw1/m0;->b:Ly1/a;

    invoke-interface {v0}, Ly1/a;->a()J

    move-result-wide v0

    .line 2
    new-instance v2, Lw1/w;

    invoke-direct {v2, v0, v1}, Lw1/w;-><init>(J)V

    invoke-virtual {p0, v2}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/e;

    return-object v0
.end method

.method public static synthetic e(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    invoke-static {p0}, Lw1/m0;->t0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private e1(Lw1/m0$d;Lw1/m0$b;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw1/m0$d<",
            "TT;>;",
            "Lw1/m0$b<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/m0;->c:Ly1/a;

    invoke-interface {v0}, Ly1/a;->a()J

    move-result-wide v0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lw1/m0$d;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 3
    iget-object v3, p0, Lw1/m0;->c:Ly1/a;

    invoke-interface {v3}, Ly1/a;->a()J

    move-result-wide v3

    iget-object v5, p0, Lw1/m0;->d:Lw1/e;

    invoke-virtual {v5}, Lw1/e;->b()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 4
    invoke-interface {p2, v2}, Lw1/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x32

    .line 5
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method private f0(Landroid/database/sqlite/SQLiteDatabase;Ln1/o;)Ljava/lang/Long;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ln1/o;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p2}, Ln1/o;->d()Lcom/google/android/datatransport/Priority;

    move-result-object v3

    invoke-static {v3}, Lz1/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p2}, Ln1/o;->c()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " and extras = ?"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Ln1/o;->c()[B

    move-result-object p2

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, " and extras is null"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "_id"

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array p2, v4, [Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "transport_contexts"

    move-object v5, p1

    .line 13
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lw1/v;->a:Lw1/v;

    .line 14
    invoke-static {p1, p2}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method private static f1(Ljava/lang/String;)Ll1/b;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lw1/m0;->f:Ll1/b;

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Ll1/b;->b(Ljava/lang/String;)Ll1/b;

    move-result-object p0

    return-object p0
.end method

.method private getPageSize()J
    .locals 2

    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_size"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic h(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lw1/m0;->r0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private h0()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lw1/m0;->c0()J

    move-result-wide v0

    invoke-direct {p0}, Lw1/m0;->getPageSize()J

    move-result-wide v2

    mul-long v0, v0, v2

    .line 2
    iget-object v2, p0, Lw1/m0;->d:Lw1/e;

    invoke-virtual {v2}, Lw1/e;->f()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic i(JLandroid/database/Cursor;)Lr1/e;
    .locals 0

    invoke-static {p0, p1, p2}, Lw1/m0;->x0(JLandroid/database/Cursor;)Lr1/e;

    move-result-object p0

    return-object p0
.end method

.method private i0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw1/k;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lw1/m0$c;",
            ">;>;)",
            "Ljava/util/List<",
            "Lw1/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/k;

    .line 4
    invoke-virtual {v1}, Lw1/k;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lw1/k;->b()Ln1/i;

    move-result-object v2

    invoke-virtual {v2}, Ln1/i;->l()Ln1/i$a;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lw1/k;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw1/m0$c;

    .line 7
    iget-object v5, v4, Lw1/m0$c;->a:Ljava/lang/String;

    iget-object v4, v4, Lw1/m0$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ln1/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ln1/i$a;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lw1/k;->c()J

    move-result-wide v3

    invoke-virtual {v1}, Lw1/k;->d()Ln1/o;

    move-result-object v1

    invoke-virtual {v2}, Ln1/i$a;->d()Ln1/i;

    move-result-object v2

    invoke-static {v3, v4, v1, v2}, Lw1/k;->a(JLn1/o;Ln1/i;)Lw1/k;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static synthetic j(Lw1/m0;Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lw1/m0;->D0(Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    .line 4
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {p0, v2, v3, v0, v1}, Lw1/m0;->d(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static j1(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lw1/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/k;

    invoke-virtual {v1}, Lw1/k;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lw1/m0;->p0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 2
    invoke-virtual {p3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lw1/h0;

    invoke-direct {p2, p0}, Lw1/h0;-><init>(Lw1/m0;)V

    .line 3
    invoke-static {p1, p2}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    const-string p1, "events"

    const-string p2, "timestamp_ms < ?"

    .line 4
    invoke-virtual {p3, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method static l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lw1/m0$b<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lw1/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3
    throw p1
.end method

.method public static synthetic o(JLn1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lw1/m0;->P0(JLn1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroid/database/Cursor;)[B
    .locals 0

    invoke-static {p0}, Lw1/m0;->K0(Landroid/database/Cursor;)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic p0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic q(Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lw1/m0;->C0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lw1/m0;->O0(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic r0(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic s(Lw1/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lw1/m0;->j0(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lw1/m0;Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lw1/m0;->A0(Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic t0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic v(JLandroid/database/sqlite/SQLiteDatabase;)Lr1/e;
    .locals 0

    invoke-static {p0, p1, p2}, Lw1/m0;->y0(JLandroid/database/sqlite/SQLiteDatabase;)Lr1/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lw1/m0;->w0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic w0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic x0(JLandroid/database/Cursor;)Lr1/e;
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3
    invoke-static {}, Lr1/e;->c()Lr1/e$a;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lr1/e$a;->c(J)Lr1/e$a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lr1/e$a;->b(J)Lr1/e$a;

    move-result-object p0

    invoke-virtual {p0}, Lr1/e$a;->a()Lr1/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lw1/m0;Ljava/lang/String;Ljava/util/Map;Lr1/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lr1/a;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw1/m0;->F0(Ljava/lang/String;Ljava/util/Map;Lr1/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lr1/a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic y0(JLandroid/database/sqlite/SQLiteDatabase;)Lr1/e;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 1
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lw1/l;

    invoke-direct {v0, p0, p1}, Lw1/l;-><init>(J)V

    .line 2
    invoke-static {p2, v0}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr1/e;

    return-object p0
.end method

.method private static synthetic z0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public H()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ln1/o;",
            ">;"
        }
    .end annotation

    sget-object v0, Lw1/z;->a:Lw1/z;

    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public H0(Ln1/o;)Z
    .locals 1

    new-instance v0, Lw1/r;

    invoke-direct {v0, p0, p1}, Lw1/r;-><init>(Lw1/m0;Ln1/o;)V

    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public J(Ln1/o;J)V
    .locals 1

    new-instance v0, Lw1/e0;

    invoke-direct {v0, p2, p3, p1}, Lw1/e0;-><init>(JLn1/o;)V

    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method public L1(Ln1/o;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/o;",
            ")",
            "Ljava/lang/Iterable<",
            "Lw1/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw1/q;

    invoke-direct {v0, p0, p1}, Lw1/q;-><init>(Lw1/m0;Ln1/o;)V

    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public Q0(Ln1/o;Ln1/i;)Lw1/k;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ln1/o;->d()Lcom/google/android/datatransport/Priority;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p2}, Ln1/i;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Ln1/o;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    .line 4
    invoke-static {v1, v2, v0}, Ls1/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lw1/p;

    invoke-direct {v0, p0, p2, p1}, Lw1/p;-><init>(Lw1/m0;Ln1/i;Ln1/o;)V

    .line 6
    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lw1/k;->a(JLn1/o;Ln1/i;)Lw1/k;

    move-result-object p1

    return-object p1
.end method

.method X()J
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lw1/m0;->c0()J

    move-result-wide v0

    invoke-direct {p0}, Lw1/m0;->getPageSize()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method Y()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/m0;->a:Lw1/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lw1/d0;

    invoke-direct {v1, v0}, Lw1/d0;-><init>(Lw1/t0;)V

    sget-object v0, Lw1/a0;->a:Lw1/a0;

    .line 3
    invoke-direct {p0, v1, v0}, Lw1/m0;->e1(Lw1/m0$d;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public a()V
    .locals 1

    new-instance v0, Lw1/j0;

    invoke-direct {v0, p0}, Lw1/j0;-><init>(Lw1/m0;)V

    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lx1/a$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx1/a$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lw1/m0;->V(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    :try_start_0
    invoke-interface {p1}, Lx1/a$a;->execute()Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public c()Lr1/a;
    .locals 4

    .line 1
    invoke-static {}, Lr1/a;->e()Lr1/a$a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Lw1/m;

    const-string v3, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-direct {v2, p0, v3, v1, v0}, Lw1/m;-><init>(Lw1/m0;Ljava/lang/String;Ljava/util/Map;Lr1/a$a;)V

    invoke-virtual {p0, v2}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/a;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lw1/m0;->a:Lw1/t0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public d(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lw1/f0;

    invoke-direct {v0, p4, p3, p1, p2}, Lw1/f0;-><init>(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;J)V

    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method public d1(Ln1/o;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ln1/o;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p1}, Ln1/o;->d()Lcom/google/android/datatransport/Priority;

    move-result-object p1

    invoke-static {p1}, Lz1/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v0, Lw1/u;->a:Lw1/u;

    .line 5
    invoke-static {p1, v0}, Lw1/m0;->l1(Landroid/database/Cursor;Lw1/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method g0(Lw1/m0$b;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw1/m0$b<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Lw1/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public u0(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lw1/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Lw1/m0;->j1(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lw1/l0;

    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    invoke-direct {v0, p0, p1, v1}, Lw1/l0;-><init>(Lw1/m0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method public x()I
    .locals 4

    .line 1
    iget-object v0, p0, Lw1/m0;->b:Ly1/a;

    invoke-interface {v0}, Ly1/a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lw1/m0;->d:Lw1/e;

    invoke-virtual {v2}, Lw1/e;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    new-instance v2, Lw1/k0;

    invoke-direct {v2, p0, v0, v1}, Lw1/k0;-><init>(Lw1/m0;J)V

    invoke-virtual {p0, v2}, Lw1/m0;->g0(Lw1/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public z(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lw1/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lw1/m0;->j1(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lw1/m0;->Y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method
