.class final Lpg/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:[Lpg/c;

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lpg/c;

    return-void
.end method

.method constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->d(I)I

    move-result p1

    new-array p1, p1, [Lpg/c;

    iput-object p1, p0, Lpg/c$d;->a:[Lpg/c;

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lpg/c$d;->a:[Lpg/c;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 4
    new-instance v1, Lpg/c;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lpg/c;-><init>(Lpg/c$c;ILpg/c$a;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    array-length p1, v0

    iput p1, p0, Lpg/c$d;->d:I

    .line 6
    array-length p1, v0

    iput p1, p0, Lpg/c$d;->c:I

    .line 7
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lpg/c$d;->b:I

    return-void
.end method


# virtual methods
.method public a(Lpg/c;)V
    .locals 2

    .line 1
    iget v0, p0, Lpg/c$d;->c:I

    .line 2
    iget-object v1, p0, Lpg/c$d;->a:[Lpg/c;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget p1, p0, Lpg/c$d;->b:I

    and-int/2addr p1, v0

    iput p1, p0, Lpg/c$d;->c:I

    .line 4
    iget p1, p0, Lpg/c$d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lpg/c$d;->d:I

    return-void
.end method

.method public b()Lpg/c;
    .locals 4

    .line 1
    iget v0, p0, Lpg/c$d;->d:I

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lpg/c;

    invoke-static {}, Lpg/c;->c()Lpg/c$c;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpg/c;-><init>(Lpg/c$c;ILpg/c$a;)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lpg/c$d;->d:I

    .line 4
    iget v0, p0, Lpg/c$d;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lpg/c$d;->b:I

    and-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lpg/c$d;->a:[Lpg/c;

    aget-object v1, v1, v0

    .line 6
    iput v0, p0, Lpg/c$d;->c:I

    return-object v1
.end method
