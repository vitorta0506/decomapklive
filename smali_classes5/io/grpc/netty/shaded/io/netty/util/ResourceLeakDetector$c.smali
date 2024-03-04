.class Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final d:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

.field private static final serialVersionUID:J = 0x542bc121fc24b620L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->d:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->b:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->b:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    .line 9
    iget p1, p1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c:I

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 3
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/util/u;

    if-eqz v0, :cond_0

    check-cast p2, Lio/grpc/netty/shaded/io/netty/util/u;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/u;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->b:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    .line 5
    iget p1, p1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c:I

    return-void
.end method

.method static synthetic a()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->d:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    return-object v0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c:I

    return p0
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->b:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "\tHint: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    .line 5
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 6
    aget-object v3, v1, v2

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->c()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 8
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 9
    aget-object v6, v4, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget-object v6, v4, v6

    .line 10
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_2
    const/16 v4, 0x9

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
