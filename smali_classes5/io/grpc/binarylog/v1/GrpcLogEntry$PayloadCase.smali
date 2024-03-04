.class public final enum Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/binarylog/v1/GrpcLogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

.field public static final enum CLIENT_HEADER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

.field public static final enum MESSAGE:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

.field public static final enum SERVER_HEADER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

.field public static final enum TRAILER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    const-string v1, "CLIENT_HEADER"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->CLIENT_HEADER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    .line 2
    new-instance v1, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    const-string v3, "SERVER_HEADER"

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->SERVER_HEADER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    .line 3
    new-instance v3, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    const-string v5, "MESSAGE"

    const/4 v6, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v6, v7}, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->MESSAGE:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    .line 4
    new-instance v5, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    const-string v7, "TRAILER"

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v8, v9}, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->TRAILER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    .line 5
    new-instance v7, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    const-string v9, "PAYLOAD_NOT_SET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->PAYLOAD_NOT_SET:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->$VALUES:[Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->TRAILER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->MESSAGE:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->SERVER_HEADER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->CLIENT_HEADER:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->PAYLOAD_NOT_SET:Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->forNumber(I)Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;
    .locals 1

    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->$VALUES:[Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    invoke-virtual {v0}, [Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->value:I

    return v0
.end method
