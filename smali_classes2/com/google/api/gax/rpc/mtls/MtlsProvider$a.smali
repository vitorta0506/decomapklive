.class Lcom/google/api/gax/rpc/mtls/MtlsProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/mtls/MtlsProvider$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/mtls/MtlsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/Process;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->a(Ljava/io/InputStream;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method
