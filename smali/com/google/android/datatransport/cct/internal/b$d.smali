.class final Lcom/google/android/datatransport/cct/internal/b$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Lcom/google/android/datatransport/cct/internal/j;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$d;

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
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$d;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$d;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->a:Lcom/google/android/datatransport/cct/internal/b$d;

    const-string v0, "eventTimeMs"

    .line 2
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->b:Ld6/b;

    const-string v0, "eventCode"

    .line 3
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->c:Ld6/b;

    const-string v0, "eventUptimeMs"

    .line 4
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->d:Ld6/b;

    const-string v0, "sourceExtension"

    .line 5
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->e:Ld6/b;

    const-string v0, "sourceExtensionJsonProto3"

    .line 6
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->f:Ld6/b;

    const-string v0, "timezoneOffsetSeconds"

    .line 7
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->g:Ld6/b;

    const-string v0, "networkConnectionInfo"

    .line 8
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->h:Ld6/b;

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

    check-cast p1, Lcom/google/android/datatransport/cct/internal/j;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$d;->b(Lcom/google/android/datatransport/cct/internal/j;Ld6/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/j;Ld6/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->b:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->c:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 3
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->d:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 4
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->e:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->f()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 5
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->f:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 6
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->g:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 7
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$d;->h:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->e()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    return-void
.end method
