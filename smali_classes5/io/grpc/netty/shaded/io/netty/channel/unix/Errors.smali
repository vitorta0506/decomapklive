.class public final Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field private static final m:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoENOENT()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->a:I

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoENOTCONN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->b:I

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEBADF()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c:I

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEPIPE()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->d:I

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoECONNRESET()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e:I

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEAGAIN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->f:I

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEWOULDBLOCK()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->g:I

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEINPROGRESS()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->h:I

    .line 9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorECONNREFUSED()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->i:I

    .line 10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorEISCONN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->j:I

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorEALREADY()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->k:I

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorENETUNREACH()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->l:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    .line 13
    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->m:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    :goto_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->m:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 15
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->strError(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static b(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->h:I

    if-eq p1, v0, :cond_1

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->k:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->d(Ljava/lang/String;I)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->f:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->g:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c:I

    if-eq p1, v0, :cond_3

    .line 3
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->b:I

    if-eq p1, v0, :cond_2

    .line 4
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->a:I

    if-ne p1, v0, :cond_1

    .line 5
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;-><init>(Ljava/lang/String;IZ)V

    throw v0

    .line 7
    :cond_2
    new-instance p0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {p0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw p0

    .line 8
    :cond_3
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0

    :cond_4
    :goto_0
    return v1
.end method

.method private static d(Ljava/lang/String;I)Ljava/io/IOException;
    .locals 2

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->l:I

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p0, Ljava/net/NoRouteToHostException;

    invoke-direct {p0}, Ljava/net/NoRouteToHostException;-><init>()V

    return-object p0

    .line 3
    :cond_0
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->j:I

    if-eq p1, v0, :cond_2

    .line 4
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->a:I

    if-ne p1, v0, :cond_1

    .line 5
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(..) failed: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->m:[Ljava/lang/String;

    neg-int p1, p1

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    new-instance p0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {p0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw p0
.end method

.method public static e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
