.class final Lcom/google/android/datatransport/cct/internal/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Lcom/google/android/datatransport/cct/internal/k;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$e;

.field private static final b:Ld6/b;

.field private static final c:Ld6/b;

.field private static final d:Ld6/b;

.field private static final e:Ld6/b;

.field private static final f:Ld6/b;

.field private static final g:Ld6/b;

.field private static final h:Ld6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$e;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$e;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->a:Lcom/google/android/datatransport/cct/internal/b$e;

    const-string v0, "requestTimeMs"

    .line 2
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->b:Ld6/b;

    const-string v0, "requestUptimeMs"

    .line 3
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->c:Ld6/b;

    const-string v0, "clientInfo"

    .line 4
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->d:Ld6/b;

    const-string v0, "logSource"

    .line 5
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->e:Ld6/b;

    const-string v0, "logSourceName"

    .line 6
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->f:Ld6/b;

    const-string v0, "logEvent"

    .line 7
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->g:Ld6/b;

    const-string v0, "qosTier"

    .line 8
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->h:Ld6/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/datatransport/cct/internal/k;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$e;->b(Lcom/google/android/datatransport/cct/internal/k;Ld6/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/k;Ld6/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->b:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->c:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 3
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->d:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->b()Lcom/google/android/datatransport/cct/internal/ClientInfo;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 4
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->e:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 5
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->f:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 6
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->g:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 7
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$e;->h:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/k;->f()Lcom/google/android/datatransport/cct/internal/QosTier;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    return-void
.end method
