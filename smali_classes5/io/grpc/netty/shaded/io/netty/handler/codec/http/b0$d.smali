.class final enum Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum e:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field public static final enum k:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

.field private static final synthetic l:[Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v1, "SKIP_CONTROL_CHARS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v3, "READ_INITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 3
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v5, "READ_HEADER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 4
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v7, "READ_VARIABLE_LENGTH_CONTENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 5
    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v9, "READ_FIXED_LENGTH_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 6
    new-instance v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v11, "READ_CHUNK_SIZE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 7
    new-instance v11, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v13, "READ_CHUNKED_CONTENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 8
    new-instance v13, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v15, "READ_CHUNK_DELIMITER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 9
    new-instance v15, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v14, "READ_CHUNK_FOOTER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 10
    new-instance v14, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v12, "BAD_MESSAGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    .line 11
    new-instance v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const-string v10, "UPGRADED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    const/16 v10, 0xb

    new-array v10, v10, [Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->l:[Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->l:[Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0$d;

    return-object v0
.end method
