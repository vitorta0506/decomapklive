.class public final Lcom/google/api/client/http/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;


# instance fields
.field private final A:Lio/opencensus/trace/h;

.field private B:Z

.field private a:Lcom/google/api/client/http/i;

.field private b:Lcom/google/api/client/http/j;

.field private c:Lcom/google/api/client/http/j;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/google/api/client/http/f;

.field private final i:Lcom/google/api/client/http/s;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/api/client/http/d;

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/google/api/client/http/t;

.field private p:Lcom/google/api/client/http/k;

.field private q:Lcom/google/api/client/http/q;

.field private r:Lcom/google/api/client/util/w;

.field private s:Lcom/google/api/client/http/g;

.field private t:Lcom/google/api/client/http/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private y:Z

.field private z:Lcom/google/api/client/util/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/api/client/http/m;->k()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/m;->C:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google-HTTP-Java-Client/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (gzip)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/m;->D:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/s;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/api/client/http/j;

    invoke-direct {v0}, Lcom/google/api/client/http/j;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    .line 3
    new-instance v0, Lcom/google/api/client/http/j;

    invoke-direct {v0}, Lcom/google/api/client/http/j;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/m;->c:Lcom/google/api/client/http/j;

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/google/api/client/http/m;->d:I

    const/16 v0, 0x4000

    .line 5
    iput v0, p0, Lcom/google/api/client/http/m;->e:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/api/client/http/m;->f:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/api/client/http/m;->g:Z

    const/16 v1, 0x4e20

    .line 8
    iput v1, p0, Lcom/google/api/client/http/m;->l:I

    .line 9
    iput v1, p0, Lcom/google/api/client/http/m;->m:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/google/api/client/http/m;->n:I

    .line 11
    iput-boolean v0, p0, Lcom/google/api/client/http/m;->u:Z

    .line 12
    iput-boolean v1, p0, Lcom/google/api/client/http/m;->v:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/api/client/http/m;->w:Z

    .line 14
    iput-boolean v1, p0, Lcom/google/api/client/http/m;->x:Z

    .line 15
    sget-object v0, Lcom/google/api/client/util/c0;->a:Lcom/google/api/client/util/c0;

    iput-object v0, p0, Lcom/google/api/client/http/m;->z:Lcom/google/api/client/util/c0;

    .line 16
    invoke-static {}, Lcom/google/api/client/http/w;->b()Lio/opencensus/trace/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/m;->A:Lio/opencensus/trace/h;

    .line 17
    iput-boolean v1, p0, Lcom/google/api/client/http/m;->B:Z

    .line 18
    iput-object p1, p0, Lcom/google/api/client/http/m;->i:Lcom/google/api/client/http/s;

    .line 19
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/m;->s(Ljava/lang/String;)Lcom/google/api/client/http/m;

    return-void
.end method

.method private static a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lmh/a;->b(Ljava/lang/String;)Lmh/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/Span;->i(Ljava/lang/String;Lmh/a;)V

    :cond_0
    return-void
.end method

