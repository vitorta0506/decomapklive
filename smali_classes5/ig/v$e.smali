.class final Lig/v$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/h1$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lig/v;


# direct methods
.method private constructor <init>(Lig/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig/v$e;->a:Lig/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lig/v;Lig/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lig/v$e;-><init>(Lig/v;)V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/internal/s;
    .locals 1

    iget-object v0, p0, Lig/v$e;->a:Lig/v;

    invoke-virtual {v0}, Lig/v;->B()Lio/grpc/internal/s;

    move-result-object v0

    return-object v0
.end method
