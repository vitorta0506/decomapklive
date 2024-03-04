.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v4, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const-string v5, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const-string v6, "TLS_AES_128_GCM_SHA256"

    const-string v7, "TLS_AES_256_GCM_SHA384"

    const-string v8, "TLS_CHACHA20_POLY1305_SHA256"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w0;->b:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w0;->a:Ljava/util/List;

    return-void
.end method
