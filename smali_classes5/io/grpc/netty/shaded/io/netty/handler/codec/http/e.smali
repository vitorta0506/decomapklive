.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$e;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;
    }
.end annotation


# static fields
.field private static final c:Lio/grpc/netty/shaded/io/netty/util/g;

.field static final d:Lpg/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$d<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lpg/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->c:Lio/grpc/netty/shaded/io/netty/util/g;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$b;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$b;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->d:Lpg/g$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Lpg/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/g<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "*>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;-><init>()V

    .line 7
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->e0(Z)Lpg/g$d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(ZLpg/g$d;)V

    return-void
.end method

.method protected constructor <init>(ZLpg/g$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lpg/g$d<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lpg/h;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/c;->g:Lio/grpc/netty/shaded/io/netty/util/l;

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->m0(Z)Lpg/o;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lpg/h;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;)V

    .line 5
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(Lpg/g;)V

    return-void
.end method

.method static synthetic a0(B)V
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->f0(B)V

    return-void
.end method

.method static synthetic b0()Lio/grpc/netty/shaded/io/netty/util/g;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->c:Lio/grpc/netty/shaded/io/netty/util/g;

    return-object v0
.end method

.method static synthetic c0(C)V
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->k0(C)V

    return-void
.end method

.method static e0(Z)Lpg/g$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lpg/g$d<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->d:Lpg/g$d;

    goto :goto_0

    :cond_0
    sget-object p0, Lpg/g$d;->a:Lpg/g$d;

    :goto_0
    return-object p0
.end method

.method private static f0(B)V
    .locals 3

    if-eqz p0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    if-ltz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain non-ASCII character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static k0(C)V
    .locals 3

    if-eqz p0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain non-ASCII character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static m0(Z)Lpg/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lpg/o<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$e;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$e;

    goto :goto_0

    :cond_0
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public B()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v1}, Lpg/g;->z()Lpg/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(Lpg/g;)V

    return-object v0
.end method

.method public F(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-static {v0, p1}, Lpg/j;->b(Lpg/i;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->F(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-static {v0, p1}, Lpg/j;->a(Lpg/i;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->H(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public J()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0}, Lpg/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1}, Lpg/g;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public L(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1}, Lpg/g;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public M(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1}, Lpg/g;->N(Lpg/i;)Lpg/i;

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->M(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    return-object p1
.end method

.method public N(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1, p2}, Lpg/g;->O(Ljava/lang/Object;Ljava/lang/Iterable;)Lpg/i;

    return-object p0
.end method

.method public O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1, p2}, Lpg/g;->P(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    return-object p0
.end method

.method public P(Ljava/lang/String;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1, p2}, Lpg/g;->O(Ljava/lang/Object;Ljava/lang/Iterable;)Lpg/i;

    return-object p0
.end method

.method public Q(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1, p2}, Lpg/g;->P(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    return-object p0
.end method

.method public R(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1}, Lpg/g;->S(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public S(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->R(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$c;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1}, Lpg/g;->g(Lpg/i;)Lpg/i;

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1, p2}, Lpg/g;->u(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/c;->h:Lio/grpc/netty/shaded/io/netty/util/l;

    .line 2
    invoke-virtual {v0, p1, v1}, Lpg/g;->B(Lpg/i;Lio/grpc/netty/shaded/io/netty/util/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1, p2}, Lpg/g;->u(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    return-object p0
.end method

.method public g()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0}, Lpg/g;->x()Lpg/i;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/c;->h:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-virtual {v0, v1}, Lpg/g;->G(Lio/grpc/netty/shaded/io/netty/util/l;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0}, Lpg/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-static {v0}, Lpg/j;->c(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0, p1}, Lpg/g;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    if-eqz p3, :cond_0

    sget-object p3, Lio/grpc/netty/shaded/io/netty/util/c;->g:Lio/grpc/netty/shaded/io/netty/util/l;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/grpc/netty/shaded/io/netty/util/c;->h:Lio/grpc/netty/shaded/io/netty/util/l;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lpg/g;->y(Ljava/lang/Object;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/l;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->b:Lpg/g;

    invoke-virtual {v0}, Lpg/g;->size()I

    move-result v0

    return v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->m(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->n(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method
