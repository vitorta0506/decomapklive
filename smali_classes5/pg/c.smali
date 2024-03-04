.class final Lpg/c;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg/c$d;,
        Lpg/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final e:Lpg/c$c;

.field private static final f:Lug/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/n<",
            "Lpg/c$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lpg/c$c;

.field private b:I

.field private c:[Ljava/lang/Object;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpg/c$a;

    invoke-direct {v0}, Lpg/c$a;-><init>()V

    sput-object v0, Lpg/c;->e:Lpg/c$c;

    .line 2
    new-instance v0, Lpg/c$b;

    invoke-direct {v0}, Lpg/c$b;-><init>()V

    sput-object v0, Lpg/c;->f:Lug/n;

    return-void
.end method

.method private constructor <init>(Lpg/c$c;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, Lpg/c;->a:Lpg/c$c;

    .line 4
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lpg/c;->c:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lpg/c$c;ILpg/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lpg/c;-><init>(Lpg/c$c;I)V

    return-void
.end method

.method static synthetic c()Lpg/c$c;
    .locals 1

    sget-object v0, Lpg/c;->e:Lpg/c$c;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    .line 1
    iget v0, p0, Lpg/c;->b:I

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: index < ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lpg/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "),but actual is ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lpg/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lpg/c;->c:[Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    .line 2
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v1, p0, Lpg/c;->c:[Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private m(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpg/c;->c:[Ljava/lang/Object;

    aput-object p2, v0, p1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lpg/c;->d:Z

    return-void
.end method

.method static u()Lpg/c;
    .locals 1

    sget-object v0, Lpg/c;->f:Lug/n;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpg/c$d;

    invoke-virtual {v0}, Lpg/c$d;->b()Lpg/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3

    const-string v0, "element"

    .line 6
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1}, Lpg/c;->d(I)V

    .line 8
    iget v0, p0, Lpg/c;->b:I

    iget-object v1, p0, Lpg/c;->c:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lpg/c;->f()V

    .line 10
    :cond_0
    iget v0, p0, Lpg/c;->b:I

    if-eq p1, v0, :cond_1

    .line 11
    iget-object v1, p0, Lpg/c;->c:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Lpg/c;->m(ILjava/lang/Object;)V

    .line 13
    iget p1, p0, Lpg/c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lpg/c;->b:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "element"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget v0, p0, Lpg/c;->b:I

    invoke-direct {p0, v0, p1}, Lpg/c;->m(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-direct {p0}, Lpg/c;->f()V

    .line 4
    iget v0, p0, Lpg/c;->b:I

    invoke-direct {p0, v0, p1}, Lpg/c;->m(ILjava/lang/Object;)V

    .line 5
    :goto_0
    iget p1, p0, Lpg/c;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lpg/c;->b:I

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lpg/c;->b:I

    return-void
.end method

.method g(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpg/c;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lpg/c;->d(I)V

    .line 2
    iget-object v0, p0, Lpg/c;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method n()Z
    .locals 1

    iget-boolean v0, p0, Lpg/c;->d:Z

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lpg/c;->d(I)V

    .line 2
    iget-object v0, p0, Lpg/c;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 3
    iget v2, p0, Lpg/c;->b:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v3, p1, 0x1

    .line 4
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_0
    iget-object p1, p0, Lpg/c;->c:[Ljava/lang/Object;

    iget v0, p0, Lpg/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lpg/c;->b:I

    const/4 v2, 0x0

    aput-object v2, p1, v0

    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "element"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lpg/c;->d(I)V

    .line 3
    iget-object v0, p0, Lpg/c;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 4
    invoke-direct {p0, p1, p2}, Lpg/c;->m(ILjava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lpg/c;->b:I

    return v0
.end method

.method x()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lpg/c;->b:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lpg/c;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Lpg/c;->b:I

    .line 4
    iput-boolean v0, p0, Lpg/c;->d:Z

    .line 5
    iget-object v0, p0, Lpg/c;->a:Lpg/c$c;

    invoke-interface {v0, p0}, Lpg/c$c;->a(Lpg/c;)V

    return-void
.end method
