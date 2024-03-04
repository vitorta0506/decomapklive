.class final Lcom/google/android/datatransport/cct/internal/b$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$f;

.field private static final b:Ld6/b;

.field private static final c:Ld6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$f;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$f;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$f;->a:Lcom/google/android/datatransport/cct/internal/b$f;

    const-string v0, "networkType"

    .line 2
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$f;->b:Ld6/b;

    const-string v0, "mobileSubtype"

    .line 3
    invoke-static {v0}, Ld6/b;->d(Ljava/lang/String;)Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$f;->c:Ld6/b;

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

    check-cast p1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$f;->b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Ld6/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Ld6/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$f;->b:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->c()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 2
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$f;->c:Ld6/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->b()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    return-void
.end method
