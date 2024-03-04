.class Leh/r2$d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/p2$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r2$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Leh/r2$d;


# direct methods
.method private constructor <init>(Leh/r2$d;Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Leh/r2$d$d;->d:Leh/r2$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Leh/r2$d$d;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Leh/r2$d$d;->b:J

    .line 5
    iput-object p5, p0, Leh/r2$d$d;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Leh/r2$d;Ljava/lang/String;JLjava/util/List;Leh/r2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Leh/r2$d$d;-><init>(Leh/r2$d;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method

.method static synthetic g(Leh/r2$d$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/r2$d$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Leh/r2$d$d;)J
    .locals 2

    iget-wide v0, p0, Leh/r2$d$d;->b:J

    return-wide v0
.end method

.method static synthetic i(Leh/r2$d$d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leh/r2$d$d;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Leh/r2$d$d;->d:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->l(Leh/r2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r2$d$d$b;

    invoke-direct {v1, p0, p1}, Leh/r2$d$d$b;-><init>(Leh/r2$d$d;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Leh/r2$d$d;->d:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->l(Leh/r2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r2$d$d$c;

    invoke-direct {v1, p0, p1}, Leh/r2$d$d$c;-><init>(Leh/r2$d$d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Leh/p2$i;)V
    .locals 2

    iget-object v0, p0, Leh/r2$d$d;->d:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->l(Leh/r2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r2$d$d$a;

    invoke-direct {v1, p0, p1}, Leh/r2$d$d$a;-><init>(Leh/r2$d$d;Leh/p2$i;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
