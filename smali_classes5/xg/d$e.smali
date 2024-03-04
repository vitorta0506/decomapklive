.class final Lxg/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/h1$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lxg/d;


# direct methods
.method private constructor <init>(Lxg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg/d$e;->a:Lxg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lxg/d;Lxg/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lxg/d$e;-><init>(Lxg/d;)V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/internal/s;
    .locals 1

    iget-object v0, p0, Lxg/d$e;->a:Lxg/d;

    invoke-virtual {v0}, Lxg/d;->z()Lio/grpc/internal/s;

    move-result-object v0

    return-object v0
.end method
