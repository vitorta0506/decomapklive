.class public Lcom/google/cloud/speech/v1/n$a;
.super Lcom/google/api/gax/rpc/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/k$a<",
        "Lcom/google/cloud/speech/v1/n;",
        "Lcom/google/cloud/speech/v1/n$a;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/cloud/speech/v1/n$a;-><init>(Lcom/google/api/gax/rpc/j;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/gax/rpc/j;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lu5/d;->y(Lcom/google/api/gax/rpc/j;)Lu5/d$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/k$a;-><init>(Lcom/google/api/gax/rpc/g0$a;)V

    return-void
.end method

.method protected constructor <init>(Lu5/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/k$a;-><init>(Lcom/google/api/gax/rpc/g0$a;)V

    return-void
.end method

.method static synthetic o()Lcom/google/cloud/speech/v1/n$a;
    .locals 1

    invoke-static {}, Lcom/google/cloud/speech/v1/n$a;->q()Lcom/google/cloud/speech/v1/n$a;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/google/cloud/speech/v1/n$a;
    .locals 2

    new-instance v0, Lcom/google/cloud/speech/v1/n$a;

    invoke-static {}, Lu5/d;->x()Lu5/d$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/cloud/speech/v1/n$a;-><init>(Lu5/d$a;)V

    return-object v0
.end method


# virtual methods
.method public p()Lcom/google/cloud/speech/v1/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/cloud/speech/v1/n;

    invoke-direct {v0, p0}, Lcom/google/cloud/speech/v1/n;-><init>(Lcom/google/cloud/speech/v1/n$a;)V

    return-object v0
.end method
