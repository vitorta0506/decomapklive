.class final Lcom/google/android/datatransport/cct/internal/b$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Lcom/google/android/datatransport/cct/internal/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$a;

.field private static final b:Ld6/b;

.field private static final c:Ld6/b;

.field private static final d:Ld6/b;

.field private static final e:Ld6/b;

.field private static final f:Ld6/b;

.field private static final g:Ld6/b;

.field private static final h:Ld6/b;

.field private static final i:Ld6/b;

.field private static final j:Ld6/b;

.field private static final k:Ld6/b;

.field private static final l:Ld6/b;

.field private static final m:Ld6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$a;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$a;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->a:Lcom/google/android/datatransport/cct/internal/b$a;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->b:Ld6/b;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->c:Ld6/b;

    const-string v0, "hardware"

    .line 4
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->d:Ld6/b;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->e:Ld6/b;

    const-string v0, "product"

    .line 6
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->f:Ld6/b;

    const-string v0, "osBuild"

    .line 7
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->g:Ld6/b;

    const-string v0, "manufacturer"

    .line 8
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->h:Ld6/b;

    const-string v0, "fingerprint"

    .line 9
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->i:Ld6/b;

    const-string v0, "locale"

    .line 10
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->j:Ld6/b;

    const-string v0, "country"

    .line 11
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->k:Ld6/b;

    const-string v0, "mccMnc"

    .line 12
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->l:Ld6/b;

    const-string v0, "applicationBuild"

    .line 13
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->m:Ld6/b;

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

    check-cast p1, Lcom/google/android/datatransport/cct/internal/a;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$a;->b(Lcom/google/android/datatransport/cct/internal/a;Ld6/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/a;Ld6/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->b:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->c:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 3
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->d:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 4
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->e:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 5
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->f:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 6
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->g:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 7
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->h:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 8
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->i:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 9
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->j:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 10
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->k:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 11
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->l:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 12
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$a;->m:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    return-void
.end method
