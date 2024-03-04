.class Lmg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmg/d;


# direct methods
.method constructor <init>(Lmg/d;)V
    .locals 0

    iput-object p1, p0, Lmg/d$a;->a:Lmg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lmg/d$a;->a:Lmg/d;

    invoke-virtual {v0}, Lmg/d;->t1()I

    move-result v0

    return v0
.end method
