.class public final enum Lio/grpc/stub/InternalClientCalls$StubType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/stub/InternalClientCalls$StubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/stub/InternalClientCalls$StubType;

.field public static final enum ASYNC:Lio/grpc/stub/InternalClientCalls$StubType;

.field public static final enum BLOCKING:Lio/grpc/stub/InternalClientCalls$StubType;

.field public static final enum FUTURE:Lio/grpc/stub/InternalClientCalls$StubType;


# instance fields
.field private final internalType:Lio/grpc/stub/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/grpc/stub/InternalClientCalls$StubType;

    sget-object v1, Lio/grpc/stub/e$e;->a:Lio/grpc/stub/e$e;

    const-string v2, "BLOCKING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/grpc/stub/InternalClientCalls$StubType;-><init>(Ljava/lang/String;ILio/grpc/stub/e$e;)V

    sput-object v0, Lio/grpc/stub/InternalClientCalls$StubType;->BLOCKING:Lio/grpc/stub/InternalClientCalls$StubType;

    .line 2
    new-instance v1, Lio/grpc/stub/InternalClientCalls$StubType;

    sget-object v2, Lio/grpc/stub/e$e;->c:Lio/grpc/stub/e$e;

    const-string v4, "ASYNC"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/grpc/stub/InternalClientCalls$StubType;-><init>(Ljava/lang/String;ILio/grpc/stub/e$e;)V

    sput-object v1, Lio/grpc/stub/InternalClientCalls$StubType;->ASYNC:Lio/grpc/stub/InternalClientCalls$StubType;

    .line 3
    new-instance v2, Lio/grpc/stub/InternalClientCalls$StubType;

    sget-object v4, Lio/grpc/stub/e$e;->b:Lio/grpc/stub/e$e;

    const-string v6, "FUTURE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/grpc/stub/InternalClientCalls$StubType;-><init>(Ljava/lang/String;ILio/grpc/stub/e$e;)V

    sput-object v2, Lio/grpc/stub/InternalClientCalls$StubType;->FUTURE:Lio/grpc/stub/InternalClientCalls$StubType;

    const/4 v4, 0x3

    new-array v4, v4, [Lio/grpc/stub/InternalClientCalls$StubType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 4
    sput-object v4, Lio/grpc/stub/InternalClientCalls$StubType;->$VALUES:[Lio/grpc/stub/InternalClientCalls$StubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/grpc/stub/e$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/e$e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/grpc/stub/InternalClientCalls$StubType;->internalType:Lio/grpc/stub/e$e;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/stub/InternalClientCalls$StubType;)Lio/grpc/stub/e$e;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/InternalClientCalls$StubType;->internalType:Lio/grpc/stub/e$e;

    return-object p0
.end method

.method public static of(Lio/grpc/stub/e$e;)Lio/grpc/stub/InternalClientCalls$StubType;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/stub/InternalClientCalls$StubType;->values()[Lio/grpc/stub/InternalClientCalls$StubType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lio/grpc/stub/InternalClientCalls$StubType;->internalType:Lio/grpc/stub/e$e;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown StubType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/stub/InternalClientCalls$StubType;
    .locals 1

    const-class v0, Lio/grpc/stub/InternalClientCalls$StubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/stub/InternalClientCalls$StubType;

    return-object p0
.end method

.method public static values()[Lio/grpc/stub/InternalClientCalls$StubType;
    .locals 1

    sget-object v0, Lio/grpc/stub/InternalClientCalls$StubType;->$VALUES:[Lio/grpc/stub/InternalClientCalls$StubType;

    invoke-virtual {v0}, [Lio/grpc/stub/InternalClientCalls$StubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/stub/InternalClientCalls$StubType;

    return-object v0
.end method
