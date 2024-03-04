.class public final Lio/grpc/netty/shaded/io/netty/channel/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lio/grpc/netty/shaded/io/netty/channel/f1;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/f1;

    const v1, 0x8000

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/f1;-><init>(IIZ)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/f1;->c:Lio/grpc/netty/shaded/io/netty/channel/f1;

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const-string p3, "low"

    .line 2
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write buffer\'s high water mark cannot be less than  low water mark ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 4
    :cond_1
    :goto_0
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/f1;->a:I

    .line 5
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/f1;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/f1;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/f1;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "WriteBufferWaterMark(low: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/f1;->a:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", high: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/f1;->b:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
