.class Lhg/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/n0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg/i;->N(Ljava/util/List;Ljava/util/List;Lhg/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/n0$h;

.field final synthetic b:Lhg/i;


# direct methods
.method constructor <init>(Lhg/i;Lio/grpc/n0$h;)V
    .locals 0

    iput-object p1, p0, Lhg/i$c;->b:Lhg/i;

    iput-object p2, p0, Lhg/i$c;->a:Lio/grpc/n0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/q;)V
    .locals 2

    iget-object v0, p0, Lhg/i$c;->b:Lhg/i;

    iget-object v1, p0, Lhg/i$c;->a:Lio/grpc/n0$h;

    invoke-virtual {v0, v1, p1}, Lhg/i;->C(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method