.method private static k()Ljava/lang/String;
    .locals 4

    const-string v0, "unknown-version"

    .line 1
    :try_start_0
    const-class v1, Lcom/google/api/client/http/m;

    const-string v2, "/com/google/api/client/http/google-http-client.properties"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "google-http-client.version"

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 6
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    .line 7
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/api/client/http/p;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Lcom/google/api/client/http/m;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/z;->a(Z)V

    .line 2
    iget v0, v1, Lcom/google/api/client/http/m;->d:I

    .line 3
    iget-object v4, v1, Lcom/google/api/client/http/m;->t:Lcom/google/api/client/http/b;

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v4}, Lcom/google/api/client/http/b;->reset()V

    .line 5
    :cond_1
    iget-object v4, v1, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Lcom/google/api/client/http/m;->k:Lcom/google/api/client/http/d;

    invoke-static {v4}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v4, v1, Lcom/google/api/client/http/m;->A:Lio/opencensus/trace/h;

    sget-object v5, Lcom/google/api/client/http/w;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Lio/opencensus/trace/h;->b(Ljava/lang/String;)Lio/opencensus/trace/f;

    move-result-object v4

    .line 9
    invoke-static {}, Lcom/google/api/client/http/w;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Lio/opencensus/trace/f;->a(Z)Lio/opencensus/trace/f;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Lio/opencensus/trace/f;->b()Lio/opencensus/trace/Span;

    move-result-object v4

    move v6, v0

    const/4 v0, 0x0

    .line 11
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/google/api/client/http/m;->d:I

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/opencensus/trace/Span;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->i()V

    .line 13
    :cond_2
    iget-object v0, v1, Lcom/google/api/client/http/m;->a:Lcom/google/api/client/http/i;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, v1}, Lcom/google/api/client/http/i;->a(Lcom/google/api/client/http/m;)V

    .line 15
    :cond_3
    iget-object v0, v1, Lcom/google/api/client/http/m;->k:Lcom/google/api/client/http/d;

    invoke-virtual {v0}, Lcom/google/api/client/http/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v7, v1, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    const-string v8, "http.method"

    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/m;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v7, v1, Lcom/google/api/client/http/m;->k:Lcom/google/api/client/http/d;

    invoke-virtual {v7}, Lcom/google/api/client/http/d;->m()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http.host"

    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/m;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v7, v1, Lcom/google/api/client/http/m;->k:Lcom/google/api/client/http/d;

    invoke-virtual {v7}, Lcom/google/api/client/http/d;->n()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http.path"

    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/m;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "http.url"

    .line 19
    invoke-static {v4, v7, v0}, Lcom/google/api/client/http/m;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v7, v1, Lcom/google/api/client/http/m;->i:Lcom/google/api/client/http/s;

    iget-object v8, v1, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/google/api/client/http/s;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/u;

    move-result-object v7

    .line 21
    sget-object v8, Lcom/google/api/client/http/s;->a:Ljava/util/logging/Logger;

    .line 22
    iget-boolean v9, v1, Lcom/google/api/client/http/m;->f:Z

    if-eqz v9, :cond_4

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    .line 23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-------------- REQUEST  --------------"

    .line 24
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/google/api/client/util/e0;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v12, v1, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    .line 26
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    .line 27
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v11, v1, Lcom/google/api/client/http/m;->g:Z

    if-eqz v11, :cond_6

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "curl -v --compressed"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v12, v1, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    const-string v13, "GET"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, " -X "

    .line 33
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :cond_6
    const/4 v11, 0x0

    .line 34
    :cond_7
    :goto_3
    iget-object v12, v1, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {v12}, Lcom/google/api/client/http/j;->m()Ljava/lang/String;

    move-result-object v12

    .line 35
    iget-boolean v13, v1, Lcom/google/api/client/http/m;->y:Z

    if-nez v13, :cond_9

    const-string v13, "http.user_agent"

    if-nez v12, :cond_8

    .line 36
    iget-object v14, v1, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    sget-object v15, Lcom/google/api/client/http/m;->D:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/api/client/http/j;->z(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 37
    invoke-static {v4, v13, v15}, Lcom/google/api/client/http/m;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/google/api/client/http/m;->D:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 39
    iget-object v15, v1, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {v15, v14}, Lcom/google/api/client/http/j;->z(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 40
    invoke-static {v4, v13, v14}, Lcom/google/api/client/http/m;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_9
    :goto_4
    iget-object v13, v1, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-static {v4, v13}, Lcom/google/api/client/http/w;->d(Lio/opencensus/trace/Span;Lcom/google/api/client/http/j;)V

    .line 42
    iget-object v13, v1, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-static {v13, v10, v11, v8, v7}, Lcom/google/api/client/http/j;->p(Lcom/google/api/client/http/j;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/u;)V

    .line 43
    iget-boolean v13, v1, Lcom/google/api/client/http/m;->y:Z

    if-nez v13, :cond_a

    .line 44
    iget-object v13, v1, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {v13, v12}, Lcom/google/api/client/http/j;->z(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 45
    :cond_a
    iget-object v12, v1, Lcom/google/api/client/http/m;->h:Lcom/google/api/client/http/f;

    if-eqz v12, :cond_c

    .line 46
    invoke-interface {v12}, Lcom/google/api/client/http/f;->b()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v13, 0x1

    :goto_6
    const-string v2, "\'"

    if-eqz v12, :cond_15

    .line 47
    iget-object v3, v1, Lcom/google/api/client/http/m;->h:Lcom/google/api/client/http/f;

    invoke-interface {v3}, Lcom/google/api/client/http/f;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_d

    .line 48
    new-instance v14, Lcom/google/api/client/util/t;

    sget-object v15, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v5, v1, Lcom/google/api/client/http/m;->e:I

    invoke-direct {v14, v12, v8, v15, v5}, Lcom/google/api/client/util/t;-><init>(Lcom/google/api/client/util/d0;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v12, v14

    .line 49
    :cond_d
    iget-object v5, v1, Lcom/google/api/client/http/m;->s:Lcom/google/api/client/http/g;

    if-nez v5, :cond_e

    .line 50
    iget-object v5, v1, Lcom/google/api/client/http/m;->h:Lcom/google/api/client/http/f;

    invoke-interface {v5}, Lcom/google/api/client/http/f;->a()J

    move-result-wide v14

    const/4 v5, 0x0

    goto :goto_7

    .line 51
    :cond_e
    invoke-interface {v5}, Lcom/google/api/client/http/g;->getName()Ljava/lang/String;

    move-result-object v5

    .line 52
    new-instance v14, Lcom/google/api/client/http/h;

    iget-object v15, v1, Lcom/google/api/client/http/m;->s:Lcom/google/api/client/http/g;

    invoke-direct {v14, v12, v15}, Lcom/google/api/client/http/h;-><init>(Lcom/google/api/client/util/d0;Lcom/google/api/client/http/g;)V

    move-object v12, v14

    const-wide/16 v14, -0x1

    :goto_7
    move-object/from16 v16, v4

    if-eqz v9, :cond_12

    const-string v4, " -H \'"

    if-eqz v3, :cond_f

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    const-string v6, "Content-Type: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/util/e0;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_10

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_f
    move/from16 v17, v6

    :cond_10
    :goto_8
    if-eqz v5, :cond_11

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Encoding: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/util/e0;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_11

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-wide/16 v18, 0x0

    cmp-long v1, v14, v18

    if-ltz v1, :cond_13

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/api/client/util/e0;->a:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    move/from16 v17, v6

    :cond_13
    :goto_9
    if-eqz v11, :cond_14

    const-string v1, " -d \'@-\'"

    .line 61
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_14
    invoke-virtual {v7, v3}, Lcom/google/api/client/http/u;->i(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v7, v5}, Lcom/google/api/client/http/u;->g(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v7, v14, v15}, Lcom/google/api/client/http/u;->h(J)V

    .line 65
    invoke-virtual {v7, v12}, Lcom/google/api/client/http/u;->j(Lcom/google/api/client/util/d0;)V

    goto :goto_a

    :cond_15
    move-object/from16 v16, v4

    move/from16 v17, v6

    :goto_a
    if-eqz v9, :cond_17

    .line 66
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eqz v11, :cond_17

    const-string v1, " -- \'"

    .line 67
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\"\'\"\'"

    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_16

    const-string v0, " << $$$"

    .line 70
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_16
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_17
    if-eqz v13, :cond_18

    if-lez v17, :cond_18

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    move-object/from16 v1, p0

    .line 72
    iget v0, v1, Lcom/google/api/client/http/m;->l:I

    iget v3, v1, Lcom/google/api/client/http/m;->m:I

    invoke-virtual {v7, v0, v3}, Lcom/google/api/client/http/u;->k(II)V

    .line 73
    iget v0, v1, Lcom/google/api/client/http/m;->n:I

    invoke-virtual {v7, v0}, Lcom/google/api/client/http/u;->l(I)V

    .line 74
    iget-object v0, v1, Lcom/google/api/client/http/m;->A:Lio/opencensus/trace/h;

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Lio/opencensus/trace/h;->d(Lio/opencensus/trace/Span;)Ljh/a;

    move-result-object v4

    .line 75
    invoke-virtual {v7}, Lcom/google/api/client/http/u;->d()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/api/client/http/w;->g(Lio/opencensus/trace/Span;J)V

    .line 76
    :try_start_0
    invoke-virtual {v7}, Lcom/google/api/client/http/u;->b()Lcom/google/api/client/http/v;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 77
    invoke-virtual {v5}, Lcom/google/api/client/http/v;->d()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/google/api/client/http/w;->f(Lio/opencensus/trace/Span;J)V

    const-string v0, "http.status_code"

    .line 78
    invoke-virtual {v5}, Lcom/google/api/client/http/v;->j()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lmh/a;->a(J)Lmh/a;

    move-result-object v6

    .line 79
    invoke-virtual {v3, v0, v6}, Lio/opencensus/trace/Span;->i(Ljava/lang/String;Lmh/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :cond_19
    :try_start_1
    new-instance v0, Lcom/google/api/client/http/p;

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/http/p;-><init>(Lcom/google/api/client/http/m;Lcom/google/api/client/http/v;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-interface {v4}, Ljh/a;->close()V

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_d

    :catchall_0
    move-exception v0

    .line 82
    :try_start_2
    invoke-virtual {v5}, Lcom/google/api/client/http/v;->b()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 83
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_1a
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    .line 85
    :try_start_3
    iget-boolean v5, v1, Lcom/google/api/client/http/m;->x:Z

    if-nez v5, :cond_1c

    iget-object v5, v1, Lcom/google/api/client/http/m;->p:Lcom/google/api/client/http/k;

    if-eqz v5, :cond_1b

    .line 86
    invoke-interface {v5, v1, v2}, Lcom/google/api/client/http/k;->a(Lcom/google/api/client/http/m;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_c

    :cond_1b
    const/4 v5, 0x0

    .line 87
    invoke-static {v5}, Lcom/google/api/client/http/w;->a(Ljava/lang/Integer;)Lmh/i;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/opencensus/trace/Span;->g(Lmh/i;)V

    .line 88
    throw v0

    :cond_1c
    :goto_c
    const/4 v5, 0x0

    if-eqz v9, :cond_1d

    .line 89
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "exception thrown while executing request"

    invoke-virtual {v8, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :cond_1d
    invoke-interface {v4}, Ljh/a;->close()V

    move-object v4, v5

    :goto_d
    if-eqz v4, :cond_21

    .line 91
    :try_start_4
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->j()Z

    move-result v6

    if-nez v6, :cond_21

    .line 92
    iget-object v6, v1, Lcom/google/api/client/http/m;->o:Lcom/google/api/client/http/t;

    if-eqz v6, :cond_1e

    .line 93
    invoke-interface {v6, v1, v4, v2}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/m;Lcom/google/api/client/http/p;Z)Z

    move-result v6

    goto :goto_e

    :cond_1e
    const/4 v6, 0x0

    :goto_e
    if-nez v6, :cond_20

    .line 94
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->f()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/api/client/http/p;->d()Lcom/google/api/client/http/j;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/google/api/client/http/m;->l(ILcom/google/api/client/http/j;)Z

    move-result v7

    if-eqz v7, :cond_1f

    :catch_1
    :goto_f
    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    if-eqz v2, :cond_20

    .line 95
    iget-object v7, v1, Lcom/google/api/client/http/m;->t:Lcom/google/api/client/http/b;

    if-eqz v7, :cond_20

    .line 96
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->f()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/google/api/client/http/b;->b(I)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 97
    iget-object v7, v1, Lcom/google/api/client/http/m;->t:Lcom/google/api/client/http/b;

    invoke-interface {v7}, Lcom/google/api/client/http/b;->a()J

    move-result-wide v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_20

    .line 98
    :try_start_5
    iget-object v6, v1, Lcom/google/api/client/http/m;->z:Lcom/google/api/client/util/c0;

    invoke-interface {v6, v7, v8}, Lcom/google/api/client/util/c0;->a(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_f

    :cond_20
    :goto_10
    and-int/2addr v2, v6

    if-eqz v2, :cond_23

    .line 99
    :try_start_6
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->i()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_12

    :catchall_2
    move-exception v0

    .line 100
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->a()V

    .line 101
    throw v0

    :cond_21
    if-nez v4, :cond_22

    const/4 v6, 0x1

    goto :goto_11

    :cond_22
    const/4 v6, 0x0

    :goto_11
    and-int/2addr v2, v6

    :cond_23
    :goto_12
    add-int/lit8 v6, v17, -0x1

    if-nez v2, :cond_29

    if-nez v4, :cond_24

    goto :goto_13

    .line 102
    :cond_24
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_13
    invoke-static {v5}, Lcom/google/api/client/http/w;->a(Ljava/lang/Integer;)Lmh/i;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/opencensus/trace/Span;->g(Lmh/i;)V

    if-eqz v4, :cond_28

    .line 103
    iget-object v0, v1, Lcom/google/api/client/http/m;->q:Lcom/google/api/client/http/q;

    if-eqz v0, :cond_25

    .line 104
    invoke-interface {v0, v4}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/p;)V

    .line 105
    :cond_25
    iget-boolean v0, v1, Lcom/google/api/client/http/m;->w:Z

    if-eqz v0, :cond_27

    invoke-virtual {v4}, Lcom/google/api/client/http/p;->j()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_14

    .line 106
    :cond_26
    :try_start_7
    new-instance v0, Lcom/google/api/client/http/HttpResponseException$a;

    invoke-direct {v0, v4}, Lcom/google/api/client/http/HttpResponseException$a;-><init>(Lcom/google/api/client/http/p;)V

    iget v2, v1, Lcom/google/api/client/http/m;->d:I

    sub-int/2addr v2, v6

    .line 107
    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpResponseException$a;->b(I)Lcom/google/api/client/http/HttpResponseException$a;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException$a;->a()Lcom/google/api/client/http/HttpResponseException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 109
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->a()V

    .line 110
    throw v0

    :cond_27
    :goto_14
    return-object v4

    .line 111
    :cond_28
    throw v0

    :cond_29
    move-object v0, v4

    move-object v4, v3

    goto/16 :goto_1

    .line 112
    :goto_15
    invoke-interface {v4}, Ljh/a;->close()V

    .line 113
    throw v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/api/client/http/m;->e:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/http/m;->u:Z

    return v0
.end method

.method public e()Lcom/google/api/client/http/j;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final f()Lcom/google/api/client/util/w;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/m;->r:Lcom/google/api/client/util/w;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/google/api/client/http/j;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/m;->c:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/http/m;->B:Z

    return v0
.end method

.method public j()Lcom/google/api/client/http/d;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/m;->k:Lcom/google/api/client/http/d;

    return-object v0
.end method

.method public l(ILcom/google/api/client/http/j;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/api/client/http/j;->l()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/m;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/client/http/r;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 4
    new-instance v0, Lcom/google/api/client/http/d;

    iget-object v1, p0, Lcom/google/api/client/http/m;->k:Lcom/google/api/client/http/d;

    invoke-virtual {v1, p2}, Lcom/google/api/client/http/d;->u(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    iget-boolean v1, p0, Lcom/google/api/client/http/m;->v:Z

    invoke-direct {v0, p2, v1}, Lcom/google/api/client/http/d;-><init>(Ljava/net/URL;Z)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/m;->v(Lcom/google/api/client/http/d;)Lcom/google/api/client/http/m;

    const/16 p2, 0x12f

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const-string p1, "GET"

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/m;->s(Ljava/lang/String;)Lcom/google/api/client/http/m;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/m;->o(Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/j;->s(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 8
    iget-object p1, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/j;->u(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 9
    iget-object p1, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/j;->w(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 10
    iget-object p1, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/j;->v(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 11
    iget-object p1, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/j;->y(Ljava/lang/String;)Lcom/google/api/client/http/j;

    .line 12
    iget-object p1, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/j;->x(Ljava/lang/String;)Lcom/google/api/client/http/j;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/http/m;->f:Z

    return v0
.end method

.method public n(I)Lcom/google/api/client/http/m;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/z;->a(Z)V

    .line 2
    iput p1, p0, Lcom/google/api/client/http/m;->l:I

    return-object p0
.end method

.method public o(Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/m;->h:Lcom/google/api/client/http/f;

    return-object p0
.end method

.method public p(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/m;
    .locals 0

    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/j;

    iput-object p1, p0, Lcom/google/api/client/http/m;->b:Lcom/google/api/client/http/j;

    return-object p0
.end method

.method public q(I)Lcom/google/api/client/http/m;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/z;->a(Z)V

    .line 2
    iput p1, p0, Lcom/google/api/client/http/m;->d:I

    return-object p0
.end method

.method public r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/m;->r:Lcom/google/api/client/util/w;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/google/api/client/http/m;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/google/api/client/http/l;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/z;->a(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/http/m;->j:Ljava/lang/String;

    return-object p0
.end method

.method public t(Z)Lcom/google/api/client/http/m;
    .locals 0

    iput-boolean p1, p0, Lcom/google/api/client/http/m;->w:Z

    return-object p0
.end method

.method public u(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/m;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/m;->o:Lcom/google/api/client/http/t;

    return-object p0
.end method

.method public v(Lcom/google/api/client/http/d;)Lcom/google/api/client/http/m;
    .locals 0

    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/d;

    iput-object p1, p0, Lcom/google/api/client/http/m;->k:Lcom/google/api/client/http/d;

    return-object p0
.end method
