.class final Lgh/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgh/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgh/g$a;
    }
.end annotation


# instance fields
.field final a:Lgh/f;

.field private final b:Lgh/g$a;

.field private final c:Lio/grpc/internal/m2;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lgh/f;->a()Lgh/f;

    move-result-object v0

    .line 2
    invoke-static {}, Lgh/g$a;->a()Lgh/g$a;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/m2;->a:Lio/grpc/internal/m2;

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lgh/g;-><init>(Lgh/f;Lgh/g$a;Lio/grpc/internal/m2;)V

    return-void
.end method

.method constructor <init>(Lgh/f;Lgh/g$a;Lio/grpc/internal/m2;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lgh/g;->a:Lgh/f;

    .line 6
    iput-object p2, p0, Lgh/g;->b:Lgh/g$a;

    .line 7
    iput-object p3, p0, Lgh/g;->c:Lio/grpc/internal/m2;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "file_watcher"

    return-object v0
.end method
