.class final Lxg/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/h1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lxg/d;


# direct methods
.method private constructor <init>(Lxg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg/d$d;->a:Lxg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lxg/d;Lxg/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lxg/d$d;-><init>(Lxg/d;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lxg/d$d;->a:Lxg/d;

    invoke-virtual {v0}, Lxg/d;->D()I

    move-result v0

    return v0
.end method
