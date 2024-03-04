.class public abstract Lcom/google/api/client/http/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/api/client/http/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/s;->a:Ljava/util/logging/Logger;

    const-string v0, "DELETE"

    const-string v1, "GET"

    const-string v2, "POST"

    const-string v3, "PUT"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/s;->b:[Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/api/client/http/m;
    .locals 2

    new-instance v0, Lcom/google/api/client/http/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/m;-><init>(Lcom/google/api/client/http/s;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/u;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c()Lcom/google/api/client/http/n;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/s;->d(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/n;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/n;
    .locals 1

    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/http/n;-><init>(Lcom/google/api/client/http/s;Lcom/google/api/client/http/o;)V

    return-object v0
.end method
