.class abstract Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Runnable;


# instance fields
.field private final a:J

.field private b:I

.field private c:Z

.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;I)I
    .locals 0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->b:I

    return p1
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->c:Z

    return p1
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->d:Z

    .line 3
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->a:J

    new-instance v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;

    invoke-direct {v2, p0, p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;-><init>(Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->d(JLio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method protected abstract d(JLio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;)V
.end method

.method public final run()V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
