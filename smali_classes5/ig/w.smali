.class final Lig/w;
.super Lio/grpc/e;
.source "SourceFile"


# instance fields
.field private final a:Lig/g0$a;


# direct methods
.method private constructor <init>(Lig/g0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/e;-><init>()V

    const-string v0, "negotiator"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/g0$a;

    iput-object p1, p0, Lig/w;->a:Lig/g0$a;

    return-void
.end method

.method public static a(Lig/g0$a;)Lio/grpc/e;
    .locals 1

    new-instance v0, Lig/w;

    invoke-direct {v0, p0}, Lig/w;-><init>(Lig/g0$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lig/g0$a;
    .locals 1

    iget-object v0, p0, Lig/w;->a:Lig/g0$a;

    return-object v0
.end method
