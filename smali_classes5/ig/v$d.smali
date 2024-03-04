.class final Lig/v$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/h1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lig/v;


# direct methods
.method private constructor <init>(Lig/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig/v$d;->a:Lig/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lig/v;Lig/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lig/v$d;-><init>(Lig/v;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lig/v$d;->a:Lig/v;

    invoke-static {v0}, Lig/v;->y(Lig/v;)Lig/g0$a;

    move-result-object v0

    invoke-interface {v0}, Lig/g0$a;->a()I

    move-result v0

    return v0
.end method
